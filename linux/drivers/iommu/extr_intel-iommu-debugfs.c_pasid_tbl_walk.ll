; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu-debugfs.c_pasid_tbl_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu-debugfs.c_pasid_tbl_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.tbl_walk* }
%struct.tbl_walk = type { i64, %struct.pasid_entry* }
%struct.pasid_entry = type { i32 }

@PASID_TBL_ENTRIES = common dso_local global i64 0, align 8
@PASID_PDE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pasid_entry*, i32)* @pasid_tbl_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasid_tbl_walk(%struct.seq_file* %0, %struct.pasid_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.pasid_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tbl_walk*, align 8
  %8 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.pasid_entry* %1, %struct.pasid_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.tbl_walk*, %struct.tbl_walk** %10, align 8
  store %struct.tbl_walk* %11, %struct.tbl_walk** %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %37, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @PASID_TBL_ENTRIES, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.pasid_entry*, %struct.pasid_entry** %5, align 8
  %18 = call i64 @pasid_pte_is_present(%struct.pasid_entry* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.pasid_entry*, %struct.pasid_entry** %5, align 8
  %22 = load %struct.tbl_walk*, %struct.tbl_walk** %7, align 8
  %23 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %22, i32 0, i32 1
  store %struct.pasid_entry* %21, %struct.pasid_entry** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PASID_PDE_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.tbl_walk*, %struct.tbl_walk** %7, align 8
  %31 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = call i32 @print_tbl_walk(%struct.seq_file* %32)
  br label %34

34:                                               ; preds = %20, %16
  %35 = load %struct.pasid_entry*, %struct.pasid_entry** %5, align 8
  %36 = getelementptr inbounds %struct.pasid_entry, %struct.pasid_entry* %35, i32 1
  store %struct.pasid_entry* %36, %struct.pasid_entry** %5, align 8
  br label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %12

40:                                               ; preds = %12
  ret void
}

declare dso_local i64 @pasid_pte_is_present(%struct.pasid_entry*) #1

declare dso_local i32 @print_tbl_walk(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
