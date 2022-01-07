; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_prepare_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_prepare_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i32, i32, i32, i32 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_mst* }
%struct.radeon_encoder_mst = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }
%struct.radeon_connector = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"dp_clock %p %d\0A\00", align 1
@ASIC_INTERNAL_SS_ON_DP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_dp_mst_prepare_pll(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca %struct.radeon_encoder_mst*, align 8
  %10 = alloca %struct.radeon_connector*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %13)
  store %struct.radeon_crtc* %14, %struct.radeon_crtc** %5, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %7, align 8
  %21 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %22 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %23)
  store %struct.radeon_encoder* %24, %struct.radeon_encoder** %8, align 8
  %25 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %26 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %25, i32 0, i32 1
  %27 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %26, align 8
  store %struct.radeon_encoder_mst* %27, %struct.radeon_encoder_mst** %9, align 8
  %28 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %29 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %28, i32 0, i32 0
  %30 = call %struct.radeon_connector* @radeon_mst_find_connector(i32* %29)
  store %struct.radeon_connector* %30, %struct.radeon_connector** %10, align 8
  %31 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %9, align 8
  %32 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %34, align 8
  store %struct.radeon_connector_atom_dig* %35, %struct.radeon_connector_atom_dig** %12, align 8
  %36 = load %struct.radeon_connector*, %struct.radeon_connector** %10, align 8
  %37 = icmp ne %struct.radeon_connector* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %2
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.radeon_connector*, %struct.radeon_connector** %10, align 8
  %43 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.radeon_connector*, %struct.radeon_connector** %10, align 8
  %45 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load %struct.radeon_connector*, %struct.radeon_connector** %10, align 8
  %52 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %57 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %61

58:                                               ; preds = %38
  %59 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %60 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %59, i32 0, i32 0
  store i32 8, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %50
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  %64 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  %65 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.radeon_connector_atom_dig* %63, i32 %66)
  %68 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  %69 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  %71 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %72 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %73 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %72, i32 0, i32 1
  %74 = load i32, i32* @ASIC_INTERNAL_SS_ON_DP, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %71, i32* %73, i32 %74, i32 %75)
  %77 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %78 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local %struct.radeon_connector* @radeon_mst_find_connector(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, %struct.radeon_connector_atom_dig*, i32) #1

declare dso_local i32 @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
