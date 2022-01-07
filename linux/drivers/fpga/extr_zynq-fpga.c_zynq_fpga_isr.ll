; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_zynq-fpga.c_zynq_fpga_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_zynq-fpga.c_zynq_fpga_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynq_fpga_priv = type { i32, i32, i64 }

@INT_STS_OFFSET = common dso_local global i32 0, align 4
@IXR_ERROR_FLAGS_MASK = common dso_local global i32 0, align 4
@IXR_DMA_DONE_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zynq_fpga_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_fpga_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zynq_fpga_priv*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.zynq_fpga_priv*
  store %struct.zynq_fpga_priv* %9, %struct.zynq_fpga_priv** %6, align 8
  %10 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %11 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %14 = load i32, i32* @INT_STS_OFFSET, align 4
  %15 = call i32 @zynq_fpga_read(%struct.zynq_fpga_priv* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IXR_ERROR_FLAGS_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @IXR_DMA_DONE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %27 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %32 = load i32, i32* @INT_STS_OFFSET, align 4
  %33 = load i32, i32* @IXR_DMA_DONE_MASK, align 4
  %34 = call i32 @zynq_fpga_write(%struct.zynq_fpga_priv* %31, i32 %32, i32 %33)
  %35 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %36 = call i32 @zynq_step_dma(%struct.zynq_fpga_priv* %35)
  %37 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %38 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %51

41:                                               ; preds = %25, %20, %2
  %42 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %43 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %46 = call i32 @zynq_fpga_set_irq(%struct.zynq_fpga_priv* %45, i32 0)
  %47 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %6, align 8
  %48 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %47, i32 0, i32 0
  %49 = call i32 @complete(i32* %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %41, %30
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @zynq_fpga_read(%struct.zynq_fpga_priv*, i32) #1

declare dso_local i32 @zynq_fpga_write(%struct.zynq_fpga_priv*, i32, i32) #1

declare dso_local i32 @zynq_step_dma(%struct.zynq_fpga_priv*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @zynq_fpga_set_irq(%struct.zynq_fpga_priv*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
