; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.msm_iommu_dev = type { i32 }
%struct.iommu_group = type { i32 }

@msm_iommu_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @msm_iommu_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_iommu_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.msm_iommu_dev*, align 8
  %5 = alloca %struct.iommu_group*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @msm_iommu_lock, i64 %7)
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.msm_iommu_dev* @find_iommu_for_dev(%struct.device* %9)
  store %struct.msm_iommu_dev* %10, %struct.msm_iommu_dev** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_unlock_irqrestore(i32* @msm_iommu_lock, i64 %11)
  %13 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %4, align 8
  %14 = icmp ne %struct.msm_iommu_dev* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %4, align 8
  %17 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @iommu_device_link(i32* %17, %struct.device* %18)
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call %struct.iommu_group* @iommu_group_get_for_dev(%struct.device* %24)
  store %struct.iommu_group* %25, %struct.iommu_group** %5, align 8
  %26 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %27 = call i64 @IS_ERR(%struct.iommu_group* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %31 = call i32 @PTR_ERR(%struct.iommu_group* %30)
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %34 = call i32 @iommu_group_put(%struct.iommu_group* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %29, %20
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.msm_iommu_dev* @find_iommu_for_dev(%struct.device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iommu_device_link(i32*, %struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_get_for_dev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iommu_group*) #1

declare dso_local i32 @PTR_ERR(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
