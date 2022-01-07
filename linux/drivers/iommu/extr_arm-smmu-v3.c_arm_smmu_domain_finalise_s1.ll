; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_domain_finalise_s1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_domain_finalise_s1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_domain = type { %struct.arm_smmu_s1_cfg, %struct.arm_smmu_device* }
%struct.arm_smmu_s1_cfg = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.arm_smmu_device = type { i32, i32, i32 }
%struct.io_pgtable_cfg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32* }

@CTXDESC_CD_DWORDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to allocate context descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_domain*, %struct.io_pgtable_cfg*)* @arm_smmu_domain_finalise_s1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_domain_finalise_s1(%struct.arm_smmu_domain* %0, %struct.io_pgtable_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arm_smmu_domain*, align 8
  %5 = alloca %struct.io_pgtable_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.arm_smmu_device*, align 8
  %9 = alloca %struct.arm_smmu_s1_cfg*, align 8
  store %struct.arm_smmu_domain* %0, %struct.arm_smmu_domain** %4, align 8
  store %struct.io_pgtable_cfg* %1, %struct.io_pgtable_cfg** %5, align 8
  %10 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %10, i32 0, i32 1
  %12 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %11, align 8
  store %struct.arm_smmu_device* %12, %struct.arm_smmu_device** %8, align 8
  %13 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %4, align 8
  %14 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %13, i32 0, i32 0
  store %struct.arm_smmu_s1_cfg* %14, %struct.arm_smmu_s1_cfg** %9, align 8
  %15 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %16 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %19 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @arm_smmu_bitmap_alloc(i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %88

26:                                               ; preds = %2
  %27 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %28 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CTXDESC_CD_DWORDS, align 4
  %31 = shl i32 %30, 3
  %32 = load %struct.arm_smmu_s1_cfg*, %struct.arm_smmu_s1_cfg** %9, align 8
  %33 = getelementptr inbounds %struct.arm_smmu_s1_cfg, %struct.arm_smmu_s1_cfg* %32, i32 0, i32 2
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* @__GFP_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @dmam_alloc_coherent(i32 %29, i32 %31, i32* %33, i32 %36)
  %38 = load %struct.arm_smmu_s1_cfg*, %struct.arm_smmu_s1_cfg** %9, align 8
  %39 = getelementptr inbounds %struct.arm_smmu_s1_cfg, %struct.arm_smmu_s1_cfg* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.arm_smmu_s1_cfg*, %struct.arm_smmu_s1_cfg** %9, align 8
  %41 = getelementptr inbounds %struct.arm_smmu_s1_cfg, %struct.arm_smmu_s1_cfg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %26
  %45 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %46 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_warn(i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %81

51:                                               ; preds = %26
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.arm_smmu_s1_cfg*, %struct.arm_smmu_s1_cfg** %9, align 8
  %54 = getelementptr inbounds %struct.arm_smmu_s1_cfg, %struct.arm_smmu_s1_cfg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %5, align 8
  %57 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.arm_smmu_s1_cfg*, %struct.arm_smmu_s1_cfg** %9, align 8
  %63 = getelementptr inbounds %struct.arm_smmu_s1_cfg, %struct.arm_smmu_s1_cfg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %5, align 8
  %66 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.arm_smmu_s1_cfg*, %struct.arm_smmu_s1_cfg** %9, align 8
  %70 = getelementptr inbounds %struct.arm_smmu_s1_cfg, %struct.arm_smmu_s1_cfg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %5, align 8
  %73 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.arm_smmu_s1_cfg*, %struct.arm_smmu_s1_cfg** %9, align 8
  %79 = getelementptr inbounds %struct.arm_smmu_s1_cfg, %struct.arm_smmu_s1_cfg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  store i32 0, i32* %3, align 4
  br label %88

81:                                               ; preds = %44
  %82 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  %83 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @arm_smmu_bitmap_free(i32 %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %51, %24
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @arm_smmu_bitmap_alloc(i32, i32) #1

declare dso_local i32 @dmam_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @arm_smmu_bitmap_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
