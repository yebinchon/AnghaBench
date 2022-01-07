; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_alloc_fbi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_alloc_fbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32, i32 }
%struct.drm_fb_helper = type { %struct.fb_info*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fb_info* @drm_fb_helper_alloc_fbi(%struct.drm_fb_helper* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %3, align 8
  %7 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %8 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.fb_info* @framebuffer_alloc(i32 0, %struct.device* %12)
  store %struct.fb_info* %13, %struct.fb_info** %5, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %15 = icmp ne %struct.fb_info* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.fb_info* @ERR_PTR(i32 %18)
  store %struct.fb_info* %19, %struct.fb_info** %2, align 8
  br label %54

20:                                               ; preds = %1
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = call i32 @fb_alloc_cmap(i32* %22, i32 256, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %49

27:                                               ; preds = %20
  %28 = call i32 @alloc_apertures(i32 1)
  %29 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %45

38:                                               ; preds = %27
  %39 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %40 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %41 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %40, i32 0, i32 0
  store %struct.fb_info* %39, %struct.fb_info** %41, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  store %struct.fb_info* %44, %struct.fb_info** %2, align 8
  br label %54

45:                                               ; preds = %35
  %46 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 1
  %48 = call i32 @fb_dealloc_cmap(i32* %47)
  br label %49

49:                                               ; preds = %45, %26
  %50 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %51 = call i32 @framebuffer_release(%struct.fb_info* %50)
  %52 = load i32, i32* %6, align 4
  %53 = call %struct.fb_info* @ERR_PTR(i32 %52)
  store %struct.fb_info* %53, %struct.fb_info** %2, align 8
  br label %54

54:                                               ; preds = %49, %38, %16
  %55 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  ret %struct.fb_info* %55
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.device*) #1

declare dso_local %struct.fb_info* @ERR_PTR(i32) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @alloc_apertures(i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
