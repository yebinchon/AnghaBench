; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_map_and_split_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_map_and_split_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.device = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i64*, i32, %struct.scatterlist***, i32**, i32, %struct.device*)* @sec_map_and_split_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_map_and_split_sg(%struct.scatterlist* %0, i64* %1, i32 %2, %struct.scatterlist*** %3, i32** %4, i32 %5, %struct.device* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist***, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.scatterlist*** %3, %struct.scatterlist**** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.device* %6, %struct.device** %15, align 8
  %18 = load %struct.device*, %struct.device** %15, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %22 = call i32 @dma_map_sg(%struct.device* %18, %struct.scatterlist* %19, i32 %20, i32 %21)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %85

28:                                               ; preds = %7
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kcalloc(i32 %29, i32 8, i32 %30)
  %32 = bitcast i8* %31 to %struct.scatterlist**
  %33 = load %struct.scatterlist***, %struct.scatterlist**** %12, align 8
  store %struct.scatterlist** %32, %struct.scatterlist*** %33, align 8
  %34 = load %struct.scatterlist***, %struct.scatterlist**** %12, align 8
  %35 = load %struct.scatterlist**, %struct.scatterlist*** %34, align 8
  %36 = icmp ne %struct.scatterlist** %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %16, align 4
  br label %78

40:                                               ; preds = %28
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kcalloc(i32 %41, i32 4, i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load i32**, i32*** %13, align 8
  store i32* %44, i32** %45, align 8
  %46 = load i32**, i32*** %13, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %16, align 4
  br label %73

52:                                               ; preds = %40
  %53 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i64*, i64** %10, align 8
  %57 = load %struct.scatterlist***, %struct.scatterlist**** %12, align 8
  %58 = load %struct.scatterlist**, %struct.scatterlist*** %57, align 8
  %59 = load i32**, i32*** %13, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @sg_split(%struct.scatterlist* %53, i32 %54, i32 0, i32 %55, i64* %56, %struct.scatterlist** %58, i32* %60, i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %16, align 4
  br label %69

68:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %85

69:                                               ; preds = %65
  %70 = load i32**, i32*** %13, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @kfree(i32* %71)
  br label %73

73:                                               ; preds = %69, %49
  %74 = load %struct.scatterlist***, %struct.scatterlist**** %12, align 8
  %75 = load %struct.scatterlist**, %struct.scatterlist*** %74, align 8
  %76 = bitcast %struct.scatterlist** %75 to i32*
  %77 = call i32 @kfree(i32* %76)
  br label %78

78:                                               ; preds = %73, %37
  %79 = load %struct.device*, %struct.device** %15, align 8
  %80 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %83 = call i32 @dma_unmap_sg(%struct.device* %79, %struct.scatterlist* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %78, %68, %25
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @dma_map_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sg_split(%struct.scatterlist*, i32, i32, i32, i64*, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
