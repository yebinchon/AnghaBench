; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_clean_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_clean_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_chan = type { i32, %struct.edma_cc* }
%struct.edma_cc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"EMR%d %08x\0A\00", align 1
@EDMA_EMR = common dso_local global i32 0, align 4
@SH_ECR = common dso_local global i32 0, align 4
@EDMA_EMCR = common dso_local global i32 0, align 4
@SH_SECR = common dso_local global i32 0, align 4
@EDMA_CCERRCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edma_chan*)* @edma_clean_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_clean_channel(%struct.edma_chan* %0) #0 {
  %2 = alloca %struct.edma_chan*, align 8
  %3 = alloca %struct.edma_cc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.edma_chan* %0, %struct.edma_chan** %2, align 8
  %7 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %7, i32 0, i32 1
  %9 = load %struct.edma_cc*, %struct.edma_cc** %8, align 8
  store %struct.edma_cc* %9, %struct.edma_cc** %3, align 8
  %10 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @EDMA_CHAN_SLOT(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @EDMA_REG_ARRAY_INDEX(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @EDMA_CHANNEL_BIT(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %19 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %23 = load i32, i32* @EDMA_EMR, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @edma_read_array(%struct.edma_cc* %22, i32 %23, i32 %24)
  %26 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  %27 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %28 = load i32, i32* @SH_ECR, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @edma_shadow0_write_array(%struct.edma_cc* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %33 = load i32, i32* @EDMA_EMCR, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @edma_write_array(%struct.edma_cc* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %38 = load i32, i32* @SH_SECR, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @edma_shadow0_write_array(%struct.edma_cc* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %43 = load i32, i32* @EDMA_CCERRCLR, align 4
  %44 = call i32 @BIT(i32 16)
  %45 = call i32 @BIT(i32 1)
  %46 = or i32 %44, %45
  %47 = call i32 @BIT(i32 0)
  %48 = or i32 %46, %47
  %49 = call i32 @edma_write(%struct.edma_cc* %42, i32 %43, i32 %48)
  ret void
}

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @EDMA_REG_ARRAY_INDEX(i32) #1

declare dso_local i32 @EDMA_CHANNEL_BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @edma_read_array(%struct.edma_cc*, i32, i32) #1

declare dso_local i32 @edma_shadow0_write_array(%struct.edma_cc*, i32, i32, i32) #1

declare dso_local i32 @edma_write_array(%struct.edma_cc*, i32, i32, i32) #1

declare dso_local i32 @edma_write(%struct.edma_cc*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
