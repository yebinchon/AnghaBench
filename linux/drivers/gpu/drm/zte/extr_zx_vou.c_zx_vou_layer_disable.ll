; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_vou_layer_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_vou_layer_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.zx_crtc = type { %struct.zx_vou_hw* }
%struct.zx_vou_hw = type { i64 }
%struct.zx_plane = type { %struct.vou_layer_bits* }
%struct.vou_layer_bits = type { i32 }

@OSD_CTRL0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zx_vou_layer_disable(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.zx_crtc*, align 8
  %6 = alloca %struct.zx_vou_hw*, align 8
  %7 = alloca %struct.zx_plane*, align 8
  %8 = alloca %struct.vou_layer_bits*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %10 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.zx_crtc* @to_zx_crtc(i32 %11)
  store %struct.zx_crtc* %12, %struct.zx_crtc** %5, align 8
  %13 = load %struct.zx_crtc*, %struct.zx_crtc** %5, align 8
  %14 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %13, i32 0, i32 0
  %15 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %14, align 8
  store %struct.zx_vou_hw* %15, %struct.zx_vou_hw** %6, align 8
  %16 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %17 = call %struct.zx_plane* @to_zx_plane(%struct.drm_plane* %16)
  store %struct.zx_plane* %17, %struct.zx_plane** %7, align 8
  %18 = load %struct.zx_plane*, %struct.zx_plane** %7, align 8
  %19 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %18, i32 0, i32 0
  %20 = load %struct.vou_layer_bits*, %struct.vou_layer_bits** %19, align 8
  store %struct.vou_layer_bits* %20, %struct.vou_layer_bits** %8, align 8
  %21 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %6, align 8
  %22 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OSD_CTRL0, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.vou_layer_bits*, %struct.vou_layer_bits** %8, align 8
  %27 = getelementptr inbounds %struct.vou_layer_bits, %struct.vou_layer_bits* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @zx_writel_mask(i64 %25, i32 %28, i32 0)
  ret void
}

declare dso_local %struct.zx_crtc* @to_zx_crtc(i32) #1

declare dso_local %struct.zx_plane* @to_zx_plane(%struct.drm_plane*) #1

declare dso_local i32 @zx_writel_mask(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
