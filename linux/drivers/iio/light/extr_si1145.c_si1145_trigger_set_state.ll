; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_trigger_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_trigger_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.si1145_data = type { i32, i32, i32, i32 }

@SI1145_REG_INT_CFG = common dso_local global i32 0, align 4
@SI1145_INT_CFG_OE = common dso_local global i32 0, align 4
@SI1145_REG_IRQ_ENABLE = common dso_local global i32 0, align 4
@SI1145_MASK_ALL_IE = common dso_local global i32 0, align 4
@SI1145_CMD_PSALS_AUTO = common dso_local global i32 0, align 4
@SI1145_CMD_PSALS_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @si1145_trigger_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1145_trigger_set_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.si1145_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %10 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %9)
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.si1145_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.si1145_data* %12, %struct.si1145_data** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %14 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %2
  %19 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %20 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %22 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SI1145_REG_INT_CFG, align 4
  %25 = load i32, i32* @SI1145_INT_CFG_OE, align 4
  %26 = call i32 @i2c_smbus_write_byte_data(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %58

30:                                               ; preds = %18
  %31 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %32 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SI1145_REG_IRQ_ENABLE, align 4
  %35 = load i32, i32* @SI1145_MASK_ALL_IE, align 4
  %36 = call i32 @i2c_smbus_write_byte_data(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %58

40:                                               ; preds = %30
  %41 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %42 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %43 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @si1145_set_meas_rate(%struct.si1145_data* %41, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %58

49:                                               ; preds = %40
  %50 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %51 = load i32, i32* @SI1145_CMD_PSALS_AUTO, align 4
  %52 = call i32 @si1145_command(%struct.si1145_data* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %58

56:                                               ; preds = %49
  br label %108

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %57, %55, %48, %39, %29
  %59 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %60 = load i32, i32* @SI1145_CMD_PSALS_PAUSE, align 4
  %61 = call i32 @si1145_command(%struct.si1145_data* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %64, %58
  %70 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %71 = call i32 @si1145_set_meas_rate(%struct.si1145_data* %70, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %74, %69
  %80 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %81 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SI1145_REG_IRQ_ENABLE, align 4
  %84 = call i32 @i2c_smbus_write_byte_data(i32 %82, i32 %83, i32 0)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %90, %87, %79
  %93 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %94 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SI1145_REG_INT_CFG, align 4
  %97 = call i32 @i2c_smbus_write_byte_data(i32 %95, i32 %96, i32 0)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %103, %100, %92
  %106 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %107 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %106, i32 0, i32 0
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %56
  %109 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %110 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %109, i32 0, i32 1
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.si1145_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @si1145_set_meas_rate(%struct.si1145_data*, i32) #1

declare dso_local i32 @si1145_command(%struct.si1145_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
