; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c___free_pbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c___free_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bnxt_qplib_pbl = type { i32, i64, i32**, i32** }

@PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PBL free pg_arr[%d] empty?!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.bnxt_qplib_pbl*, i32)* @__free_pbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__free_pbl(%struct.pci_dev* %0, %struct.bnxt_qplib_pbl* %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.bnxt_qplib_pbl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.bnxt_qplib_pbl* %1, %struct.bnxt_qplib_pbl** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %67, label %10

10:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %63, %10
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %14 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %18, i32 0, i32 3
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %17
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %30 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %33 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %32, i32 0, i32 3
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = load i64, i64* @PAGE_MASK, align 8
  %41 = and i64 %39, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %44 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %43, i32 0, i32 2
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dma_free_coherent(i32* %28, i64 %31, i8* %42, i32* %49)
  br label %56

51:                                               ; preds = %17
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dev_warn(i32* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %26
  %57 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %58 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %57, i32 0, i32 3
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %11

66:                                               ; preds = %11
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %69 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %68, i32 0, i32 3
  %70 = load i32**, i32*** %69, align 8
  %71 = call i32 @kfree(i32** %70)
  %72 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %73 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %72, i32 0, i32 3
  store i32** null, i32*** %73, align 8
  %74 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %75 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = call i32 @kfree(i32** %76)
  %78 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %79 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %78, i32 0, i32 2
  store i32** null, i32*** %79, align 8
  %80 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %81 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %5, align 8
  %83 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
