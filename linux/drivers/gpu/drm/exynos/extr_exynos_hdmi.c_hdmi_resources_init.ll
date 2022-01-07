; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_resources_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_resources_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { i64, i32, %struct.TYPE_2__*, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"HDMI resource init\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot get hpd gpio property\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to get GPIO irq\0A\00", align 1
@supply = common dso_local global i32* null, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to get regulators\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"hdmi-en\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to enable hdmi-en regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_context*)* @hdmi_resources_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_resources_init(%struct.hdmi_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_context*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdmi_context* %0, %struct.hdmi_context** %3, align 8
  %7 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %8 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %7, i32 0, i32 4
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @DRM_DEV_DEBUG_KMS(%struct.device* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GPIOD_IN, align 4
  %14 = call i32 @devm_gpiod_get(%struct.device* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %16 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %18 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @DRM_DEV_ERROR(%struct.device* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %26 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %141

29:                                               ; preds = %1
  %30 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %31 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @gpiod_to_irq(i32 %32)
  %34 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %35 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %37 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @DRM_DEV_ERROR(%struct.device* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %44 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %141

47:                                               ; preds = %29
  %48 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %49 = call i32 @hdmi_clk_init(%struct.hdmi_context* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %141

54:                                               ; preds = %47
  %55 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %56 = call i32 @hdmi_clk_set_parents(%struct.hdmi_context* %55, i32 0)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %141

61:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %80, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32*, i32** @supply, align 8
  %65 = call i32 @ARRAY_SIZE(i32* %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load i32*, i32** @supply, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %74 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %62

83:                                               ; preds = %62
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load i32*, i32** @supply, align 8
  %86 = call i32 @ARRAY_SIZE(i32* %85)
  %87 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %88 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = call i32 @devm_regulator_bulk_get(%struct.device* %84, i32 %86, %struct.TYPE_2__* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %83
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @EPROBE_DEFER, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = call i32 @DRM_DEV_ERROR(%struct.device* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %141

103:                                              ; preds = %83
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = call i32 @devm_regulator_get_optional(%struct.device* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %106 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %107 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %109 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @PTR_ERR(i32 %110)
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %138

115:                                              ; preds = %103
  %116 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %117 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @IS_ERR(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %123 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @PTR_ERR(i32 %124)
  store i32 %125, i32* %2, align 4
  br label %141

126:                                              ; preds = %115
  %127 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %128 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @regulator_enable(i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = call i32 @DRM_DEV_ERROR(%struct.device* %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %141

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %103
  %139 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %140 = call i32 @hdmi_bridge_init(%struct.hdmi_context* %139)
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %138, %133, %121, %101, %59, %52, %40, %22
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(%struct.device*, i8*) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @gpiod_to_irq(i32) #1

declare dso_local i32 @hdmi_clk_init(%struct.hdmi_context*) #1

declare dso_local i32 @hdmi_clk_set_parents(%struct.hdmi_context*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @hdmi_bridge_init(%struct.hdmi_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
