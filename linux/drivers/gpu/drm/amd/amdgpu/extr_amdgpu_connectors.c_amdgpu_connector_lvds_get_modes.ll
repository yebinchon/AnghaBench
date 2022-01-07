; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_lvds_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_lvds_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @amdgpu_connector_lvds_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_connector_lvds_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call i32 @amdgpu_connector_get_edid(%struct.drm_connector* %7)
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call i32 @amdgpu_connector_ddc_get_modes(%struct.drm_connector* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = call %struct.drm_encoder* @amdgpu_connector_best_single_encoder(%struct.drm_connector* %14)
  store %struct.drm_encoder* %15, %struct.drm_encoder** %4, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = icmp ne %struct.drm_encoder* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %21 = call i32 @amdgpu_connector_fixup_lcd_native_mode(%struct.drm_encoder* %19, %struct.drm_connector* %20)
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %24 = call i32 @amdgpu_connector_add_common_modes(%struct.drm_encoder* %22, %struct.drm_connector* %23)
  br label %25

25:                                               ; preds = %18, %13
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %59

27:                                               ; preds = %1
  %28 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %29 = call %struct.drm_encoder* @amdgpu_connector_best_single_encoder(%struct.drm_connector* %28)
  store %struct.drm_encoder* %29, %struct.drm_encoder** %4, align 8
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %31 = icmp ne %struct.drm_encoder* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %59

33:                                               ; preds = %27
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %35 = call %struct.drm_display_mode* @amdgpu_connector_lcd_native_mode(%struct.drm_encoder* %34)
  store %struct.drm_display_mode* %35, %struct.drm_display_mode** %6, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %37 = icmp ne %struct.drm_display_mode* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  %39 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %41 = call i32 @drm_mode_probed_add(%struct.drm_connector* %39, %struct.drm_display_mode* %40)
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %46 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %55 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %56 = call i32 @amdgpu_connector_add_common_modes(%struct.drm_encoder* %54, %struct.drm_connector* %55)
  br label %57

57:                                               ; preds = %38, %33
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %32, %25
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @amdgpu_connector_get_edid(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_ddc_get_modes(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @amdgpu_connector_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_fixup_lcd_native_mode(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_add_common_modes(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local %struct.drm_display_mode* @amdgpu_connector_lcd_native_mode(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
