; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_sva_bind_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_sva_bind_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_sva = type { i32 }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iommu_ops* }
%struct.iommu_ops = type { %struct.iommu_sva* (%struct.device.0*, %struct.mm_struct*, i8*)* }
%struct.device.0 = type opaque
%struct.mm_struct = type { i32 }
%struct.iommu_group = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iommu_sva* @iommu_sva_bind_device(%struct.device* %0, %struct.mm_struct* %1, i8* %2) #0 {
  %4 = alloca %struct.iommu_sva*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iommu_group*, align 8
  %9 = alloca %struct.iommu_sva*, align 8
  %10 = alloca %struct.iommu_ops*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.iommu_sva* @ERR_PTR(i32 %12)
  store %struct.iommu_sva* %13, %struct.iommu_sva** %9, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.iommu_ops*, %struct.iommu_ops** %17, align 8
  store %struct.iommu_ops* %18, %struct.iommu_ops** %10, align 8
  %19 = load %struct.iommu_ops*, %struct.iommu_ops** %10, align 8
  %20 = icmp ne %struct.iommu_ops* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.iommu_ops*, %struct.iommu_ops** %10, align 8
  %23 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %22, i32 0, i32 0
  %24 = load %struct.iommu_sva* (%struct.device.0*, %struct.mm_struct*, i8*)*, %struct.iommu_sva* (%struct.device.0*, %struct.mm_struct*, i8*)** %23, align 8
  %25 = icmp ne %struct.iommu_sva* (%struct.device.0*, %struct.mm_struct*, i8*)* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.iommu_sva* @ERR_PTR(i32 %28)
  store %struct.iommu_sva* %29, %struct.iommu_sva** %4, align 8
  br label %63

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call %struct.iommu_group* @iommu_group_get(%struct.device* %31)
  store %struct.iommu_group* %32, %struct.iommu_group** %8, align 8
  %33 = load %struct.iommu_group*, %struct.iommu_group** %8, align 8
  %34 = icmp ne %struct.iommu_group* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.iommu_sva* @ERR_PTR(i32 %37)
  store %struct.iommu_sva* %38, %struct.iommu_sva** %4, align 8
  br label %63

39:                                               ; preds = %30
  %40 = load %struct.iommu_group*, %struct.iommu_group** %8, align 8
  %41 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.iommu_group*, %struct.iommu_group** %8, align 8
  %44 = call i32 @iommu_group_device_count(%struct.iommu_group* %43)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %56

47:                                               ; preds = %39
  %48 = load %struct.iommu_ops*, %struct.iommu_ops** %10, align 8
  %49 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %48, i32 0, i32 0
  %50 = load %struct.iommu_sva* (%struct.device.0*, %struct.mm_struct*, i8*)*, %struct.iommu_sva* (%struct.device.0*, %struct.mm_struct*, i8*)** %49, align 8
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = bitcast %struct.device* %51 to %struct.device.0*
  %53 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call %struct.iommu_sva* %50(%struct.device.0* %52, %struct.mm_struct* %53, i8* %54)
  store %struct.iommu_sva* %55, %struct.iommu_sva** %9, align 8
  br label %56

56:                                               ; preds = %47, %46
  %57 = load %struct.iommu_group*, %struct.iommu_group** %8, align 8
  %58 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.iommu_group*, %struct.iommu_group** %8, align 8
  %61 = call i32 @iommu_group_put(%struct.iommu_group* %60)
  %62 = load %struct.iommu_sva*, %struct.iommu_sva** %9, align 8
  store %struct.iommu_sva* %62, %struct.iommu_sva** %4, align 8
  br label %63

63:                                               ; preds = %56, %35, %26
  %64 = load %struct.iommu_sva*, %struct.iommu_sva** %4, align 8
  ret %struct.iommu_sva* %64
}

declare dso_local %struct.iommu_sva* @ERR_PTR(i32) #1

declare dso_local %struct.iommu_group* @iommu_group_get(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iommu_group_device_count(%struct.iommu_group*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
