; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_dump_ioptable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_dump_ioptable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.omap_iommu* }
%struct.omap_iommu = type { i32 }

@PTRS_PER_IOPGD = common dso_local global i32 0, align 4
@IOPGD_TABLE = common dso_local global i32 0, align 4
@IOPGD_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"1: 0x%08x 0x%08x\0A\00", align 1
@PTRS_PER_IOPTE = common dso_local global i32 0, align 4
@IOPTE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"2: 0x%08x 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @dump_ioptable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ioptable(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.omap_iommu*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.omap_iommu*, %struct.omap_iommu** %10, align 8
  store %struct.omap_iommu* %11, %struct.omap_iommu** %8, align 8
  %12 = load %struct.omap_iommu*, %struct.omap_iommu** %8, align 8
  %13 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.omap_iommu*, %struct.omap_iommu** %8, align 8
  %16 = call i32* @iopgd_offset(%struct.omap_iommu* %15, i32 0)
  store i32* %16, i32** %6, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %72, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @PTRS_PER_IOPGD, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %72

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IOPGD_TABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @IOPGD_SHIFT, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39)
  br label %72

41:                                               ; preds = %26
  %42 = load i32*, i32** %6, align 8
  %43 = call i32* @iopte_offset(i32* %42, i32 0)
  store i32* %43, i32** %7, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %66, %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PTRS_PER_IOPTE, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %66

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @IOPGD_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @IOPTE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = add nsw i32 %56, %59
  store i32 %60, i32* %5, align 4
  %61 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %53, %52
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %7, align 8
  br label %44

71:                                               ; preds = %44
  br label %72

72:                                               ; preds = %71, %32, %25
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %6, align 8
  br label %17

77:                                               ; preds = %17
  %78 = load %struct.omap_iommu*, %struct.omap_iommu** %8, align 8
  %79 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock(i32* %79)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @iopgd_offset(%struct.omap_iommu*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i32* @iopte_offset(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
