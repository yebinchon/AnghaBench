; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_hotplug_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_hotplug_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fbdev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Handling deferred fbcon HPD events\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_fbcon_hotplug_resume(%struct.nouveau_fbdev* %0) #0 {
  %2 = alloca %struct.nouveau_fbdev*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  store %struct.nouveau_fbdev* %0, %struct.nouveau_fbdev** %2, align 8
  %4 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %2, align 8
  %5 = icmp ne %struct.nouveau_fbdev* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  %8 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %2, align 8
  %9 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nouveau_drm* @nouveau_drm(i32 %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %3, align 8
  %13 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %2, align 8
  %14 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %2, align 8
  %17 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %7
  %21 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %2, align 8
  %22 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %24 = call i32 @NV_DEBUG(%struct.nouveau_drm* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %2, align 8
  %26 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %25, i32 0, i32 2
  %27 = call i32 @drm_fb_helper_hotplug_event(%struct.TYPE_2__* %26)
  br label %28

28:                                               ; preds = %20, %7
  %29 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %2, align 8
  %30 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %32

32:                                               ; preds = %28, %6
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @drm_fb_helper_hotplug_event(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
