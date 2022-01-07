; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_crtc.c_arc_pgu_set_pxl_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_crtc.c_arc_pgu_set_pxl_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplefb_format = type { i64 }
%struct.drm_crtc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.arcpgu_drm_private = type { i32 }

@supported_formats = common dso_local global %struct.simplefb_format* null, align 8
@DRM_FORMAT_RGB888 = common dso_local global i64 0, align 8
@ARCPGU_REG_CTRL = common dso_local global i32 0, align 4
@ARCPGU_MODE_RGB888_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @arc_pgu_set_pxl_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_pgu_set_pxl_fmt(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.arcpgu_drm_private*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.simplefb_format*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = call %struct.arcpgu_drm_private* @crtc_to_arcpgu_priv(%struct.drm_crtc* %8)
  store %struct.arcpgu_drm_private* %9, %struct.arcpgu_drm_private** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  store %struct.drm_framebuffer* %16, %struct.drm_framebuffer** %4, align 8
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %18 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  store %struct.simplefb_format* null, %struct.simplefb_format** %6, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %42, %1
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.simplefb_format*, %struct.simplefb_format** @supported_formats, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.simplefb_format* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.simplefb_format*, %struct.simplefb_format** @supported_formats, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %28, i64 %30
  %32 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.simplefb_format*, %struct.simplefb_format** @supported_formats, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %37, i64 %39
  store %struct.simplefb_format* %40, %struct.simplefb_format** %6, align 8
  br label %41

41:                                               ; preds = %36, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %22

45:                                               ; preds = %22
  %46 = load %struct.simplefb_format*, %struct.simplefb_format** %6, align 8
  %47 = icmp ne %struct.simplefb_format* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %68

53:                                               ; preds = %45
  %54 = load %struct.simplefb_format*, %struct.simplefb_format** %6, align 8
  %55 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DRM_FORMAT_RGB888, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %3, align 8
  %61 = load i32, i32* @ARCPGU_REG_CTRL, align 4
  %62 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %3, align 8
  %63 = load i32, i32* @ARCPGU_REG_CTRL, align 4
  %64 = call i32 @arc_pgu_read(%struct.arcpgu_drm_private* %62, i32 %63)
  %65 = load i32, i32* @ARCPGU_MODE_RGB888_MASK, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @arc_pgu_write(%struct.arcpgu_drm_private* %60, i32 %61, i32 %66)
  br label %68

68:                                               ; preds = %52, %59, %53
  ret void
}

declare dso_local %struct.arcpgu_drm_private* @crtc_to_arcpgu_priv(%struct.drm_crtc*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.simplefb_format*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @arc_pgu_write(%struct.arcpgu_drm_private*, i32, i32) #1

declare dso_local i32 @arc_pgu_read(%struct.arcpgu_drm_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
