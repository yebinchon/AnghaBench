; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_host1x_drm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_drm.c_host1x_drm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_driver = type { i32 }
%struct.host1x_device = type { i32 }
%struct.drm_device = type { i32 }

@tegra_drm_driver = common dso_local global %struct.drm_driver zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"tegradrmfb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_device*)* @host1x_drm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host1x_drm_probe(%struct.host1x_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_device*, align 8
  %4 = alloca %struct.drm_driver*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.host1x_device* %0, %struct.host1x_device** %3, align 8
  store %struct.drm_driver* @tegra_drm_driver, %struct.drm_driver** %4, align 8
  %7 = load %struct.drm_driver*, %struct.drm_driver** %4, align 8
  %8 = load %struct.host1x_device*, %struct.host1x_device** %3, align 8
  %9 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %8, i32 0, i32 0
  %10 = call %struct.drm_device* @drm_dev_alloc(%struct.drm_driver* %7, i32* %9)
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = call i64 @IS_ERR(%struct.drm_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call i32 @PTR_ERR(%struct.drm_device* %15)
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.host1x_device*, %struct.host1x_device** %3, align 8
  %19 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call i32 @dev_set_drvdata(i32* %19, %struct.drm_device* %20)
  %22 = call i32 @drm_fb_helper_remove_conflicting_framebuffers(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = call i32 @drm_dev_register(%struct.drm_device* %27, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %37

33:                                               ; preds = %31, %25
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = call i32 @drm_dev_put(%struct.drm_device* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %32, %14
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.drm_device* @drm_dev_alloc(%struct.drm_driver*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_remove_conflicting_framebuffers(i32*, i8*, i32) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
