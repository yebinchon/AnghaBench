; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_detach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_detach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { i32 }
%struct.rk_iommu = type { i32, i32, %struct.iommu_domain* }
%struct.rk_iommu_domain = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Detaching from iommu domain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*, %struct.device*)* @rk_iommu_detach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_iommu_detach_device(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rk_iommu*, align 8
  %6 = alloca %struct.rk_iommu_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %9 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %10 = call %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain* %9)
  store %struct.rk_iommu_domain* %10, %struct.rk_iommu_domain** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.rk_iommu* @rk_iommu_from_dev(%struct.device* %11)
  store %struct.rk_iommu* %12, %struct.rk_iommu** %5, align 8
  %13 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %14 = icmp ne %struct.rk_iommu* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %20 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %19, i32 0, i32 2
  %21 = load %struct.iommu_domain*, %struct.iommu_domain** %20, align 8
  %22 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %23 = icmp ne %struct.iommu_domain* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %56

25:                                               ; preds = %16
  %26 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %27 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %26, i32 0, i32 2
  store %struct.iommu_domain* null, %struct.iommu_domain** %27, align 8
  %28 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %6, align 8
  %29 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %33 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %32, i32 0, i32 1
  %34 = call i32 @list_del_init(i32* %33)
  %35 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %6, align 8
  %36 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %40 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pm_runtime_get_if_in_use(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %25
  %50 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %51 = call i32 @rk_iommu_disable(%struct.rk_iommu* %50)
  %52 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %53 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pm_runtime_put(i32 %54)
  br label %56

56:                                               ; preds = %15, %24, %49, %25
  ret void
}

declare dso_local %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain*) #1

declare dso_local %struct.rk_iommu* @rk_iommu_from_dev(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_get_if_in_use(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rk_iommu_disable(%struct.rk_iommu*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
