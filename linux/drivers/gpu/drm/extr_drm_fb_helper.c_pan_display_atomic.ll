; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_pan_display_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_pan_display_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_2__, %struct.drm_fb_helper* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_fb_helper = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @pan_display_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pan_display_atomic(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.drm_fb_helper*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  store %struct.drm_fb_helper* %9, %struct.drm_fb_helper** %5, align 8
  %10 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pan_set(%struct.drm_fb_helper* %10, i32 %13, i32 %16)
  %18 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %19 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %18, i32 0, i32 0
  %20 = call i32 @drm_client_modeset_commit_force(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %2
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %38 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pan_set(%struct.drm_fb_helper* %37, i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %36, %23
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @pan_set(%struct.drm_fb_helper*, i32, i32) #1

declare dso_local i32 @drm_client_modeset_commit_force(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
