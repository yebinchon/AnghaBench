; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_dmac = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@UNINIT = common dso_local global i32 0, align 4
@DMA_ATTR_PRIVILEGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl330_dmac*)* @pl330_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl330_del(%struct.pl330_dmac* %0) #0 {
  %2 = alloca %struct.pl330_dmac*, align 8
  store %struct.pl330_dmac* %0, %struct.pl330_dmac** %2, align 8
  %3 = load i32, i32* @UNINIT, align 4
  %4 = load %struct.pl330_dmac*, %struct.pl330_dmac** %2, align 8
  %5 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %4, i32 0, i32 6
  store i32 %3, i32* %5, align 4
  %6 = load %struct.pl330_dmac*, %struct.pl330_dmac** %2, align 8
  %7 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %6, i32 0, i32 5
  %8 = call i32 @tasklet_kill(i32* %7)
  %9 = load %struct.pl330_dmac*, %struct.pl330_dmac** %2, align 8
  %10 = call i32 @dmac_free_threads(%struct.pl330_dmac* %9)
  %11 = load %struct.pl330_dmac*, %struct.pl330_dmac** %2, align 8
  %12 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pl330_dmac*, %struct.pl330_dmac** %2, align 8
  %16 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pl330_dmac*, %struct.pl330_dmac** %2, align 8
  %20 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = load %struct.pl330_dmac*, %struct.pl330_dmac** %2, align 8
  %24 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pl330_dmac*, %struct.pl330_dmac** %2, align 8
  %27 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMA_ATTR_PRIVILEGED, align 4
  %30 = call i32 @dma_free_attrs(i32 %14, i32 %22, i32 %25, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dmac_free_threads(%struct.pl330_dmac*) #1

declare dso_local i32 @dma_free_attrs(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
