; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_rx_list_sg_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_rx_list_sg_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i64, i32, i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@D64_CTRL1_EOT = common dso_local global i64 0, align 8
@PDC_DMA_BUF_MAX = common dso_local global i64 0, align 8
@PDC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdc_state*, %struct.scatterlist*)* @pdc_rx_list_sg_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_rx_list_sg_add(%struct.pdc_state* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pdc_state*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pdc_state* %0, %struct.pdc_state** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %13 = call i64 @sg_nents(%struct.scatterlist* %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %15 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %18 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %21 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %24 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @NRXDACTIVE(i32 %19, i32 %22, i64 %25)
  %27 = sub nsw i64 %16, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %36 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %125

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %100, %41
  %43 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %44 = icmp ne %struct.scatterlist* %43, null
  br i1 %44, label %45, label %110

45:                                               ; preds = %42
  %46 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %47 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %50 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %48, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i64, i64* @D64_CTRL1_EOT, align 8
  store i64 %58, i64* %6, align 8
  br label %60

59:                                               ; preds = %45
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %59, %57
  %61 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %62 = call i64 @sg_dma_len(%struct.scatterlist* %61)
  store i64 %62, i64* %10, align 8
  %63 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %64 = call i32 @sg_dma_address(%struct.scatterlist* %63)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %99, %60
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @PDC_DMA_BUF_MAX, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %65
  %70 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i64, i64* @PDC_DMA_BUF_MAX, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @pdc_build_rxd(%struct.pdc_state* %70, i32 %71, i64 %72, i64 %73)
  %75 = load i64, i64* %9, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* @PDC_DMA_BUF_MAX, align 8
  %78 = load i64, i64* %10, align 8
  %79 = sub nsw i64 %78, %77
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* @PDC_DMA_BUF_MAX, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %11, align 4
  %85 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %86 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %89 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp eq i32 %87, %91
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %69
  %97 = load i64, i64* @D64_CTRL1_EOT, align 8
  store i64 %97, i64* %6, align 8
  br label %99

98:                                               ; preds = %69
  store i64 0, i64* %6, align 8
  br label %99

99:                                               ; preds = %98, %96
  br label %65

100:                                              ; preds = %65
  %101 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @pdc_build_rxd(%struct.pdc_state* %101, i32 %102, i64 %103, i64 %104)
  %106 = load i64, i64* %9, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %9, align 8
  %108 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %109 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %108)
  store %struct.scatterlist* %109, %struct.scatterlist** %5, align 8
  br label %42

110:                                              ; preds = %42
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %113 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %112, i32 0, i32 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %116 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %111
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  %124 = load i32, i32* @PDC_SUCCESS, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %110, %34
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @sg_nents(%struct.scatterlist*) #1

declare dso_local i64 @NRXDACTIVE(i32, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @pdc_build_rxd(%struct.pdc_state*, i32, i64, i64) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
