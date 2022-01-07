; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_v2_device = type { i32, i64 }

@MV_XOR_V2_DMA_DESQ_DONE_OFF = common dso_local global i64 0, align 8
@MV_XOR_V2_DMA_DESQ_DONE_PENDING_SHIFT = common dso_local global i32 0, align 4
@MV_XOR_V2_DMA_DESQ_DONE_PENDING_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mv_xor_v2_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_v2_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mv_xor_v2_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mv_xor_v2_device*
  store %struct.mv_xor_v2_device* %10, %struct.mv_xor_v2_device** %6, align 8
  %11 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %6, align 8
  %12 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MV_XOR_V2_DMA_DESQ_DONE_OFF, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @MV_XOR_V2_DMA_DESQ_DONE_PENDING_SHIFT, align 4
  %19 = lshr i32 %17, %18
  %20 = load i32, i32* @MV_XOR_V2_DMA_DESQ_DONE_PENDING_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %6, align 8
  %28 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %27, i32 0, i32 0
  %29 = call i32 @tasklet_schedule(i32* %28)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
