; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_drv.c_aspeed_gfx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_drv.c_aspeed_gfx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }

@aspeed_gfx_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_gfx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_gfx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.drm_device* @drm_dev_alloc(i32* @aspeed_gfx_driver, i32* %7)
  store %struct.drm_device* %8, %struct.drm_device** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call i64 @IS_ERR(%struct.drm_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.drm_device* %13)
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = call i32 @aspeed_gfx_load(%struct.drm_device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %31

21:                                               ; preds = %15
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = call i32 @drm_dev_register(%struct.drm_device* %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

28:                                               ; preds = %26
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = call i32 @aspeed_gfx_unload(%struct.drm_device* %29)
  br label %31

31:                                               ; preds = %28, %20
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = call i32 @drm_dev_put(%struct.drm_device* %32)
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %27, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @aspeed_gfx_load(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @aspeed_gfx_unload(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
