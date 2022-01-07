; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_chan = type { i32, i32, %struct.edma_cc* }
%struct.edma_cc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ESR%d %08x\0A\00", align 1
@SH_ESR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ER%d %08x\0A\00", align 1
@SH_ER = common dso_local global i32 0, align 4
@EDMA_ECR = common dso_local global i32 0, align 4
@EDMA_EMCR = common dso_local global i32 0, align 4
@SH_SECR = common dso_local global i32 0, align 4
@SH_EESR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"EER%d %08x\0A\00", align 1
@SH_EER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edma_chan*)* @edma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_start(%struct.edma_chan* %0) #0 {
  %2 = alloca %struct.edma_chan*, align 8
  %3 = alloca %struct.edma_cc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.edma_chan* %0, %struct.edma_chan** %2, align 8
  %7 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %7, i32 0, i32 2
  %9 = load %struct.edma_cc*, %struct.edma_cc** %8, align 8
  store %struct.edma_cc* %9, %struct.edma_cc** %3, align 8
  %10 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @EDMA_CHAN_SLOT(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @EDMA_REG_ARRAY_INDEX(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @EDMA_CHANNEL_BIT(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %1
  %23 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %24 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %28 = load i32, i32* @SH_ESR, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @edma_shadow0_read_array(%struct.edma_cc* %27, i32 %28, i32 %29)
  %31 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30)
  %32 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %33 = load i32, i32* @SH_ESR, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @edma_shadow0_write_array(%struct.edma_cc* %32, i32 %33, i32 %34, i32 %35)
  br label %76

37:                                               ; preds = %1
  %38 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %39 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %43 = load i32, i32* @SH_ER, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @edma_shadow0_read_array(%struct.edma_cc* %42, i32 %43, i32 %44)
  %46 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %45)
  %47 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %48 = load i32, i32* @EDMA_ECR, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @edma_write_array(%struct.edma_cc* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %53 = load i32, i32* @EDMA_EMCR, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @edma_write_array(%struct.edma_cc* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %58 = load i32, i32* @SH_SECR, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @edma_shadow0_write_array(%struct.edma_cc* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %63 = load i32, i32* @SH_EESR, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @edma_shadow0_write_array(%struct.edma_cc* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %68 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %72 = load i32, i32* @SH_EER, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @edma_shadow0_read_array(%struct.edma_cc* %71, i32 %72, i32 %73)
  %75 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %37, %22
  ret void
}

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @EDMA_REG_ARRAY_INDEX(i32) #1

declare dso_local i32 @EDMA_CHANNEL_BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @edma_shadow0_read_array(%struct.edma_cc*, i32, i32) #1

declare dso_local i32 @edma_shadow0_write_array(%struct.edma_cc*, i32, i32, i32) #1

declare dso_local i32 @edma_write_array(%struct.edma_cc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
