; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_mdp4_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_mdp4_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { %struct.msm_gem_address_space* }
%struct.msm_gem_address_space = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32, i32)* }
%struct.mdp4_kms = type { i64, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }

@iommu_ports = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_kms*)* @mdp4_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp4_destroy(%struct.msm_kms* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.mdp4_kms*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.msm_gem_address_space*, align 8
  store %struct.msm_kms* %0, %struct.msm_kms** %2, align 8
  %6 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %7 = call i32 @to_mdp_kms(%struct.msm_kms* %6)
  %8 = call %struct.mdp4_kms* @to_mdp4_kms(i32 %7)
  store %struct.mdp4_kms* %8, %struct.mdp4_kms** %3, align 8
  %9 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %10 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %15 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %14, i32 0, i32 0
  %16 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %15, align 8
  store %struct.msm_gem_address_space* %16, %struct.msm_gem_address_space** %5, align 8
  %17 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %18 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %23 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %26 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %25, i32 0, i32 0
  %27 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %26, align 8
  %28 = call i32 @msm_gem_unpin_iova(i32 %24, %struct.msm_gem_address_space* %27)
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %31 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @drm_gem_object_put_unlocked(i32 %32)
  %34 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %35 = icmp ne %struct.msm_gem_address_space* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %38 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %42, align 8
  %44 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %45 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* @iommu_ports, align 4
  %48 = load i32, i32* @iommu_ports, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = call i32 %43(%struct.TYPE_6__* %46, i32 %47, i32 %49)
  %51 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %52 = call i32 @msm_gem_address_space_put(%struct.msm_gem_address_space* %51)
  br label %53

53:                                               ; preds = %36, %29
  %54 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %55 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @pm_runtime_disable(%struct.device* %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.mdp4_kms*, %struct.mdp4_kms** %3, align 8
  %63 = call i32 @kfree(%struct.mdp4_kms* %62)
  ret void
}

declare dso_local %struct.mdp4_kms* @to_mdp4_kms(i32) #1

declare dso_local i32 @to_mdp_kms(%struct.msm_kms*) #1

declare dso_local i32 @msm_gem_unpin_iova(i32, %struct.msm_gem_address_space*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @msm_gem_address_space_put(%struct.msm_gem_address_space*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @kfree(%struct.mdp4_kms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
