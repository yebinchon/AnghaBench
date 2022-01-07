; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_mdss.c_dpu_mdss_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32* }
%struct.platform_device = type { i32 }
%struct.dpu_mdss = type { i32, i32*, i32*, %struct.dss_module_power }
%struct.dss_module_power = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @dpu_mdss_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_mdss_destroy(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.dpu_mdss*, align 8
  %6 = alloca %struct.dss_module_power*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.platform_device* @to_platform_device(i32 %11)
  store %struct.platform_device* %12, %struct.platform_device** %3, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.msm_drm_private*, %struct.msm_drm_private** %14, align 8
  store %struct.msm_drm_private* %15, %struct.msm_drm_private** %4, align 8
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %17 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call %struct.dpu_mdss* @to_dpu_mdss(i32* %18)
  store %struct.dpu_mdss* %19, %struct.dpu_mdss** %5, align 8
  %20 = load %struct.dpu_mdss*, %struct.dpu_mdss** %5, align 8
  %21 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %20, i32 0, i32 3
  store %struct.dss_module_power* %21, %struct.dss_module_power** %6, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pm_runtime_suspend(i32 %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pm_runtime_disable(i32 %28)
  %30 = load %struct.dpu_mdss*, %struct.dpu_mdss** %5, align 8
  %31 = call i32 @_dpu_mdss_irq_domain_fini(%struct.dpu_mdss* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call i32 @platform_get_irq(%struct.platform_device* %32, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @irq_set_chained_handler_and_data(i32 %34, i32* null, i32* null)
  %36 = load %struct.dss_module_power*, %struct.dss_module_power** %6, align 8
  %37 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dss_module_power*, %struct.dss_module_power** %6, align 8
  %40 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @msm_dss_put_clk(i32 %38, i32 %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.dss_module_power*, %struct.dss_module_power** %6, align 8
  %46 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @devm_kfree(i32* %44, i32 %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %64, %1
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.dpu_mdss*, %struct.dpu_mdss** %5, align 8
  %52 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.dpu_mdss*, %struct.dpu_mdss** %5, align 8
  %57 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @icc_put(i32 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %49

67:                                               ; preds = %49
  %68 = load %struct.dpu_mdss*, %struct.dpu_mdss** %5, align 8
  %69 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.dpu_mdss*, %struct.dpu_mdss** %5, align 8
  %76 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @devm_iounmap(i32* %74, i32* %77)
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.dpu_mdss*, %struct.dpu_mdss** %5, align 8
  %81 = getelementptr inbounds %struct.dpu_mdss, %struct.dpu_mdss* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %83 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  ret void
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.dpu_mdss* @to_dpu_mdss(i32*) #1

declare dso_local i32 @pm_runtime_suspend(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @_dpu_mdss_irq_domain_fini(%struct.dpu_mdss*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32*, i32*) #1

declare dso_local i32 @msm_dss_put_clk(i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, i32) #1

declare dso_local i32 @icc_put(i32) #1

declare dso_local i32 @devm_iounmap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
