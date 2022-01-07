; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-impl.c_cavium_smmu_impl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-impl.c_cavium_smmu_impl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, i32* }
%struct.cavium_smmu = type { %struct.arm_smmu_device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cavium_impl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arm_smmu_device* (%struct.arm_smmu_device*)* @cavium_smmu_impl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arm_smmu_device* @cavium_smmu_impl_init(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca %struct.arm_smmu_device*, align 8
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca %struct.cavium_smmu*, align 8
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  %5 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %6 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cavium_smmu* @devm_kzalloc(i32 %7, i32 16, i32 %8)
  store %struct.cavium_smmu* %9, %struct.cavium_smmu** %4, align 8
  %10 = load %struct.cavium_smmu*, %struct.cavium_smmu** %4, align 8
  %11 = icmp ne %struct.cavium_smmu* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.arm_smmu_device* @ERR_PTR(i32 %14)
  store %struct.arm_smmu_device* %15, %struct.arm_smmu_device** %2, align 8
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.cavium_smmu*, %struct.cavium_smmu** %4, align 8
  %18 = getelementptr inbounds %struct.cavium_smmu, %struct.cavium_smmu* %17, i32 0, i32 0
  %19 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %20 = bitcast %struct.arm_smmu_device* %18 to i8*
  %21 = bitcast %struct.arm_smmu_device* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.cavium_smmu*, %struct.cavium_smmu** %4, align 8
  %23 = getelementptr inbounds %struct.cavium_smmu, %struct.cavium_smmu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %23, i32 0, i32 1
  store i32* @cavium_impl, i32** %24, align 8
  %25 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %26 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %29 = call i32 @devm_kfree(i32 %27, %struct.arm_smmu_device* %28)
  %30 = load %struct.cavium_smmu*, %struct.cavium_smmu** %4, align 8
  %31 = getelementptr inbounds %struct.cavium_smmu, %struct.cavium_smmu* %30, i32 0, i32 0
  store %struct.arm_smmu_device* %31, %struct.arm_smmu_device** %2, align 8
  br label %32

32:                                               ; preds = %16, %12
  %33 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  ret %struct.arm_smmu_device* %33
}

declare dso_local %struct.cavium_smmu* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.arm_smmu_device* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_kfree(i32, %struct.arm_smmu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
