; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_pci.c_drm_pci_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_pci.c_drm_pci_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, i32 }
%struct.drm_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @drm_pci_alloc(%struct.drm_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %68

15:                                               ; preds = %3
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_7__* @kmalloc(i32 24, i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %68

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load i32, i32* @__GFP_COMP, align 4
  %34 = or i32 %32, %33
  %35 = call i32* @dma_alloc_coherent(i32* %28, i64 %29, i32* %31, i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %21
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = call i32 @kfree(%struct.TYPE_7__* %43)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %68

45:                                               ; preds = %21
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = ptrtoint i32* %48 to i64
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %6, align 8
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %59, %45
  %52 = load i64, i64* %10, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @virt_to_page(i8* %56)
  %58 = call i32 @SetPageReserved(i32 %57)
  br label %59

59:                                               ; preds = %54
  %60 = load i64, i64* @PAGE_SIZE, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %10, align 8
  br label %51

66:                                               ; preds = %51
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %4, align 8
  br label %68

68:                                               ; preds = %66, %42, %20, %14
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %69
}

declare dso_local %struct.TYPE_7__* @kmalloc(i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i32 @SetPageReserved(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
