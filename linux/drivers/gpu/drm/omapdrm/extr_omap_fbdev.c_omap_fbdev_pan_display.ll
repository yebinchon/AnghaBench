; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fbdev.c_omap_fbdev_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fbdev.c_omap_fbdev_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.fb_info = type { i32 }
%struct.drm_fb_helper = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32 }
%struct.omap_fbdev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @omap_fbdev_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_fbdev_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca %struct.omap_fbdev*, align 8
  %8 = alloca %struct.omap_drm_private*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = call %struct.drm_fb_helper* @get_fb(%struct.fb_info* %9)
  store %struct.drm_fb_helper* %10, %struct.drm_fb_helper** %6, align 8
  %11 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %12 = call %struct.omap_fbdev* @to_omap_fbdev(%struct.drm_fb_helper* %11)
  store %struct.omap_fbdev* %12, %struct.omap_fbdev** %7, align 8
  %13 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %14 = icmp ne %struct.drm_fb_helper* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.omap_fbdev*, %struct.omap_fbdev** %7, align 8
  %18 = getelementptr inbounds %struct.omap_fbdev, %struct.omap_fbdev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %42

22:                                               ; preds = %16
  %23 = call i64 (...) @drm_can_sleep()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.omap_fbdev*, %struct.omap_fbdev** %7, align 8
  %27 = getelementptr inbounds %struct.omap_fbdev, %struct.omap_fbdev* %26, i32 0, i32 0
  %28 = call i32 @pan_worker(i32* %27)
  br label %41

29:                                               ; preds = %22
  %30 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %31 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.omap_drm_private*, %struct.omap_drm_private** %33, align 8
  store %struct.omap_drm_private* %34, %struct.omap_drm_private** %8, align 8
  %35 = load %struct.omap_drm_private*, %struct.omap_drm_private** %8, align 8
  %36 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.omap_fbdev*, %struct.omap_fbdev** %7, align 8
  %39 = getelementptr inbounds %struct.omap_fbdev, %struct.omap_fbdev* %38, i32 0, i32 0
  %40 = call i32 @queue_work(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %29, %25
  store i32 0, i32* %3, align 4
  br label %46

42:                                               ; preds = %21, %15
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %45 = call i32 @drm_fb_helper_pan_display(%struct.fb_var_screeninfo* %43, %struct.fb_info* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.drm_fb_helper* @get_fb(%struct.fb_info*) #1

declare dso_local %struct.omap_fbdev* @to_omap_fbdev(%struct.drm_fb_helper*) #1

declare dso_local i64 @drm_can_sleep(...) #1

declare dso_local i32 @pan_worker(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @drm_fb_helper_pan_display(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
