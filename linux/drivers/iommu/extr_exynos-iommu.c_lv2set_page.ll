; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_lv2set_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_lv2set_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPAGE_SIZE = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@dma_dev = common dso_local global i32 0, align 4
@SPAGES_PER_LPAGE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i32, i16*)* @lv2set_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lv2set_page(i32* %0, i32 %1, i64 %2, i32 %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i16* %4, i16** %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @SPAGE_SIZE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @lv2ent_fault(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EADDRINUSE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %105

28:                                               ; preds = %17
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @mk_lv2ent_spage(i32 %30, i32 %31)
  %33 = call i32 @update_pte(i32* %29, i32 %32)
  %34 = load i16*, i16** %11, align 8
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  %37 = sub nsw i32 %36, 1
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %34, align 2
  br label %104

39:                                               ; preds = %5
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @virt_to_phys(i32* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* @dma_dev, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @SPAGES_PER_LPAGE, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i32 @dma_sync_single_for_cpu(i32 %42, i32 %43, i32 %47, i32 %48)
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %84, %39
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @SPAGES_PER_LPAGE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @lv2ent_fault(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @WARN_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %54
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memset(i32* %70, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %65, %62
  %77 = load i32, i32* @EADDRINUSE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %105

79:                                               ; preds = %54
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @mk_lv2ent_lpage(i32 %80, i32 %81)
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %7, align 8
  br label %50

89:                                               ; preds = %50
  %90 = load i32, i32* @dma_dev, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @SPAGES_PER_LPAGE, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 4, %93
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @DMA_TO_DEVICE, align 4
  %97 = call i32 @dma_sync_single_for_device(i32 %90, i32 %91, i32 %95, i32 %96)
  %98 = load i32, i32* @SPAGES_PER_LPAGE, align 4
  %99 = load i16*, i16** %11, align 8
  %100 = load i16, i16* %99, align 2
  %101 = sext i16 %100 to i32
  %102 = sub nsw i32 %101, %98
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %99, align 2
  br label %104

104:                                              ; preds = %89, %28
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %76, %25
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @lv2ent_fault(i32*) #1

declare dso_local i32 @update_pte(i32*, i32) #1

declare dso_local i32 @mk_lv2ent_spage(i32, i32) #1

declare dso_local i32 @virt_to_phys(i32*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mk_lv2ent_lpage(i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
