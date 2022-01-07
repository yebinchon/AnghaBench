; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu-debugfs.c_root_tbl_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu-debugfs.c_root_tbl_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.intel_iommu = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"IOMMU %s: Root Table Address: 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"B.D.F\09Root_entry\09\09\09\09Context_entry\09\09\09\09PASID\09PASID_table_entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.intel_iommu*)* @root_tbl_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @root_tbl_walk(%struct.seq_file* %0, %struct.intel_iommu* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.intel_iommu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.intel_iommu* %1, %struct.intel_iommu** %4, align 8
  %7 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %8 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %13 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %16 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @virt_to_phys(i32 %17)
  %19 = trunc i64 %18 to i32
  %20 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = call i32 @seq_puts(%struct.seq_file* %21, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %31, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ctx_tbl_walk(%struct.seq_file* %27, %struct.intel_iommu* %28, i32 %29)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %23

34:                                               ; preds = %23
  %35 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %36 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @ctx_tbl_walk(%struct.seq_file*, %struct.intel_iommu*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
