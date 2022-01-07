; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f30.c_rmi_f30_map_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f30.c_rmi_f30_map_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, i32 }
%struct.f30_data = type { i32*, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32*, i32, i32, i32 }
%struct.rmi_device_platform_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@BTN_LEFT = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@TRACKSTICK_RANGE_END = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate gpioled map memory.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TRACKSTICK_RANGE_START = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@INPUT_PROP_BUTTONPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*, %struct.f30_data*)* @rmi_f30_map_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f30_map_gpios(%struct.rmi_function* %0, %struct.f30_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rmi_function*, align 8
  %5 = alloca %struct.f30_data*, align 8
  %6 = alloca %struct.rmi_device_platform_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %4, align 8
  store %struct.f30_data* %1, %struct.f30_data** %5, align 8
  %13 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %14 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.rmi_device_platform_data* @rmi_get_platform_data(i32 %15)
  store %struct.rmi_device_platform_data* %16, %struct.rmi_device_platform_data** %6, align 8
  %17 = load %struct.f30_data*, %struct.f30_data** %5, align 8
  %18 = getelementptr inbounds %struct.f30_data, %struct.f30_data* %17, i32 0, i32 3
  %19 = load %struct.input_dev*, %struct.input_dev** %18, align 8
  store %struct.input_dev* %19, %struct.input_dev** %7, align 8
  %20 = load i32, i32* @BTN_LEFT, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @BTN_LEFT, align 4
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* @u8, align 4
  %23 = load %struct.f30_data*, %struct.f30_data** %5, align 8
  %24 = getelementptr inbounds %struct.f30_data, %struct.f30_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TRACKSTICK_RANGE_END, align 4
  %27 = call i32 @min_t(i32 %22, i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %29 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %28, i32 0, i32 0
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @devm_kcalloc(i32* %29, i32 %30, i32 4, i32 %31)
  %33 = load %struct.f30_data*, %struct.f30_data** %5, align 8
  %34 = getelementptr inbounds %struct.f30_data, %struct.f30_data* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.f30_data*, %struct.f30_data** %5, align 8
  %36 = getelementptr inbounds %struct.f30_data, %struct.f30_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %2
  %40 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %41 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %138

45:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %105, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %108

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.f30_data*, %struct.f30_data** %5, align 8
  %53 = getelementptr inbounds %struct.f30_data, %struct.f30_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rmi_f30_is_valid_button(i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %105

58:                                               ; preds = %50
  %59 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %6, align 8
  %60 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @TRACKSTICK_RANGE_START, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @TRACKSTICK_RANGE_END, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  %75 = load %struct.f30_data*, %struct.f30_data** %5, align 8
  %76 = getelementptr inbounds %struct.f30_data, %struct.f30_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %73, i32* %80, align 4
  br label %104

81:                                               ; preds = %68, %64, %58
  %82 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %6, align 8
  %83 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %87, %81
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.f30_data*, %struct.f30_data** %5, align 8
  %93 = getelementptr inbounds %struct.f30_data, %struct.f30_data* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %99 = load i32, i32* @EV_KEY, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = call i32 @input_set_capability(%struct.input_dev* %98, i32 %99, i32 %100)
  store i32 1, i32* %10, align 4
  br label %103

103:                                              ; preds = %90, %87
  br label %104

104:                                              ; preds = %103, %72
  br label %105

105:                                              ; preds = %104, %57
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %46

108:                                              ; preds = %46
  %109 = load %struct.f30_data*, %struct.f30_data** %5, align 8
  %110 = getelementptr inbounds %struct.f30_data, %struct.f30_data* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 0
  store i32* %111, i32** %113, align 8
  %114 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %115 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %114, i32 0, i32 1
  store i32 4, i32* %115, align 8
  %116 = load %struct.f30_data*, %struct.f30_data** %5, align 8
  %117 = getelementptr inbounds %struct.f30_data, %struct.f30_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %120 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %6, align 8
  %122 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %108
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @BTN_LEFT, align 4
  %129 = sub i32 %127, %128
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %137

131:                                              ; preds = %126, %108
  %132 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %133 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %134 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @__set_bit(i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %131, %126
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %39
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.rmi_device_platform_data* @rmi_get_platform_data(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rmi_f30_is_valid_button(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
