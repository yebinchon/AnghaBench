; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_omap_dump_tlb_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_omap_dump_tlb_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32 }
%struct.seq_file = type { i32 }
%struct.cr_regs = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.omap_iommu*, %struct.seq_file*)* @omap_dump_tlb_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omap_dump_tlb_entries(%struct.omap_iommu* %0, %struct.seq_file* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.omap_iommu*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cr_regs*, align 8
  store %struct.omap_iommu* %0, %struct.omap_iommu** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  %9 = load %struct.omap_iommu*, %struct.omap_iommu** %4, align 8
  %10 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cr_regs* @kcalloc(i32 %12, i32 4, i32 %13)
  store %struct.cr_regs* %14, %struct.cr_regs** %8, align 8
  %15 = load %struct.cr_regs*, %struct.cr_regs** %8, align 8
  %16 = icmp ne %struct.cr_regs* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.omap_iommu*, %struct.omap_iommu** %4, align 8
  %20 = load %struct.cr_regs*, %struct.cr_regs** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @__dump_tlb_entries(%struct.omap_iommu* %19, %struct.cr_regs* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %35, %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.omap_iommu*, %struct.omap_iommu** %4, align 8
  %29 = load %struct.cr_regs*, %struct.cr_regs** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cr_regs, %struct.cr_regs* %29, i64 %31
  %33 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %34 = call i32 @iotlb_dump_cr(%struct.omap_iommu* %28, %struct.cr_regs* %32, %struct.seq_file* %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load %struct.cr_regs*, %struct.cr_regs** %8, align 8
  %40 = call i32 @kfree(%struct.cr_regs* %39)
  store i64 0, i64* %3, align 8
  br label %41

41:                                               ; preds = %38, %17
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local %struct.cr_regs* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @__dump_tlb_entries(%struct.omap_iommu*, %struct.cr_regs*, i32) #1

declare dso_local i32 @iotlb_dump_cr(%struct.omap_iommu*, %struct.cr_regs*, %struct.seq_file*) #1

declare dso_local i32 @kfree(%struct.cr_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
