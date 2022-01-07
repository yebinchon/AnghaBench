; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iommu_ops* }
%struct.iommu_ops = type { i32 (%struct.device*, %struct.of_phandle_args*)* }
%struct.device = type opaque
%struct.device.0 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.of_phandle_args = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to initialize fwspec: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to parse SW group ID: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_smmu*, %struct.device.0*, %struct.of_phandle_args*)* @tegra_smmu_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_smmu_configure(%struct.tegra_smmu* %0, %struct.device.0* %1, %struct.of_phandle_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_smmu*, align 8
  %6 = alloca %struct.device.0*, align 8
  %7 = alloca %struct.of_phandle_args*, align 8
  %8 = alloca %struct.iommu_ops*, align 8
  %9 = alloca i32, align 4
  store %struct.tegra_smmu* %0, %struct.tegra_smmu** %5, align 8
  store %struct.device.0* %1, %struct.device.0** %6, align 8
  store %struct.of_phandle_args* %2, %struct.of_phandle_args** %7, align 8
  %10 = load %struct.tegra_smmu*, %struct.tegra_smmu** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.iommu_ops*, %struct.iommu_ops** %12, align 8
  store %struct.iommu_ops* %13, %struct.iommu_ops** %8, align 8
  %14 = load %struct.device.0*, %struct.device.0** %6, align 8
  %15 = load %struct.device.0*, %struct.device.0** %6, align 8
  %16 = getelementptr inbounds %struct.device.0, %struct.device.0* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.iommu_ops*, %struct.iommu_ops** %8, align 8
  %20 = call i32 @iommu_fwspec_init(%struct.device.0* %14, i32* %18, %struct.iommu_ops* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.device.0*, %struct.device.0** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @dev_err(%struct.device.0* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %46

28:                                               ; preds = %3
  %29 = load %struct.iommu_ops*, %struct.iommu_ops** %8, align 8
  %30 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.device*, %struct.of_phandle_args*)*, i32 (%struct.device*, %struct.of_phandle_args*)** %30, align 8
  %32 = load %struct.device.0*, %struct.device.0** %6, align 8
  %33 = bitcast %struct.device.0* %32 to %struct.device*
  %34 = load %struct.of_phandle_args*, %struct.of_phandle_args** %7, align 8
  %35 = call i32 %31(%struct.device* %33, %struct.of_phandle_args* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.device.0*, %struct.device.0** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dev_err(%struct.device.0* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.device.0*, %struct.device.0** %6, align 8
  %43 = call i32 @iommu_fwspec_free(%struct.device.0* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %38, %23
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @iommu_fwspec_init(%struct.device.0*, i32*, %struct.iommu_ops*) #1

declare dso_local i32 @dev_err(%struct.device.0*, i8*, i32) #1

declare dso_local i32 @iommu_fwspec_free(%struct.device.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
