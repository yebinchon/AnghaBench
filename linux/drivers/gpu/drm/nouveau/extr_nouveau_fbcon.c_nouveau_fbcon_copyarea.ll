; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.nouveau_fbdev* }
%struct.nouveau_fbdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fb_copyarea = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.nvif_device }
%struct.nvif_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_FERMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @nouveau_fbcon_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_fbcon_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.nouveau_fbdev*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nvif_device*, align 8
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 2
  %11 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %10, align 8
  store %struct.nouveau_fbdev* %11, %struct.nouveau_fbdev** %5, align 8
  %12 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %13 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nouveau_drm* @nouveau_drm(i32 %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %6, align 8
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store %struct.nvif_device* %19, %struct.nvif_device** %7, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %92

26:                                               ; preds = %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  %29 = call i32 (...) @in_interrupt()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %76, label %31

31:                                               ; preds = %26
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %76, label %38

38:                                               ; preds = %31
  %39 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %40 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i64 @mutex_trylock(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %38
  %45 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %46 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %54 = call i32 @nv04_fbcon_copyarea(%struct.fb_info* %52, %struct.fb_copyarea* %53)
  store i32 %54, i32* %8, align 4
  br label %71

55:                                               ; preds = %44
  %56 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %57 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NV_DEVICE_INFO_V0_FERMI, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %64 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %65 = call i32 @nv50_fbcon_copyarea(%struct.fb_info* %63, %struct.fb_copyarea* %64)
  store i32 %65, i32* %8, align 4
  br label %70

66:                                               ; preds = %55
  %67 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %68 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %69 = call i32 @nvc0_fbcon_copyarea(%struct.fb_info* %67, %struct.fb_copyarea* %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %51
  %72 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %73 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  br label %76

76:                                               ; preds = %71, %38, %31, %26
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %92

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %87 = call i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %90 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %91 = call i32 @drm_fb_helper_cfb_copyarea(%struct.fb_info* %89, %struct.fb_copyarea* %90)
  br label %92

92:                                               ; preds = %88, %79, %25
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @nv04_fbcon_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @nv50_fbcon_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @nvc0_fbcon_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info*) #1

declare dso_local i32 @drm_fb_helper_cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
