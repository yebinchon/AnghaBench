; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_vou_layer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_vou_layer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.zx_crtc = type { i64, %struct.zx_vou_hw* }
%struct.zx_vou_hw = type { i64, i64 }
%struct.zx_plane = type { %struct.vou_layer_bits* }
%struct.vou_layer_bits = type { i32, i32, i32 }

@VOU_CHN_MAIN = common dso_local global i64 0, align 8
@OSD_CTRL0 = common dso_local global i64 0, align 8
@VOU_CLK_SEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zx_vou_layer_enable(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.zx_crtc*, align 8
  %4 = alloca %struct.zx_vou_hw*, align 8
  %5 = alloca %struct.zx_plane*, align 8
  %6 = alloca %struct.vou_layer_bits*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.zx_crtc* @to_zx_crtc(i32 %11)
  store %struct.zx_crtc* %12, %struct.zx_crtc** %3, align 8
  %13 = load %struct.zx_crtc*, %struct.zx_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %13, i32 0, i32 1
  %15 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %14, align 8
  store %struct.zx_vou_hw* %15, %struct.zx_vou_hw** %4, align 8
  %16 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %17 = call %struct.zx_plane* @to_zx_plane(%struct.drm_plane* %16)
  store %struct.zx_plane* %17, %struct.zx_plane** %5, align 8
  %18 = load %struct.zx_plane*, %struct.zx_plane** %5, align 8
  %19 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %18, i32 0, i32 0
  %20 = load %struct.vou_layer_bits*, %struct.vou_layer_bits** %19, align 8
  store %struct.vou_layer_bits* %20, %struct.vou_layer_bits** %6, align 8
  %21 = load %struct.zx_crtc*, %struct.zx_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VOU_CHN_MAIN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %1
  %27 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %4, align 8
  %28 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OSD_CTRL0, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.vou_layer_bits*, %struct.vou_layer_bits** %6, align 8
  %33 = getelementptr inbounds %struct.vou_layer_bits, %struct.vou_layer_bits* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @zx_writel_mask(i64 %31, i32 %34, i32 0)
  %36 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %4, align 8
  %37 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VOU_CLK_SEL, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.vou_layer_bits*, %struct.vou_layer_bits** %6, align 8
  %42 = getelementptr inbounds %struct.vou_layer_bits, %struct.vou_layer_bits* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @zx_writel_mask(i64 %40, i32 %43, i32 0)
  br label %70

45:                                               ; preds = %1
  %46 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %4, align 8
  %47 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @OSD_CTRL0, align 8
  %50 = add nsw i64 %48, %49
  %51 = load %struct.vou_layer_bits*, %struct.vou_layer_bits** %6, align 8
  %52 = getelementptr inbounds %struct.vou_layer_bits, %struct.vou_layer_bits* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vou_layer_bits*, %struct.vou_layer_bits** %6, align 8
  %55 = getelementptr inbounds %struct.vou_layer_bits, %struct.vou_layer_bits* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @zx_writel_mask(i64 %50, i32 %53, i32 %56)
  %58 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %4, align 8
  %59 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VOU_CLK_SEL, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.vou_layer_bits*, %struct.vou_layer_bits** %6, align 8
  %64 = getelementptr inbounds %struct.vou_layer_bits, %struct.vou_layer_bits* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vou_layer_bits*, %struct.vou_layer_bits** %6, align 8
  %67 = getelementptr inbounds %struct.vou_layer_bits, %struct.vou_layer_bits* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @zx_writel_mask(i64 %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %45, %26
  %71 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %4, align 8
  %72 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @OSD_CTRL0, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.vou_layer_bits*, %struct.vou_layer_bits** %6, align 8
  %77 = getelementptr inbounds %struct.vou_layer_bits, %struct.vou_layer_bits* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vou_layer_bits*, %struct.vou_layer_bits** %6, align 8
  %80 = getelementptr inbounds %struct.vou_layer_bits, %struct.vou_layer_bits* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @zx_writel_mask(i64 %75, i32 %78, i32 %81)
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
