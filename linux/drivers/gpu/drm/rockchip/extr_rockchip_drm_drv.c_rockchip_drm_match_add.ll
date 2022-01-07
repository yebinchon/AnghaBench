; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_drv.c_rockchip_drm_match_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_drv.c_rockchip_drm_match_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_driver = type { i32 }
%struct.component_match = type { i32 }
%struct.device = type { i32 }

@num_rockchip_sub_drivers = common dso_local global i32 0, align 4
@rockchip_sub_drivers = common dso_local global %struct.platform_driver** null, align 8
@DL_FLAG_STATELESS = common dso_local global i32 0, align 4
@compare_dev = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.component_match* (%struct.device*)* @rockchip_drm_match_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.component_match* @rockchip_drm_match_add(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.component_match*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_driver*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  store %struct.component_match* null, %struct.component_match** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %40, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @num_rockchip_sub_drivers, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = load %struct.platform_driver**, %struct.platform_driver*** @rockchip_sub_drivers, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.platform_driver*, %struct.platform_driver** %13, i64 %15
  %17 = load %struct.platform_driver*, %struct.platform_driver** %16, align 8
  store %struct.platform_driver* %17, %struct.platform_driver** %5, align 8
  store %struct.device* null, %struct.device** %6, align 8
  br label %18

18:                                               ; preds = %38, %12
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load %struct.platform_driver*, %struct.platform_driver** %5, align 8
  %21 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %20, i32 0, i32 0
  %22 = call %struct.device* @platform_find_device_by_driver(%struct.device* %19, i32* %21)
  store %struct.device* %22, %struct.device** %7, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @put_device(%struct.device* %23)
  %25 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %25, %struct.device** %6, align 8
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = icmp ne %struct.device* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %39

29:                                               ; preds = %18
  %30 = load %struct.device*, %struct.device** %2, align 8
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load i32, i32* @DL_FLAG_STATELESS, align 4
  %33 = call i32 @device_link_add(%struct.device* %30, %struct.device* %31, i32 %32)
  %34 = load %struct.device*, %struct.device** %2, align 8
  %35 = load i32, i32* @compare_dev, align 4
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = call i32 @component_match_add(%struct.device* %34, %struct.component_match** %3, i32 %35, %struct.device* %36)
  br label %38

38:                                               ; preds = %29
  br i1 true, label %18, label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %8

43:                                               ; preds = %8
  %44 = load %struct.component_match*, %struct.component_match** %3, align 8
  %45 = call i64 @IS_ERR(%struct.component_match* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.device*, %struct.device** %2, align 8
  %49 = call i32 @rockchip_drm_match_remove(%struct.device* %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.component_match*, %struct.component_match** %3, align 8
  %52 = icmp ne %struct.component_match* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.component_match* @ERR_PTR(i32 %56)
  br label %58

58:                                               ; preds = %54, %53
  %59 = phi %struct.component_match* [ %51, %53 ], [ %57, %54 ]
  ret %struct.component_match* %59
}

declare dso_local %struct.device* @platform_find_device_by_driver(%struct.device*, i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @device_link_add(%struct.device*, %struct.device*, i32) #1

declare dso_local i32 @component_match_add(%struct.device*, %struct.component_match**, i32, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.component_match*) #1

declare dso_local i32 @rockchip_drm_match_remove(%struct.device*) #1

declare dso_local %struct.component_match* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
