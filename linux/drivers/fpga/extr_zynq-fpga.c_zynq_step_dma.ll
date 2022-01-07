; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_zynq-fpga.c_zynq_step_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_zynq-fpga.c_zynq_step_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynq_fpga_priv = type { i64, i64, i32* }

@STATUS_OFFSET = common dso_local global i32 0, align 4
@STATUS_DMA_Q_F = common dso_local global i32 0, align 4
@DMA_SRC_LAST_TRANSFER = common dso_local global i32 0, align 4
@DMA_SRC_ADDR_OFFSET = common dso_local global i32 0, align 4
@DMA_DST_ADDR_OFFSET = common dso_local global i32 0, align 4
@DMA_INVALID_ADDRESS = common dso_local global i32 0, align 4
@DMA_SRC_LEN_OFFSET = common dso_local global i32 0, align 4
@DMA_DEST_LEN_OFFSET = common dso_local global i32 0, align 4
@IXR_DMA_DONE_MASK = common dso_local global i32 0, align 4
@IXR_ERROR_FLAGS_MASK = common dso_local global i32 0, align 4
@IXR_D_P_DONE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynq_fpga_priv*)* @zynq_step_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_step_dma(%struct.zynq_fpga_priv* %0) #0 {
  %2 = alloca %struct.zynq_fpga_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zynq_fpga_priv* %0, %struct.zynq_fpga_priv** %2, align 8
  %6 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %7 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %58, %1
  %12 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %13 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %75

16:                                               ; preds = %11
  %17 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %18 = load i32, i32* @STATUS_OFFSET, align 4
  %19 = call i32 @zynq_fpga_read(%struct.zynq_fpga_priv* %17, i32 %18)
  %20 = load i32, i32* @STATUS_DMA_Q_F, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %75

24:                                               ; preds = %16
  %25 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %26 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @sg_dma_address(i32* %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %30 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @sg_dma_len(i32* %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %34 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %38 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load i32, i32* @DMA_SRC_LAST_TRANSFER, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %46 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  br label %58

47:                                               ; preds = %24
  %48 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %49 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32* @sg_next(i32* %50)
  %52 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %53 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %55 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %47, %41
  %59 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %60 = load i32, i32* @DMA_SRC_ADDR_OFFSET, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @zynq_fpga_write(%struct.zynq_fpga_priv* %59, i32 %60, i32 %61)
  %63 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %64 = load i32, i32* @DMA_DST_ADDR_OFFSET, align 4
  %65 = load i32, i32* @DMA_INVALID_ADDRESS, align 4
  %66 = call i32 @zynq_fpga_write(%struct.zynq_fpga_priv* %63, i32 %64, i32 %65)
  %67 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %68 = load i32, i32* @DMA_SRC_LEN_OFFSET, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sdiv i32 %69, 4
  %71 = call i32 @zynq_fpga_write(%struct.zynq_fpga_priv* %67, i32 %68, i32 %70)
  %72 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %73 = load i32, i32* @DMA_DEST_LEN_OFFSET, align 4
  %74 = call i32 @zynq_fpga_write(%struct.zynq_fpga_priv* %72, i32 %73, i32 0)
  br label %11

75:                                               ; preds = %23, %11
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %80 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %85 = load i32, i32* @IXR_DMA_DONE_MASK, align 4
  %86 = load i32, i32* @IXR_ERROR_FLAGS_MASK, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @zynq_fpga_set_irq(%struct.zynq_fpga_priv* %84, i32 %87)
  br label %101

89:                                               ; preds = %78, %75
  %90 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %91 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %2, align 8
  %96 = load i32, i32* @IXR_D_P_DONE_MASK, align 4
  %97 = load i32, i32* @IXR_ERROR_FLAGS_MASK, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @zynq_fpga_set_irq(%struct.zynq_fpga_priv* %95, i32 %98)
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %83
  ret void
}

declare dso_local i32 @zynq_fpga_read(%struct.zynq_fpga_priv*, i32) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i32 @sg_dma_len(i32*) #1

declare dso_local i32* @sg_next(i32*) #1

declare dso_local i32 @zynq_fpga_write(%struct.zynq_fpga_priv*, i32, i32) #1

declare dso_local i32 @zynq_fpga_set_irq(%struct.zynq_fpga_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
