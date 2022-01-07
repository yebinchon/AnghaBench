; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_vou_inf_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_vou_inf_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vou_inf = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.zx_vou_hw = type { i64 }

@vou_infs = common dso_local global %struct.vou_inf* null, align 8
@VOU_INF_EN = common dso_local global i64 0, align 8
@VOU_CLK_EN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vou_inf_disable(i32 %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.zx_vou_hw*, align 8
  %6 = alloca %struct.vou_inf*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.drm_crtc* %1, %struct.drm_crtc** %4, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %8 = call %struct.zx_vou_hw* @crtc_to_vou(%struct.drm_crtc* %7)
  store %struct.zx_vou_hw* %8, %struct.zx_vou_hw** %5, align 8
  %9 = load %struct.vou_inf*, %struct.vou_inf** @vou_infs, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.vou_inf, %struct.vou_inf* %9, i64 %11
  store %struct.vou_inf* %12, %struct.vou_inf** %6, align 8
  %13 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %5, align 8
  %14 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VOU_INF_EN, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 1, %18
  %20 = call i32 @zx_writel_mask(i64 %17, i32 %19, i32 0)
  %21 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %5, align 8
  %22 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VOU_CLK_EN, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.vou_inf*, %struct.vou_inf** %6, align 8
  %27 = getelementptr inbounds %struct.vou_inf, %struct.vou_inf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @zx_writel_mask(i64 %25, i32 %28, i32 0)
  ret void
}

declare dso_local %struct.zx_vou_hw* @crtc_to_vou(%struct.drm_crtc*) #1

declare dso_local i32 @zx_writel_mask(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
