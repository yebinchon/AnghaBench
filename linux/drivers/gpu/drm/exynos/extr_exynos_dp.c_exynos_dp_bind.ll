; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_dp.c_exynos_dp_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_dp.c_exynos_dp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.exynos_dp_device = type { i32, %struct.drm_encoder, %struct.TYPE_4__, %struct.drm_device*, i32, %struct.device* }
%struct.drm_encoder = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.drm_encoder*)* }
%struct.TYPE_4__ = type { %struct.drm_encoder*, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32 }

@EXYNOS_DP = common dso_local global i32 0, align 4
@exynos_dp_poweron = common dso_local global i32 0, align 4
@exynos_dp_poweroff = common dso_local global i32 0, align 4
@exynos_dp_bridge_attach = common dso_local global i32 0, align 4
@exynos_dp_get_modes = common dso_local global i32 0, align 4
@exynos_dp_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@exynos_dp_encoder_helper_funcs = common dso_local global i32 0, align 4
@EXYNOS_DISPLAY_TYPE_LCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @exynos_dp_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dp_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.exynos_dp_device*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.exynos_dp_device* @dev_get_drvdata(%struct.device* %12)
  store %struct.exynos_dp_device* %13, %struct.exynos_dp_device** %8, align 8
  %14 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %15 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %14, i32 0, i32 1
  store %struct.drm_encoder* %15, %struct.drm_encoder** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.drm_device*
  store %struct.drm_device* %17, %struct.drm_device** %10, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %20 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %19, i32 0, i32 5
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %22 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %23 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %22, i32 0, i32 3
  store %struct.drm_device* %21, %struct.drm_device** %23, align 8
  %24 = load i32, i32* @EXYNOS_DP, align 4
  %25 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %26 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @exynos_dp_poweron, align 4
  %29 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %30 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @exynos_dp_poweroff, align 4
  %33 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %34 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @exynos_dp_bridge_attach, align 4
  %37 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %38 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @exynos_dp_get_modes, align 4
  %41 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %42 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %45 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %3
  %50 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %51 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %56 = call i32 @exynos_dp_dt_parse_panel(%struct.exynos_dp_device* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %110

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %49, %3
  %63 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %64 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %65 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %66 = call i32 @drm_encoder_init(%struct.drm_device* %63, %struct.drm_encoder* %64, i32* @exynos_dp_encoder_funcs, i32 %65, i32* null)
  %67 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %68 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %67, i32* @exynos_dp_encoder_helper_funcs)
  %69 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %70 = load i32, i32* @EXYNOS_DISPLAY_TYPE_LCD, align 4
  %71 = call i32 @exynos_drm_set_possible_crtcs(%struct.drm_encoder* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %110

76:                                               ; preds = %62
  %77 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %78 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %79 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store %struct.drm_encoder* %77, %struct.drm_encoder** %80, align 8
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %83 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %82, i32 0, i32 3
  %84 = load %struct.drm_device*, %struct.drm_device** %83, align 8
  %85 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %86 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %85, i32 0, i32 2
  %87 = call i32 @analogix_dp_bind(%struct.device* %81, %struct.drm_device* %84, %struct.TYPE_4__* %86)
  %88 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %89 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %91 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @IS_ERR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %76
  %96 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %97 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32 (%struct.drm_encoder*)*, i32 (%struct.drm_encoder*)** %100, align 8
  %102 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %103 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %102, i32 0, i32 1
  %104 = call i32 %101(%struct.drm_encoder* %103)
  %105 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %106 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @PTR_ERR(i32 %107)
  store i32 %108, i32* %4, align 4
  br label %110

109:                                              ; preds = %76
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %95, %74, %59
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.exynos_dp_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @exynos_dp_dt_parse_panel(%struct.exynos_dp_device*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @exynos_drm_set_possible_crtcs(%struct.drm_encoder*, i32) #1

declare dso_local i32 @analogix_dp_bind(%struct.device*, %struct.drm_device*, %struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
