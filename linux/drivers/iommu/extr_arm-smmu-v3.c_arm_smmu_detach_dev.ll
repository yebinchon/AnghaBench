; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_detach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_detach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_master = type { i32, %struct.arm_smmu_domain*, i32 }
%struct.arm_smmu_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_master*)* @arm_smmu_detach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_detach_dev(%struct.arm_smmu_master* %0) #0 {
  %2 = alloca %struct.arm_smmu_master*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.arm_smmu_domain*, align 8
  store %struct.arm_smmu_master* %0, %struct.arm_smmu_master** %2, align 8
  %5 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %6 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %5, i32 0, i32 1
  %7 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %6, align 8
  store %struct.arm_smmu_domain* %7, %struct.arm_smmu_domain** %4, align 8
  %8 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %9 = icmp ne %struct.arm_smmu_domain* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %13 = call i32 @arm_smmu_disable_ats(%struct.arm_smmu_master* %12)
  %14 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %15 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %14, i32 0, i32 0
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %19 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %18, i32 0, i32 2
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %22 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %21, i32 0, i32 0
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %26 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %25, i32 0, i32 1
  store %struct.arm_smmu_domain* null, %struct.arm_smmu_domain** %26, align 8
  %27 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %28 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %30 = call i32 @arm_smmu_install_ste_for_dev(%struct.arm_smmu_master* %29)
  br label %31

31:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @arm_smmu_disable_ats(%struct.arm_smmu_master*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @arm_smmu_install_ste_for_dev(%struct.arm_smmu_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
