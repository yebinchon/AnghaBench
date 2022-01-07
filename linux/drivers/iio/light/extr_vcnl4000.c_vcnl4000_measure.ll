; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4000.c_vcnl4000_measure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4000.c_vcnl4000_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcnl4000_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@VCNL4000_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"vcnl4000_measure() failed, data not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcnl4000_data*, i32, i32, i32, i32*)* @vcnl4000_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4000_measure(%struct.vcnl4000_data* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcnl4000_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vcnl4000_data* %0, %struct.vcnl4000_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 20, i32* %12, align 4
  %15 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %7, align 8
  %16 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %7, align 8
  %19 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* @VCNL4000_COMMAND, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_4__* %20, i32 %21, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %76

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %12, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %7, align 8
  %34 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* @VCNL4000_COMMAND, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_4__* %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %76

41:                                               ; preds = %32
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %41
  %48 = call i32 @msleep(i32 20)
  br label %28

49:                                               ; preds = %46, %28
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %7, align 8
  %54 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %14, align 4
  br label %76

60:                                               ; preds = %49
  %61 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %7, align 8
  %62 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @i2c_smbus_read_i2c_block_data(%struct.TYPE_4__* %63, i32 %64, i32 4, i32* %13)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %76

69:                                               ; preds = %60
  %70 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %7, align 8
  %71 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @be16_to_cpu(i32 %73)
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  store i32 0, i32* %6, align 4
  br label %81

76:                                               ; preds = %68, %52, %40, %26
  %77 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %7, align 8
  %78 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %76, %69
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
