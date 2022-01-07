; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsl_dma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsldma.c_fsl_dma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.fsldma_chan = type { i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"free all channel resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @fsl_dma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_dma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.fsldma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %4 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %5 = call %struct.fsldma_chan* @to_fsl_chan(%struct.dma_chan* %4)
  store %struct.fsldma_chan* %5, %struct.fsldma_chan** %3, align 8
  %6 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %7 = call i32 @chan_dbg(%struct.fsldma_chan* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %12 = call i32 @fsldma_cleanup_descriptors(%struct.fsldma_chan* %11)
  %13 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %14 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %14, i32 0, i32 4
  %16 = call i32 @fsldma_free_desc_list(%struct.fsldma_chan* %13, i32* %15)
  %17 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %18 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %18, i32 0, i32 3
  %20 = call i32 @fsldma_free_desc_list(%struct.fsldma_chan* %17, i32* %19)
  %21 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %22 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %22, i32 0, i32 2
  %24 = call i32 @fsldma_free_desc_list(%struct.fsldma_chan* %21, i32* %23)
  %25 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock_bh(i32* %26)
  %28 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @dma_pool_destroy(i32* %30)
  %32 = load %struct.fsldma_chan*, %struct.fsldma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.fsldma_chan, %struct.fsldma_chan* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  ret void
}

declare dso_local %struct.fsldma_chan* @to_fsl_chan(%struct.dma_chan*) #1

declare dso_local i32 @chan_dbg(%struct.fsldma_chan*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fsldma_cleanup_descriptors(%struct.fsldma_chan*) #1

declare dso_local i32 @fsldma_free_desc_list(%struct.fsldma_chan*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
