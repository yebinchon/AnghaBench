; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_drv.c_rockchip_drm_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_drv.c_rockchip_drm_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.component_match = type { i32 }

@rockchip_drm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_drm_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_drm_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.component_match*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  store %struct.component_match* null, %struct.component_match** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @rockchip_drm_platform_of_probe(%struct.device* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.component_match* @rockchip_drm_match_add(%struct.device* %16)
  store %struct.component_match* %17, %struct.component_match** %5, align 8
  %18 = load %struct.component_match*, %struct.component_match** %5, align 8
  %19 = call i64 @IS_ERR(%struct.component_match* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.component_match*, %struct.component_match** %5, align 8
  %23 = call i32 @PTR_ERR(%struct.component_match* %22)
  store i32 %23, i32* %2, align 4
  br label %35

24:                                               ; preds = %15
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.component_match*, %struct.component_match** %5, align 8
  %27 = call i32 @component_master_add_with_match(%struct.device* %25, i32* @rockchip_drm_ops, %struct.component_match* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @rockchip_drm_match_remove(%struct.device* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %30, %21, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @rockchip_drm_platform_of_probe(%struct.device*) #1

declare dso_local %struct.component_match* @rockchip_drm_match_add(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.component_match*) #1

declare dso_local i32 @PTR_ERR(%struct.component_match*) #1

declare dso_local i32 @component_master_add_with_match(%struct.device*, i32*, %struct.component_match*) #1

declare dso_local i32 @rockchip_drm_match_remove(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
