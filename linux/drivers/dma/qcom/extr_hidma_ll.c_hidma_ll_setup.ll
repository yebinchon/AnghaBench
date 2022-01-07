; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i32, i32, i32, i64, i32, i64, i32, i64, i64, i64, i32 }

@HIDMA_EVCA_IRQ_EN_REG = common dso_local global i64 0, align 8
@HIDMA_EVCA_IRQ_STAT_REG = common dso_local global i64 0, align 8
@HIDMA_EVCA_IRQ_CLR_REG = common dso_local global i64 0, align 8
@HIDMA_TRCA_RING_LOW_REG = common dso_local global i64 0, align 8
@HIDMA_TRCA_RING_HIGH_REG = common dso_local global i64 0, align 8
@HIDMA_TRCA_RING_LEN_REG = common dso_local global i64 0, align 8
@HIDMA_EVCA_RING_LOW_REG = common dso_local global i64 0, align 8
@HIDMA_EVCA_RING_HIGH_REG = common dso_local global i64 0, align 8
@HIDMA_EVRE_SIZE = common dso_local global i32 0, align 4
@HIDMA_EVCA_RING_LEN_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidma_ll_setup(%struct.hidma_lldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %3, align 8
  %8 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %9 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %12 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %11, i32 0, i32 10
  %13 = call i32 @atomic_set(i32* %12, i32 0)
  %14 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %15 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %17 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %16, i32 0, i32 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %19 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %21 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HIDMA_EVCA_IRQ_EN_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %27 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HIDMA_EVCA_IRQ_STAT_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %34 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HIDMA_EVCA_IRQ_CLR_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %40 = call i32 @hidma_ll_reset(%struct.hidma_lldev* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %134

45:                                               ; preds = %1
  %46 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %47 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HIDMA_EVCA_IRQ_STAT_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %54 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HIDMA_EVCA_IRQ_CLR_REG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %60 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HIDMA_EVCA_IRQ_EN_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 0, i64 %63)
  %65 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %66 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @lower_32_bits(i32 %68)
  %70 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %71 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @HIDMA_TRCA_RING_LOW_REG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @upper_32_bits(i32 %76)
  %78 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %79 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HIDMA_TRCA_RING_HIGH_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %85 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %88 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @HIDMA_TRCA_RING_LEN_REG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %94 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @lower_32_bits(i32 %96)
  %98 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %99 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @HIDMA_EVCA_RING_LOW_REG, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @upper_32_bits(i32 %104)
  %106 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %107 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HIDMA_EVCA_RING_HIGH_REG, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  %112 = load i32, i32* @HIDMA_EVRE_SIZE, align 4
  %113 = load i32, i32* %7, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %116 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @HIDMA_EVCA_RING_LEN_REG, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  %121 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %122 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %123 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @hidma_ll_setup_irq(%struct.hidma_lldev* %121, i32 %124)
  %126 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %127 = call i32 @hidma_ll_enable(%struct.hidma_lldev* %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %45
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %134

132:                                              ; preds = %45
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %130, %43
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @hidma_ll_reset(%struct.hidma_lldev*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @hidma_ll_setup_irq(%struct.hidma_lldev*, i32) #1

declare dso_local i32 @hidma_ll_enable(%struct.hidma_lldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
