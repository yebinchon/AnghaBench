; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"smmu\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"swgroups\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@tegra_smmu_swgroups_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@tegra_smmu_clients_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_smmu*)* @tegra_smmu_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_smmu_debugfs_init(%struct.tegra_smmu* %0) #0 {
  %2 = alloca %struct.tegra_smmu*, align 8
  store %struct.tegra_smmu* %0, %struct.tegra_smmu** %2, align 8
  %3 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  %4 = load %struct.tegra_smmu*, %struct.tegra_smmu** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %4, i32 0, i32 0
  store i32 %3, i32* %5, align 4
  %6 = load %struct.tegra_smmu*, %struct.tegra_smmu** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @S_IRUGO, align 4
  %13 = load %struct.tegra_smmu*, %struct.tegra_smmu** %2, align 8
  %14 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tegra_smmu*, %struct.tegra_smmu** %2, align 8
  %17 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %15, %struct.tegra_smmu* %16, i32* @tegra_smmu_swgroups_fops)
  %18 = load i32, i32* @S_IRUGO, align 4
  %19 = load %struct.tegra_smmu*, %struct.tegra_smmu** %2, align 8
  %20 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tegra_smmu*, %struct.tegra_smmu** %2, align 8
  %23 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32 %21, %struct.tegra_smmu* %22, i32* @tegra_smmu_clients_fops)
  br label %24

24:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.tegra_smmu*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
