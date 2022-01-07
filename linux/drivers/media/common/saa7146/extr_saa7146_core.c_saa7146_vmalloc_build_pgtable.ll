; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_saa7146_vmalloc_build_pgtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_saa7146_vmalloc_build_pgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.saa7146_pgtable = type { i32, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @saa7146_vmalloc_build_pgtable(%struct.pci_dev* %0, i64 %1, %struct.saa7146_pgtable* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.saa7146_pgtable*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.saa7146_pgtable* %2, %struct.saa7146_pgtable** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = add nsw i64 %11, %12
  %14 = sub nsw i64 %13, 1
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = sdiv i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i8* @vmalloc_32(i64 %18)
  store i8* %19, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* null, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %89

23:                                               ; preds = %3
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32* @vmalloc_to_sg(i8* %24, i32 %25)
  %27 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %28 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = icmp ne i32* %26, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %86

31:                                               ; preds = %23
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %34 = call i64 @saa7146_pgtable_alloc(%struct.pci_dev* %32, %struct.saa7146_pgtable* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %79

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %40 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %43 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %46 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %49 = call i32 @pci_map_sg(%struct.pci_dev* %41, i32* %44, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 0, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %75

53:                                               ; preds = %37
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %56 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %57 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @saa7146_pgtable_build_single(%struct.pci_dev* %54, %struct.saa7146_pgtable* %55, i32* %58, i32 %59)
  %61 = icmp ne i64 0, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %65

63:                                               ; preds = %53
  %64 = load i8*, i8** %9, align 8
  store i8* %64, i8** %4, align 8
  br label %90

65:                                               ; preds = %62
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %68 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %71 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %74 = call i32 @pci_unmap_sg(%struct.pci_dev* %66, i32* %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %52
  %76 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %77 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %78 = call i32 @saa7146_pgtable_free(%struct.pci_dev* %76, %struct.saa7146_pgtable* %77)
  br label %79

79:                                               ; preds = %75, %36
  %80 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %81 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @kfree(i32* %82)
  %84 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %7, align 8
  %85 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %79, %30
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @vfree(i8* %87)
  br label %89

89:                                               ; preds = %86, %22
  store i8* null, i8** %4, align 8
  br label %90

90:                                               ; preds = %89, %63
  %91 = load i8*, i8** %4, align 8
  ret i8* %91
}

declare dso_local i8* @vmalloc_32(i64) #1

declare dso_local i32* @vmalloc_to_sg(i8*, i32) #1

declare dso_local i64 @saa7146_pgtable_alloc(%struct.pci_dev*, %struct.saa7146_pgtable*) #1

declare dso_local i32 @pci_map_sg(%struct.pci_dev*, i32*, i32, i32) #1

declare dso_local i64 @saa7146_pgtable_build_single(%struct.pci_dev*, %struct.saa7146_pgtable*, i32*, i32) #1

declare dso_local i32 @pci_unmap_sg(%struct.pci_dev*, i32*, i32, i32) #1

declare dso_local i32 @saa7146_pgtable_free(%struct.pci_dev*, %struct.saa7146_pgtable*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
