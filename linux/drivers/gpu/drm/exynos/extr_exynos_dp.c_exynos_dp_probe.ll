; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_dp.c_exynos_dp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_dp.c_exynos_dp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.exynos_dp_device = type { %struct.drm_bridge*, %struct.TYPE_2__ }
%struct.drm_bridge = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.drm_panel* }
%struct.drm_panel = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"panel\00", align 1
@exynos_dp_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_dp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.exynos_dp_device*, align 8
  %7 = alloca %struct.drm_panel*, align 8
  %8 = alloca %struct.drm_bridge*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.exynos_dp_device* @devm_kzalloc(%struct.device* %13, i32 24, i32 %14)
  store %struct.exynos_dp_device* %15, %struct.exynos_dp_device** %6, align 8
  %16 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %17 = icmp ne %struct.exynos_dp_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %81

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.exynos_dp_device* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.device_node* @of_parse_phandle(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %28, %struct.device_node** %5, align 8
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %21
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call %struct.drm_panel* @of_drm_find_panel(%struct.device_node* %32)
  %34 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %35 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store %struct.drm_panel* %33, %struct.drm_panel** %36, align 8
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = call i32 @of_node_put(%struct.device_node* %37)
  %39 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %40 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.drm_panel*, %struct.drm_panel** %41, align 8
  %43 = call i64 @IS_ERR(%struct.drm_panel* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %47 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.drm_panel*, %struct.drm_panel** %48, align 8
  %50 = call i32 @PTR_ERR(%struct.drm_panel* %49)
  store i32 %50, i32* %2, align 4
  br label %81

51:                                               ; preds = %31
  br label %77

52:                                               ; preds = %21
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @drm_of_find_panel_or_bridge(i32 %55, i32 0, i32 0, %struct.drm_panel** %7, %struct.drm_bridge** %8)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %81

61:                                               ; preds = %52
  %62 = load %struct.drm_panel*, %struct.drm_panel** %7, align 8
  %63 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %64 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store %struct.drm_panel* %62, %struct.drm_panel** %65, align 8
  %66 = load %struct.drm_bridge*, %struct.drm_bridge** %8, align 8
  %67 = icmp ne %struct.drm_bridge* %66, null
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %72 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.drm_bridge*, %struct.drm_bridge** %8, align 8
  %75 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %76 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %75, i32 0, i32 0
  store %struct.drm_bridge* %74, %struct.drm_bridge** %76, align 8
  br label %77

77:                                               ; preds = %61, %51
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @component_add(%struct.device* %79, i32* @exynos_dp_ops)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %59, %45, %18
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.exynos_dp_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.exynos_dp_device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.drm_panel* @of_drm_find_panel(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.drm_panel*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_panel*) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, %struct.drm_panel**, %struct.drm_bridge**) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
