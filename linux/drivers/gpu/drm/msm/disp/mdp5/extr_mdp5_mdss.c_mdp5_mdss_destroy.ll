; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_mdp5_mdss_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_mdp5_mdss_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.mdp5_mdss = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @mdp5_mdss_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_mdss_destroy(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.msm_drm_private*, align 8
  %4 = alloca %struct.mdp5_mdss*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 1
  %7 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  store %struct.msm_drm_private* %7, %struct.msm_drm_private** %3, align 8
  %8 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %9 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mdp5_mdss* @to_mdp5_mdss(i32 %10)
  store %struct.mdp5_mdss* %11, %struct.mdp5_mdss** %4, align 8
  %12 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %4, align 8
  %13 = icmp ne %struct.mdp5_mdss* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %4, align 8
  %17 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @irq_domain_remove(i32* %19)
  %21 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %4, align 8
  %22 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %4, align 8
  %25 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @regulator_disable(i32 %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pm_runtime_disable(i32 %30)
  br label %32

32:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.mdp5_mdss* @to_mdp5_mdss(i32) #1

declare dso_local i32 @irq_domain_remove(i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
