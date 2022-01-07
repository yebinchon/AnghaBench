; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_desc_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_desc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timb_dma_chan = type { i32, i32, i32 }
%struct.timb_dma_desc = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Putting desc: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timb_dma_chan*, %struct.timb_dma_desc*)* @td_desc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @td_desc_put(%struct.timb_dma_chan* %0, %struct.timb_dma_desc* %1) #0 {
  %3 = alloca %struct.timb_dma_chan*, align 8
  %4 = alloca %struct.timb_dma_desc*, align 8
  store %struct.timb_dma_chan* %0, %struct.timb_dma_chan** %3, align 8
  store %struct.timb_dma_desc* %1, %struct.timb_dma_desc** %4, align 8
  %5 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %3, align 8
  %6 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %5, i32 0, i32 2
  %7 = call i32 @chan2dev(i32* %6)
  %8 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %4, align 8
  %9 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.timb_dma_desc* %8)
  %10 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.timb_dma_desc*, %struct.timb_dma_desc** %4, align 8
  %14 = getelementptr inbounds %struct.timb_dma_desc, %struct.timb_dma_desc* %13, i32 0, i32 0
  %15 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %15, i32 0, i32 1
  %17 = call i32 @list_add(i32* %14, i32* %16)
  %18 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, %struct.timb_dma_desc*) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
