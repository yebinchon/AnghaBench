; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_accel_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_accel_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i64, %struct.nouveau_fbdev* }
%struct.nouveau_fbdev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @nouveau_fbcon_accel_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_fbcon_accel_fini(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %5)
  store %struct.nouveau_drm* %6, %struct.nouveau_drm** %3, align 8
  %7 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %7, i32 0, i32 1
  %9 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %8, align 8
  store %struct.nouveau_fbdev* %9, %struct.nouveau_fbdev** %4, align 8
  %10 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %11 = icmp ne %struct.nouveau_fbdev* %10, null
  br i1 %11, label %12, label %60

12:                                               ; preds = %1
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %12
  %18 = call i32 (...) @console_lock()
  %19 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %26 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %27 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %25
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %24, %17
  %34 = call i32 (...) @console_unlock()
  %35 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %36 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @nouveau_channel_idle(i64 %37)
  %39 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %40 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %39, i32 0, i32 6
  %41 = call i32 @nvif_object_fini(i32* %40)
  %42 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %43 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %42, i32 0, i32 5
  %44 = call i32 @nvif_object_fini(i32* %43)
  %45 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %46 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %45, i32 0, i32 4
  %47 = call i32 @nvif_object_fini(i32* %46)
  %48 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %49 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %48, i32 0, i32 3
  %50 = call i32 @nvif_object_fini(i32* %49)
  %51 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %52 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %51, i32 0, i32 2
  %53 = call i32 @nvif_object_fini(i32* %52)
  %54 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %55 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %54, i32 0, i32 1
  %56 = call i32 @nvif_object_fini(i32* %55)
  %57 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %58 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %57, i32 0, i32 0
  %59 = call i32 @nvif_object_fini(i32* %58)
  br label %60

60:                                               ; preds = %33, %12, %1
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @nouveau_channel_idle(i64) #1

declare dso_local i32 @nvif_object_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
