; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_devm_drm_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_devm_drm_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_driver = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_drm_dev_init(%struct.device* %0, %struct.drm_device* %1, %struct.drm_driver* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_driver*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_driver* %2, %struct.drm_driver** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.drm_driver*, %struct.drm_driver** %7, align 8
  %13 = getelementptr inbounds %struct.drm_driver, %struct.drm_driver* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i1 [ true, %3 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %45

25:                                               ; preds = %17
  %26 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %27 = load %struct.drm_driver*, %struct.drm_driver** %7, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @drm_dev_init(%struct.drm_device* %26, %struct.drm_driver* %27, %struct.device* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %45

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %37 = call i32 @devm_add_action(%struct.device* %35, i32 (%struct.drm_device*)* @devm_drm_dev_init_release, %struct.drm_device* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %42 = call i32 @devm_drm_dev_init_release(%struct.drm_device* %41)
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %32, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_dev_init(%struct.drm_device*, %struct.drm_driver*, %struct.device*) #1

declare dso_local i32 @devm_add_action(%struct.device*, i32 (%struct.drm_device*)*, %struct.drm_device*) #1

declare dso_local i32 @devm_drm_dev_init_release(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
