; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fbdev_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fbdev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, i32, %struct.fb_info* }
%struct.fb_info = type { %struct.fb_ops*, i8*, i64 }
%struct.fb_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_fb_helper*)* @drm_fbdev_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_fbdev_cleanup(%struct.drm_fb_helper* %0) #0 {
  %2 = alloca %struct.drm_fb_helper*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_ops*, align 8
  %5 = alloca i8*, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %2, align 8
  %6 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %7 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %6, i32 0, i32 2
  %8 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  store %struct.fb_info* %8, %struct.fb_info** %3, align 8
  store %struct.fb_ops* null, %struct.fb_ops** %4, align 8
  store i8* null, i8** %5, align 8
  %9 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %10 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = icmp ne %struct.fb_info* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = call i32 @fb_deferred_io_cleanup(%struct.fb_info* %23)
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = load %struct.fb_ops*, %struct.fb_ops** %29, align 8
  store %struct.fb_ops* %30, %struct.fb_ops** %4, align 8
  br label %31

31:                                               ; preds = %22, %17, %14
  %32 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %33 = call i32 @drm_fb_helper_fini(%struct.drm_fb_helper* %32)
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @vfree(i8* %37)
  %39 = load %struct.fb_ops*, %struct.fb_ops** %4, align 8
  %40 = call i32 @kfree(%struct.fb_ops* %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %43 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @drm_client_framebuffer_delete(i32 %44)
  br label %46

46:                                               ; preds = %41, %13
  ret void
}

declare dso_local i32 @fb_deferred_io_cleanup(%struct.fb_info*) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.drm_fb_helper*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @kfree(%struct.fb_ops*) #1

declare dso_local i32 @drm_client_framebuffer_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
