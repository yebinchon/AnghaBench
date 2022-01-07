; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_check_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_check_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_chan = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"ppc440spe adma%d: pending: %d\0A\00", align 1
@PPC440SPE_ADMA_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_chan*)* @ppc440spe_adma_check_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_adma_check_threshold(%struct.ppc440spe_adma_chan* %0) #0 {
  %2 = alloca %struct.ppc440spe_adma_chan*, align 8
  store %struct.ppc440spe_adma_chan* %0, %struct.ppc440spe_adma_chan** %2, align 8
  %3 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %2, align 8
  %15 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  %18 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PPC440SPE_ADMA_THRESHOLD, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %2, align 8
  %25 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %2, align 8
  %27 = call i32 @ppc440spe_chan_append(%struct.ppc440spe_adma_chan* %26)
  br label %28

28:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @ppc440spe_chan_append(%struct.ppc440spe_adma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
