; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.tfp410 = type { i32, i64, i32, %struct.TYPE_2__, i32, i32, %struct.device*, i32 }
%struct.TYPE_2__ = type { i32*, i64, i32* }

@.str = private unnamed_addr constant [29 x i8] c"device-tree data is missing\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tfp410_bridge_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to parse powerdown gpio\0A\00", align 1
@tfp410_hpd_work_func = common dso_local global i32 0, align 4
@tfp410_hpd_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"hdmi-hpd\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to register hpd interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @tfp410_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_init(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tfp410*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %141

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.tfp410* @devm_kzalloc(%struct.device* %18, i32 72, i32 %19)
  store %struct.tfp410* %20, %struct.tfp410** %6, align 8
  %21 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %22 = icmp ne %struct.tfp410* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %141

26:                                               ; preds = %17
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %29 = call i32 @dev_set_drvdata(%struct.device* %27, %struct.tfp410* %28)
  %30 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %31 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32* @tfp410_bridge_funcs, i32** %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %37 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  %39 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %40 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %39, i32 0, i32 7
  %41 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %42 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %46 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %45, i32 0, i32 6
  store %struct.device* %44, %struct.device** %46, align 8
  %47 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @tfp410_parse_timings(%struct.tfp410* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %26
  br label %125

53:                                               ; preds = %26
  %54 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %55 = call i32 @tfp410_get_connector_properties(%struct.tfp410* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %125

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %62 = call i32 @devm_gpiod_get_optional(%struct.device* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %64 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %66 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %74 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %141

77:                                               ; preds = %59
  %78 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %79 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %84 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @gpiod_to_irq(i64 %85)
  %87 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %88 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %94

89:                                               ; preds = %77
  %90 = load i32, i32* @ENXIO, align 4
  %91 = sub nsw i32 0, %90
  %92 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %93 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %89, %82
  %95 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %96 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %94
  %100 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %101 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %100, i32 0, i32 4
  %102 = load i32, i32* @tfp410_hpd_work_func, align 4
  %103 = call i32 @INIT_DELAYED_WORK(i32* %101, i32 %102)
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %106 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @tfp410_hpd_irq_thread, align 4
  %109 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %110 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @IRQF_ONESHOT, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %115 = call i32 @devm_request_threaded_irq(%struct.device* %104, i32 %107, i32* null, i32 %108, i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.tfp410* %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %99
  %119 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %125

120:                                              ; preds = %99
  br label %121

121:                                              ; preds = %120, %94
  %122 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %123 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %122, i32 0, i32 3
  %124 = call i32 @drm_bridge_add(%struct.TYPE_2__* %123)
  store i32 0, i32* %3, align 4
  br label %141

125:                                              ; preds = %118, %58, %52
  %126 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %127 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @i2c_put_adapter(i32 %128)
  %130 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %131 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %125
  %135 = load %struct.tfp410*, %struct.tfp410** %6, align 8
  %136 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @gpiod_put(i64 %137)
  br label %139

139:                                              ; preds = %134, %125
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %121, %70, %23, %12
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.tfp410* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.tfp410*) #1

declare dso_local i32 @tfp410_parse_timings(%struct.tfp410*, i32) #1

declare dso_local i32 @tfp410_get_connector_properties(%struct.tfp410*) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiod_to_irq(i64) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.tfp410*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_2__*) #1

declare dso_local i32 @i2c_put_adapter(i32) #1

declare dso_local i32 @gpiod_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
