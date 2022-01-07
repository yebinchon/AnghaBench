; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_omap_iommu_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_omap_iommu_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32, %struct.dentry*, i32 }
%struct.dentry = type { i32 }

@iommu_debug_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nr_tlb_entries\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@regs_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"tlb\00", align 1
@tlb_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"pagetable\00", align 1
@pagetable_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_iommu_debugfs_add(%struct.omap_iommu* %0) #0 {
  %2 = alloca %struct.omap_iommu*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.omap_iommu* %0, %struct.omap_iommu** %2, align 8
  %4 = load i32, i32* @iommu_debug_root, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %29

7:                                                ; preds = %1
  %8 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %9 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @iommu_debug_root, align 4
  %12 = call %struct.dentry* @debugfs_create_dir(i32 %10, i32 %11)
  store %struct.dentry* %12, %struct.dentry** %3, align 8
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %15 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %14, i32 0, i32 1
  store %struct.dentry* %13, %struct.dentry** %15, align 8
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %18 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %17, i32 0, i32 0
  %19 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 256, %struct.dentry* %16, i32* %18)
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %22 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 256, %struct.dentry* %20, %struct.omap_iommu* %21, i32* @regs_fops)
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %25 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 256, %struct.dentry* %23, %struct.omap_iommu* %24, i32* @tlb_fops)
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = load %struct.omap_iommu*, %struct.omap_iommu** %2, align 8
  %28 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 256, %struct.dentry* %26, %struct.omap_iommu* %27, i32* @pagetable_fops)
  br label %29

29:                                               ; preds = %7, %6
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.omap_iommu*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
