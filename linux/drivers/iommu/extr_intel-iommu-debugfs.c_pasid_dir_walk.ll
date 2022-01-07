; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu-debugfs.c_pasid_dir_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu-debugfs.c_pasid_dir_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pasid_dir_entry = type { i32 }
%struct.pasid_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i64)* @pasid_dir_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasid_dir_walk(%struct.seq_file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pasid_dir_entry*, align 8
  %8 = alloca %struct.pasid_entry*, align 8
  %9 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.pasid_dir_entry* @phys_to_virt(i32 %10)
  store %struct.pasid_dir_entry* %11, %struct.pasid_dir_entry** %7, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %29, %3
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.pasid_dir_entry*, %struct.pasid_dir_entry** %7, align 8
  %18 = call %struct.pasid_entry* @get_pasid_table_from_pde(%struct.pasid_dir_entry* %17)
  store %struct.pasid_entry* %18, %struct.pasid_entry** %8, align 8
  %19 = load %struct.pasid_entry*, %struct.pasid_entry** %8, align 8
  %20 = icmp ne %struct.pasid_entry* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = load %struct.pasid_entry*, %struct.pasid_entry** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @pasid_tbl_walk(%struct.seq_file* %22, %struct.pasid_entry* %23, i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.pasid_dir_entry*, %struct.pasid_dir_entry** %7, align 8
  %28 = getelementptr inbounds %struct.pasid_dir_entry, %struct.pasid_dir_entry* %27, i32 1
  store %struct.pasid_dir_entry* %28, %struct.pasid_dir_entry** %7, align 8
  br label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %9, align 8
  br label %12

32:                                               ; preds = %12
  ret void
}

declare dso_local %struct.pasid_dir_entry* @phys_to_virt(i32) #1

declare dso_local %struct.pasid_entry* @get_pasid_table_from_pde(%struct.pasid_dir_entry*) #1

declare dso_local i32 @pasid_tbl_walk(%struct.seq_file*, %struct.pasid_entry*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
