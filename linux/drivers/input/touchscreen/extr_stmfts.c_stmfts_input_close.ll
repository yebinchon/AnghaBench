; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_input_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.stmfts_data = type { i32, %struct.TYPE_2__*, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@STMFTS_MS_MT_SENSE_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to disable touchscreen: %d\0A\00", align 1
@STMFTS_SS_HOVER_SENSE_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to disable hover: %d\0A\00", align 1
@STMFTS_MS_KEY_SENSE_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to disable touchkey: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @stmfts_input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmfts_input_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.stmfts_data*, align 8
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.stmfts_data* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.stmfts_data* %6, %struct.stmfts_data** %3, align 8
  %7 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %8 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @STMFTS_MS_MT_SENSE_OFF, align 4
  %11 = call i32 @i2c_smbus_write_byte(%struct.TYPE_2__* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %16 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_warn(i32* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %23 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %22, i32 0, i32 3
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %26 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %28 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %33 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* @STMFTS_SS_HOVER_SENSE_OFF, align 4
  %36 = call i32 @i2c_smbus_write_byte(%struct.TYPE_2__* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %41 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %39, %31
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %49 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %48, i32 0, i32 3
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %52 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %47
  %56 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %57 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* @STMFTS_MS_KEY_SENSE_OFF, align 4
  %60 = call i32 @i2c_smbus_write_byte(%struct.TYPE_2__* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %65 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @dev_warn(i32* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %63, %55
  br label %71

71:                                               ; preds = %70, %47
  %72 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %73 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @pm_runtime_put_sync(i32* %75)
  ret void
}

declare dso_local %struct.stmfts_data* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
