; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_virtual.c_dce_virtual_pageflip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_virtual.c_dce_virtual_pageflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.amdgpu_crtc** }
%struct.amdgpu_crtc = type { i64, i32, %struct.amdgpu_flip_work* }
%struct.amdgpu_flip_work = type { %struct.amdgpu_flip_work*, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"invalid pageflip crtc %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_FLIP_SUBMITTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"amdgpu_crtc->pflip_status = %d != AMDGPU_FLIP_SUBMITTED(%d)\0A\00", align 1
@AMDGPU_FLIP_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @dce_virtual_pageflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_virtual_pageflip(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.amdgpu_crtc*, align 8
  %8 = alloca %struct.amdgpu_flip_work*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.amdgpu_crtc**, %struct.amdgpu_crtc*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %12, i64 %14
  %16 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %15, align 8
  store %struct.amdgpu_crtc* %16, %struct.amdgpu_crtc** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp uge i32 %17, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %95

28:                                               ; preds = %2
  %29 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %30 = icmp eq %struct.amdgpu_crtc* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %95

32:                                               ; preds = %28
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %39, i32 0, i32 2
  %41 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %40, align 8
  store %struct.amdgpu_flip_work* %41, %struct.amdgpu_flip_work** %8, align 8
  %42 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AMDGPU_FLIP_SUBMITTED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %32
  %48 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %49 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AMDGPU_FLIP_SUBMITTED, align 8
  %52 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  store i32 0, i32* %3, align 4
  br label %95

59:                                               ; preds = %32
  %60 = load i64, i64* @AMDGPU_FLIP_NONE, align 8
  %61 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %62 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %64 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %63, i32 0, i32 2
  store %struct.amdgpu_flip_work* null, %struct.amdgpu_flip_work** %64, align 8
  %65 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %8, align 8
  %66 = getelementptr inbounds %struct.amdgpu_flip_work, %struct.amdgpu_flip_work* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %71 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %70, i32 0, i32 1
  %72 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %8, align 8
  %73 = getelementptr inbounds %struct.amdgpu_flip_work, %struct.amdgpu_flip_work* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @drm_crtc_send_vblank_event(i32* %71, i64 %74)
  br label %76

76:                                               ; preds = %69, %59
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %84 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %83, i32 0, i32 1
  %85 = call i32 @drm_crtc_vblank_put(i32* %84)
  %86 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %8, align 8
  %87 = getelementptr inbounds %struct.amdgpu_flip_work, %struct.amdgpu_flip_work* %86, i32 0, i32 1
  %88 = call i32 @amdgpu_bo_unref(i32* %87)
  %89 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %8, align 8
  %90 = getelementptr inbounds %struct.amdgpu_flip_work, %struct.amdgpu_flip_work* %89, i32 0, i32 0
  %91 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %90, align 8
  %92 = call i32 @kfree(%struct.amdgpu_flip_work* %91)
  %93 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %8, align 8
  %94 = call i32 @kfree(%struct.amdgpu_flip_work* %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %76, %47, %31, %23
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_crtc_send_vblank_event(i32*, i64) #1

declare dso_local i32 @drm_crtc_vblank_put(i32*) #1

declare dso_local i32 @amdgpu_bo_unref(i32*) #1

declare dso_local i32 @kfree(%struct.amdgpu_flip_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
