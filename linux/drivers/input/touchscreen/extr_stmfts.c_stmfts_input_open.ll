; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_input_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_input_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.stmfts_data = type { i32, %struct.TYPE_2__*, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@STMFTS_MS_MT_SENSE_ON = common dso_local global i32 0, align 4
@STMFTS_SS_HOVER_SENSE_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to enable hover\0A\00", align 1
@STMFTS_MS_KEY_SENSE_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to enable touchkey\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @stmfts_input_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfts_input_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.stmfts_data*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.stmfts_data* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.stmfts_data* %7, %struct.stmfts_data** %4, align 8
  %8 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %9 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_get_sync(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %76

17:                                               ; preds = %1
  %18 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %19 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* @STMFTS_MS_MT_SENSE_ON, align 4
  %22 = call i32 @i2c_smbus_write_byte(%struct.TYPE_2__* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %76

27:                                               ; preds = %17
  %28 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %29 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %28, i32 0, i32 3
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %32 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %34 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %27
  %38 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %39 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* @STMFTS_SS_HOVER_SENSE_ON, align 4
  %42 = call i32 @i2c_smbus_write_byte(%struct.TYPE_2__* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %47 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %45, %37
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %54 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %53, i32 0, i32 3
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %57 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %52
  %61 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %62 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* @STMFTS_MS_KEY_SENSE_ON, align 4
  %65 = call i32 @i2c_smbus_write_byte(%struct.TYPE_2__* %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %70 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @dev_warn(i32* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %68, %60
  br label %75

75:                                               ; preds = %74, %52
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %25, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.stmfts_data* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
