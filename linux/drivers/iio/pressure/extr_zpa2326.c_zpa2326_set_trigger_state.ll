; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_set_trigger_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_set_trigger_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iio_dev = type { i32 }
%struct.zpa2326_private = type { %struct.TYPE_5__*, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ZPA2326_CTRL_REG3_REG = common dso_local global i32 0, align 4
@ZPA2326_INT_SOURCE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"continuous mode stopped\00", align 1
@ZPA2326_CTRL_REG1_REG = common dso_local global i32 0, align 4
@ZPA2326_CTRL_REG1_MASK_DATA_READY = common dso_local global i64 0, align 8
@ZPA2326_CTRL_REG3_ENABLE_MEAS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"continuous mode setup @%dHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @zpa2326_set_trigger_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_set_trigger_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_trigger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.zpa2326_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %11 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.iio_dev* @dev_get_drvdata(i32 %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %6, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.zpa2326_private* @iio_priv(%struct.iio_dev* %15)
  store %struct.zpa2326_private* %16, %struct.zpa2326_private** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %2
  %20 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %21 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @disable_irq(i32 %22)
  %24 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %25 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ZPA2326_CTRL_REG3_REG, align 4
  %28 = call %struct.TYPE_6__* (...) @zpa2326_highest_frequency()
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regmap_write(i32 %26, i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %98

36:                                               ; preds = %19
  %37 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %38 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ZPA2326_INT_SOURCE_REG, align 4
  %41 = call i32 @regmap_read(i32 %39, i32 %40, i32* %9)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %98

46:                                               ; preds = %36
  %47 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %48 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @enable_irq(i32 %49)
  %51 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %52 = call i32 (%struct.iio_dev*, i8*, ...) @zpa2326_dbg(%struct.iio_dev* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %97

53:                                               ; preds = %2
  %54 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %55 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %60 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ZPA2326_CTRL_REG1_REG, align 4
  %63 = load i64, i64* @ZPA2326_CTRL_REG1_MASK_DATA_READY, align 8
  %64 = xor i64 %63, -1
  %65 = trunc i64 %64 to i32
  %66 = call i32 @regmap_write(i32 %61, i32 %62, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %98

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %74 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ZPA2326_CTRL_REG3_REG, align 4
  %77 = load i32, i32* @ZPA2326_CTRL_REG3_ENABLE_MEAS, align 4
  %78 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %79 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %77, %82
  %84 = call i32 @regmap_write(i32 %75, i32 %76, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %98

89:                                               ; preds = %72
  %90 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %91 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %92 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.iio_dev*, i8*, ...) @zpa2326_dbg(%struct.iio_dev* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %89, %46
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %87, %69, %44, %34
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.zpa2326_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @zpa2326_highest_frequency(...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @zpa2326_dbg(%struct.iio_dev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
