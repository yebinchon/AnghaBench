; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_2__*, %struct.drm_vblank_crtc*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.drm_vblank_crtc = type { i32, i32, i32, i32, %struct.drm_device* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@vblank_disable_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Supports vblank timestamp caching Rev 2 (21.10.2013).\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Driver supports precise vblank timestamp query.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"No driver support for vblank timestamp query.\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"Setting vblank_disable_immediate to false because get_vblank_timestamp == NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_vblank_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_vblank_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 5
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 4
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.drm_vblank_crtc* @kcalloc(i32 %20, i32 24, i32 %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 3
  store %struct.drm_vblank_crtc* %22, %struct.drm_vblank_crtc** %24, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 3
  %27 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %26, align 8
  %28 = icmp ne %struct.drm_vblank_crtc* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %90

30:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 3
  %38 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %38, i64 %40
  store %struct.drm_vblank_crtc* %41, %struct.drm_vblank_crtc** %8, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %8, align 8
  %44 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %43, i32 0, i32 4
  store %struct.drm_device* %42, %struct.drm_device** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %8, align 8
  %47 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %8, align 8
  %49 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %48, i32 0, i32 3
  %50 = call i32 @init_waitqueue_head(i32* %49)
  %51 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %8, align 8
  %52 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %51, i32 0, i32 2
  %53 = load i32, i32* @vblank_disable_fn, align 4
  %54 = call i32 @timer_setup(i32* %52, i32 %53, i32 0)
  %55 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %8, align 8
  %56 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %55, i32 0, i32 1
  %57 = call i32 @seqlock_init(i32* %56)
  br label %58

58:                                               ; preds = %35
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %31

61:                                               ; preds = %31
  %62 = call i32 @DRM_INFO(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = call i32 @DRM_INFO(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %73

71:                                               ; preds = %61
  %72 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %69
  %74 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = call i32 @DRM_INFO(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %78, %73
  store i32 0, i32* %3, align 4
  br label %94

90:                                               ; preds = %29
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %89
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.drm_vblank_crtc* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @seqlock_init(i32*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
