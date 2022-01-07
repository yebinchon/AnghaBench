; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_dma_do_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_dma_do_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsldma_chan = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"tasklet entry\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"tasklet exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dma_do_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_do_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fsldma_chan*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.fsldma_chan*
  store %struct.fsldma_chan* %5, %struct.fsldma_chan** %3, align 8
  %6 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %7 = call i32 @chan_dbg(%struct.fsldma_chan* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %14 = call i32 @fsldma_cleanup_descriptors(%struct.fsldma_chan* %13)
  %15 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %15, i32 0, i32 1
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %19 = call i32 @chan_dbg(%struct.fsldma_chan* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @chan_dbg(%struct.fsldma_chan*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fsldma_cleanup_descriptors(%struct.fsldma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
