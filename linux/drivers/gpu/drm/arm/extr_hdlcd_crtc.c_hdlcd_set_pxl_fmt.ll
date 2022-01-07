; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_crtc.c_hdlcd_set_pxl_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_crtc.c_hdlcd_set_pxl_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplefb_format = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.drm_crtc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.hdlcd_drm_private = type { i32 }

@supported_formats = common dso_local global %struct.simplefb_format* null, align 8
@HDLCD_REG_PIXEL_FORMAT = common dso_local global i32 0, align 4
@HDLCD_REG_RED_SELECT = common dso_local global i32 0, align 4
@HDLCD_REG_GREEN_SELECT = common dso_local global i32 0, align 4
@HDLCD_REG_BLUE_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @hdlcd_set_pxl_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlcd_set_pxl_fmt(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdlcd_drm_private*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.simplefb_format*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = call %struct.hdlcd_drm_private* @crtc_to_hdlcd_priv(%struct.drm_crtc* %10)
  store %struct.hdlcd_drm_private* %11, %struct.hdlcd_drm_private** %5, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %6, align 8
  store %struct.simplefb_format* null, %struct.simplefb_format** %8, align 8
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %44, %1
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.simplefb_format*, %struct.simplefb_format** @supported_formats, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.simplefb_format* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.simplefb_format*, %struct.simplefb_format** @supported_formats, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %30, i64 %32
  %34 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.simplefb_format*, %struct.simplefb_format** @supported_formats, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %39, i64 %41
  store %struct.simplefb_format* %42, %struct.simplefb_format** %8, align 8
  br label %43

43:                                               ; preds = %38, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %24

47:                                               ; preds = %24
  %48 = load %struct.simplefb_format*, %struct.simplefb_format** %8, align 8
  %49 = icmp ne %struct.simplefb_format* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %109

55:                                               ; preds = %47
  %56 = load %struct.simplefb_format*, %struct.simplefb_format** %8, align 8
  %57 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 7
  %60 = sdiv i32 %59, 8
  store i32 %60, i32* %4, align 4
  %61 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %5, align 8
  %62 = load i32, i32* @HDLCD_REG_PIXEL_FORMAT, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sub i32 %63, 1
  %65 = shl i32 %64, 3
  %66 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %61, i32 %62, i32 %65)
  %67 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %5, align 8
  %68 = load i32, i32* @HDLCD_REG_RED_SELECT, align 4
  %69 = load %struct.simplefb_format*, %struct.simplefb_format** %8, align 8
  %70 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.simplefb_format*, %struct.simplefb_format** %8, align 8
  %74 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  %78 = shl i32 %77, 8
  %79 = or i32 %72, %78
  %80 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %67, i32 %68, i32 %79)
  %81 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %5, align 8
  %82 = load i32, i32* @HDLCD_REG_GREEN_SELECT, align 4
  %83 = load %struct.simplefb_format*, %struct.simplefb_format** %8, align 8
  %84 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.simplefb_format*, %struct.simplefb_format** %8, align 8
  %88 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 15
  %92 = shl i32 %91, 8
  %93 = or i32 %86, %92
  %94 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %81, i32 %82, i32 %93)
  %95 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %5, align 8
  %96 = load i32, i32* @HDLCD_REG_BLUE_SELECT, align 4
  %97 = load %struct.simplefb_format*, %struct.simplefb_format** %8, align 8
  %98 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.simplefb_format*, %struct.simplefb_format** %8, align 8
  %102 = getelementptr inbounds %struct.simplefb_format, %struct.simplefb_format* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 15
  %106 = shl i32 %105, 8
  %107 = or i32 %100, %106
  %108 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %95, i32 %96, i32 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %55, %54
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.hdlcd_drm_private* @crtc_to_hdlcd_priv(%struct.drm_crtc*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.simplefb_format*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hdlcd_write(%struct.hdlcd_drm_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
