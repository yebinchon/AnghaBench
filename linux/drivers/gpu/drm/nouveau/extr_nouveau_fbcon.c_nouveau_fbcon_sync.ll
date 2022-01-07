; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.nouveau_fbdev* }
%struct.nouveau_fbdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_3__, %struct.nouveau_channel* }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_channel = type { i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @nouveau_fbcon_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fbcon_sync(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %9, align 8
  store %struct.nouveau_fbdev* %10, %struct.nouveau_fbdev** %4, align 8
  %11 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nouveau_drm* @nouveau_drm(i32 %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %5, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 1
  %18 = load %struct.nouveau_channel*, %struct.nouveau_channel** %17, align 8
  store %struct.nouveau_channel* %18, %struct.nouveau_channel** %6, align 8
  %19 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %20 = icmp ne %struct.nouveau_channel* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %1
  %22 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %23 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = call i64 (...) @in_interrupt()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %29, %26, %21, %1
  store i32 0, i32* %2, align 4
  br label %65

43:                                               ; preds = %35
  %44 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %45 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @mutex_trylock(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %65

50:                                               ; preds = %43
  %51 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %52 = call i32 @nouveau_channel_idle(%struct.nouveau_channel* %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %54 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %61 = call i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info* %60)
  store i32 0, i32* %2, align 4
  br label %65

62:                                               ; preds = %50
  %63 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %64 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %59, %49, %42
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @nouveau_channel_idle(%struct.nouveau_channel*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
