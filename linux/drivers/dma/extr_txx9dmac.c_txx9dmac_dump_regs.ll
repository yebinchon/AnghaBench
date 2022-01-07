; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9dmac_chan = type { i32 }

@.str = private unnamed_addr constant [85 x i8] c"  CHAR: %#llx SAR: %#llx DAR: %#llx CNTR: %#x SAIR: %#x DAIR: %#x CCR: %#x CSR: %#x\0A\00", align 1
@SAR = common dso_local global i32 0, align 4
@DAR = common dso_local global i32 0, align 4
@CNTR = common dso_local global i32 0, align 4
@SAIR = common dso_local global i32 0, align 4
@DAIR = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@CSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"  CHAR: %#x SAR: %#x DAR: %#x CNTR: %#x SAIR: %#x DAIR: %#x CCR: %#x CSR: %#x\0A\00", align 1
@CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txx9dmac_chan*)* @txx9dmac_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9dmac_dump_regs(%struct.txx9dmac_chan* %0) #0 {
  %2 = alloca %struct.txx9dmac_chan*, align 8
  store %struct.txx9dmac_chan* %0, %struct.txx9dmac_chan** %2, align 8
  %3 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %4 = call i64 @is_dmac64(%struct.txx9dmac_chan* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %8 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %7, i32 0, i32 0
  %9 = call i32 @chan2dev(i32* %8)
  %10 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %11 = call i64 @channel64_read_CHAR(%struct.txx9dmac_chan* %10)
  %12 = trunc i64 %11 to i32
  %13 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %14 = load i32, i32* @SAR, align 4
  %15 = call i32 @channel64_readq(%struct.txx9dmac_chan* %13, i32 %14)
  %16 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %17 = load i32, i32* @DAR, align 4
  %18 = call i32 @channel64_readq(%struct.txx9dmac_chan* %16, i32 %17)
  %19 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %20 = load i32, i32* @CNTR, align 4
  %21 = call i32 @channel64_readl(%struct.txx9dmac_chan* %19, i32 %20)
  %22 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %23 = load i32, i32* @SAIR, align 4
  %24 = call i32 @channel64_readl(%struct.txx9dmac_chan* %22, i32 %23)
  %25 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %26 = load i32, i32* @DAIR, align 4
  %27 = call i32 @channel64_readl(%struct.txx9dmac_chan* %25, i32 %26)
  %28 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %29 = load i32, i32* @CCR, align 4
  %30 = call i32 @channel64_readl(%struct.txx9dmac_chan* %28, i32 %29)
  %31 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %32 = load i32, i32* @CSR, align 4
  %33 = call i32 @channel64_readl(%struct.txx9dmac_chan* %31, i32 %32)
  %34 = call i32 @dev_err(i32 %9, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  br label %64

35:                                               ; preds = %1
  %36 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %37 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %36, i32 0, i32 0
  %38 = call i32 @chan2dev(i32* %37)
  %39 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %40 = load i32, i32* @CHAR, align 4
  %41 = call i32 @channel32_readl(%struct.txx9dmac_chan* %39, i32 %40)
  %42 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %43 = load i32, i32* @SAR, align 4
  %44 = call i32 @channel32_readl(%struct.txx9dmac_chan* %42, i32 %43)
  %45 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %46 = load i32, i32* @DAR, align 4
  %47 = call i32 @channel32_readl(%struct.txx9dmac_chan* %45, i32 %46)
  %48 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %49 = load i32, i32* @CNTR, align 4
  %50 = call i32 @channel32_readl(%struct.txx9dmac_chan* %48, i32 %49)
  %51 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %52 = load i32, i32* @SAIR, align 4
  %53 = call i32 @channel32_readl(%struct.txx9dmac_chan* %51, i32 %52)
  %54 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %55 = load i32, i32* @DAIR, align 4
  %56 = call i32 @channel32_readl(%struct.txx9dmac_chan* %54, i32 %55)
  %57 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %58 = load i32, i32* @CCR, align 4
  %59 = call i32 @channel32_readl(%struct.txx9dmac_chan* %57, i32 %58)
  %60 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %61 = load i32, i32* @CSR, align 4
  %62 = call i32 @channel32_readl(%struct.txx9dmac_chan* %60, i32 %61)
  %63 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %35, %6
  ret void
}

declare dso_local i64 @is_dmac64(%struct.txx9dmac_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i64 @channel64_read_CHAR(%struct.txx9dmac_chan*) #1

declare dso_local i32 @channel64_readq(%struct.txx9dmac_chan*, i32) #1

declare dso_local i32 @channel64_readl(%struct.txx9dmac_chan*, i32) #1

declare dso_local i32 @channel32_readl(%struct.txx9dmac_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
