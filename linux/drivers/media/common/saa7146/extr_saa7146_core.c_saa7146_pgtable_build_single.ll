; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_saa7146_pgtable_build_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_saa7146_pgtable_build_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.saa7146_pgtable = type { i64, i32* }
%struct.scatterlist = type { i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_pgtable_build_single(%struct.pci_dev* %0, %struct.saa7146_pgtable* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.saa7146_pgtable*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.saa7146_pgtable* %1, %struct.saa7146_pgtable** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 0, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %19 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = icmp sgt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %6, align 8
  %29 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %6, align 8
  %31 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %9, align 8
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %62, %4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %13, align 4
  %40 = mul nsw i32 %39, 4096
  %41 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %42 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %47 = call i64 @sg_dma_address(%struct.scatterlist* %46)
  %48 = load i32, i32* %13, align 4
  %49 = mul nsw i32 %48, 4096
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = call i32 @cpu_to_le32(i64 %51)
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %9, align 8
  br label %38

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  %65 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %66 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %65, i32 1
  store %struct.scatterlist* %66, %struct.scatterlist** %7, align 8
  br label %33

67:                                               ; preds = %33
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 -1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %79, %67
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 1024
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %72

82:                                               ; preds = %72
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
