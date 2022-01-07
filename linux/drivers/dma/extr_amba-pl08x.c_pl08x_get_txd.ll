; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_get_txd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_get_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_txd = type { i32 }
%struct.pl08x_dma_chan = type { i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pl08x_txd* (%struct.pl08x_dma_chan*)* @pl08x_get_txd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pl08x_txd* @pl08x_get_txd(%struct.pl08x_dma_chan* %0) #0 {
  %2 = alloca %struct.pl08x_dma_chan*, align 8
  %3 = alloca %struct.pl08x_txd*, align 8
  store %struct.pl08x_dma_chan* %0, %struct.pl08x_dma_chan** %2, align 8
  %4 = load i32, i32* @GFP_NOWAIT, align 4
  %5 = call %struct.pl08x_txd* @kzalloc(i32 4, i32 %4)
  store %struct.pl08x_txd* %5, %struct.pl08x_txd** %3, align 8
  %6 = load %struct.pl08x_txd*, %struct.pl08x_txd** %3, align 8
  %7 = icmp ne %struct.pl08x_txd* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.pl08x_txd*, %struct.pl08x_txd** %3, align 8
  %10 = getelementptr inbounds %struct.pl08x_txd, %struct.pl08x_txd* %9, i32 0, i32 0
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.pl08x_txd*, %struct.pl08x_txd** %3, align 8
  ret %struct.pl08x_txd* %13
}

declare dso_local %struct.pl08x_txd* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
