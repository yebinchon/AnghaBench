; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_dev_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_dev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_driver = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_device* @drm_dev_alloc(%struct.drm_driver* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_driver*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_driver* %0, %struct.drm_driver** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.drm_device* @kzalloc(i32 4, i32 %8)
  store %struct.drm_device* %9, %struct.drm_device** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %11 = icmp ne %struct.drm_device* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.drm_device* @ERR_PTR(i32 %14)
  store %struct.drm_device* %15, %struct.drm_device** %3, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_driver*, %struct.drm_driver** %4, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @drm_dev_init(%struct.drm_device* %17, %struct.drm_driver* %18, %struct.device* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %25 = call i32 @kfree(%struct.drm_device* %24)
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.drm_device* @ERR_PTR(i32 %26)
  store %struct.drm_device* %27, %struct.drm_device** %3, align 8
  br label %30

28:                                               ; preds = %16
  %29 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %29, %struct.drm_device** %3, align 8
  br label %30

30:                                               ; preds = %28, %23, %12
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  ret %struct.drm_device* %31
}

declare dso_local %struct.drm_device* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_device* @ERR_PTR(i32) #1

declare dso_local i32 @drm_dev_init(%struct.drm_device*, %struct.drm_driver*, %struct.device*) #1

declare dso_local i32 @kfree(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
