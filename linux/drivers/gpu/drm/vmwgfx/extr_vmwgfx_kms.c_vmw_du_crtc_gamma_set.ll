; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_crtc_gamma_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_crtc_gamma_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.vmw_private = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"%d r/g/b = 0x%04x / 0x%04x / 0x%04x\0A\00", align 1
@SVGA_PALETTE_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_du_crtc_gamma_set(%struct.drm_crtc* %0, i32* %1, i32* %2, i32* %3, i32 %4, %struct.drm_modeset_acquire_ctx* %5) #0 {
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %13 = alloca %struct.vmw_private*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.drm_modeset_acquire_ctx* %5, %struct.drm_modeset_acquire_ctx** %12, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.vmw_private* @vmw_priv(i32 %17)
  store %struct.vmw_private* %18, %struct.vmw_private** %13, align 8
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %83, %6
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %86

23:                                               ; preds = %19
  %24 = load i32, i32* %14, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29, i32 %34, i32 %39)
  %41 = load %struct.vmw_private*, %struct.vmw_private** %13, align 8
  %42 = load i64, i64* @SVGA_PALETTE_BASE, align 8
  %43 = load i32, i32* %14, align 4
  %44 = mul nsw i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = add nsw i64 %46, 0
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 8
  %54 = call i32 @vmw_write(%struct.vmw_private* %41, i64 %47, i32 %53)
  %55 = load %struct.vmw_private*, %struct.vmw_private** %13, align 8
  %56 = load i64, i64* @SVGA_PALETTE_BASE, align 8
  %57 = load i32, i32* %14, align 4
  %58 = mul nsw i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = add nsw i64 %60, 1
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 8
  %68 = call i32 @vmw_write(%struct.vmw_private* %55, i64 %61, i32 %67)
  %69 = load %struct.vmw_private*, %struct.vmw_private** %13, align 8
  %70 = load i64, i64* @SVGA_PALETTE_BASE, align 8
  %71 = load i32, i32* %14, align 4
  %72 = mul nsw i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = add nsw i64 %74, 2
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 8
  %82 = call i32 @vmw_write(%struct.vmw_private* %69, i64 %75, i32 %81)
  br label %83

83:                                               ; preds = %23
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %19

86:                                               ; preds = %19
  ret i32 0
}

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @vmw_write(%struct.vmw_private*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
