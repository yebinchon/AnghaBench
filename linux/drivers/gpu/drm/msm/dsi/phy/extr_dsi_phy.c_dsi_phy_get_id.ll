; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/phy/extr_dsi_phy.c_dsi_phy_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/phy/extr_dsi_phy.c_dsi_phy_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_phy = type { %struct.msm_dsi_phy_cfg*, %struct.platform_device* }
%struct.msm_dsi_phy_cfg = type { i32, i64* }
%struct.platform_device = type { i32 }
%struct.resource = type { i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dsi_phy\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_dsi_phy*)* @dsi_phy_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_phy_get_id(%struct.msm_dsi_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_dsi_phy*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.msm_dsi_phy_cfg*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.msm_dsi_phy* %0, %struct.msm_dsi_phy** %3, align 8
  %8 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %3, align 8
  %9 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %8, i32 0, i32 1
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %4, align 8
  %11 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %3, align 8
  %12 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %11, i32 0, i32 0
  %13 = load %struct.msm_dsi_phy_cfg*, %struct.msm_dsi_phy_cfg** %12, align 8
  store %struct.msm_dsi_phy_cfg* %13, %struct.msm_dsi_phy_cfg** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %14, i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %16, %struct.resource** %6, align 8
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.msm_dsi_phy_cfg*, %struct.msm_dsi_phy_cfg** %5, align 8
  %26 = getelementptr inbounds %struct.msm_dsi_phy_cfg, %struct.msm_dsi_phy_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load %struct.msm_dsi_phy_cfg*, %struct.msm_dsi_phy_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.msm_dsi_phy_cfg, %struct.msm_dsi_phy_cfg* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %50

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %41, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
