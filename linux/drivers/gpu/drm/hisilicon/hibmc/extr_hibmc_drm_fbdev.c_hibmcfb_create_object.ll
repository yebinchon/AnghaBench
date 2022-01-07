; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_fbdev.c_hibmcfb_create_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_fbdev.c_hibmcfb_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hibmc_drm_private = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32*, i32 }
%struct.drm_gem_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hibmc_drm_private*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**)* @hibmcfb_create_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hibmcfb_create_object(%struct.hibmc_drm_private* %0, %struct.drm_mode_fb_cmd2* %1, %struct.drm_gem_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hibmc_drm_private*, align 8
  %6 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %7 = alloca %struct.drm_gem_object**, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hibmc_drm_private* %0, %struct.hibmc_drm_private** %5, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %6, align 8
  store %struct.drm_gem_object** %2, %struct.drm_gem_object*** %7, align 8
  %12 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %5, align 8
  %13 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %16 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %21 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @hibmc_gem_create(%struct.drm_device* %24, i32 %25, i32 1, %struct.drm_gem_object** %8)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %33 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %7, align 8
  store %struct.drm_gem_object* %32, %struct.drm_gem_object** %33, align 8
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @hibmc_gem_create(%struct.drm_device*, i32, i32, %struct.drm_gem_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
