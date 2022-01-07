; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_setup_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_setup_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_chan = type { i32, %struct.edma_cc* }
%struct.edma_cc = type { i32 }

@SH_ICR = common dso_local global i32 0, align 4
@SH_IESR = common dso_local global i32 0, align 4
@SH_IECR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edma_chan*, i32)* @edma_setup_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_setup_interrupt(%struct.edma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.edma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.edma_cc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.edma_chan* %0, %struct.edma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %9, i32 0, i32 1
  %11 = load %struct.edma_cc*, %struct.edma_cc** %10, align 8
  store %struct.edma_cc* %11, %struct.edma_cc** %5, align 8
  %12 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @EDMA_CHAN_SLOT(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @EDMA_REG_ARRAY_INDEX(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @EDMA_CHANNEL_BIT(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %24 = load i32, i32* @SH_ICR, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @edma_shadow0_write_array(%struct.edma_cc* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %29 = load i32, i32* @SH_IESR, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @edma_shadow0_write_array(%struct.edma_cc* %28, i32 %29, i32 %30, i32 %31)
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %35 = load i32, i32* @SH_IECR, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @edma_shadow0_write_array(%struct.edma_cc* %34, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %22
  ret void
}

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @EDMA_REG_ARRAY_INDEX(i32) #1

declare dso_local i32 @EDMA_CHANNEL_BIT(i32) #1

declare dso_local i32 @edma_shadow0_write_array(%struct.edma_cc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
