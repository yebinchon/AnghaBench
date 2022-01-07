; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu-debugfs.c_ctx_tbl_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu-debugfs.c_ctx_tbl_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.tbl_walk* }
%struct.tbl_walk = type { i32, i32, %struct.context_entry*, i32*, i32 }
%struct.context_entry = type { i32 }
%struct.intel_iommu = type { i64, i32* }

@DMAR_RTADDR_REG = common dso_local global i64 0, align 8
@DMA_RTADDR_SMT = common dso_local global i32 0, align 4
@VTD_PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.intel_iommu*, i32)* @ctx_tbl_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctx_tbl_walk(%struct.seq_file* %0, %struct.intel_iommu* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.intel_iommu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.context_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tbl_walk, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.intel_iommu* %1, %struct.intel_iommu** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %69, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %72

15:                                               ; preds = %12
  %16 = bitcast %struct.tbl_walk* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.context_entry* @iommu_context_addr(%struct.intel_iommu* %17, i32 %18, i32 %19, i32 0)
  store %struct.context_entry* %20, %struct.context_entry** %7, align 8
  %21 = load %struct.context_entry*, %struct.context_entry** %7, align 8
  %22 = icmp ne %struct.context_entry* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %72

24:                                               ; preds = %15
  %25 = load %struct.context_entry*, %struct.context_entry** %7, align 8
  %26 = call i32 @context_present(%struct.context_entry* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %69

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %11, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %11, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %35 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %11, i32 0, i32 3
  store i32* %39, i32** %40, align 8
  %41 = load %struct.context_entry*, %struct.context_entry** %7, align 8
  %42 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %11, i32 0, i32 2
  store %struct.context_entry* %41, %struct.context_entry** %42, align 8
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %43, i32 0, i32 0
  store %struct.tbl_walk* %11, %struct.tbl_walk** %44, align 8
  %45 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %46 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DMAR_RTADDR_REG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @dmar_readq(i64 %49)
  %51 = load i32, i32* @DMA_RTADDR_SMT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %29
  %55 = load %struct.context_entry*, %struct.context_entry** %7, align 8
  %56 = getelementptr inbounds %struct.context_entry, %struct.context_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @VTD_PAGE_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.context_entry*, %struct.context_entry** %7, align 8
  %61 = call i32 @get_pasid_dir_size(%struct.context_entry* %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @pasid_dir_walk(%struct.seq_file* %62, i32 %63, i32 %64)
  br label %69

66:                                               ; preds = %29
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = call i32 @print_tbl_walk(%struct.seq_file* %67)
  br label %69

69:                                               ; preds = %66, %54, %28
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %12

72:                                               ; preds = %23, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.context_entry* @iommu_context_addr(%struct.intel_iommu*, i32, i32, i32) #2

declare dso_local i32 @context_present(%struct.context_entry*) #2

declare dso_local i32 @dmar_readq(i64) #2

declare dso_local i32 @get_pasid_dir_size(%struct.context_entry*) #2

declare dso_local i32 @pasid_dir_walk(%struct.seq_file*, i32, i32) #2

declare dso_local i32 @print_tbl_walk(%struct.seq_file*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
