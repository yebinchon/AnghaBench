; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_dma_tc_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_dma_tc_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coh901318_chan = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"spurious interrupt from unallocated channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coh901318_chan*)* @dma_tc_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_tc_handle(%struct.coh901318_chan* %0) #0 {
  %2 = alloca %struct.coh901318_chan*, align 8
  store %struct.coh901318_chan* %0, %struct.coh901318_chan** %2, align 8
  %3 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %4 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %9 = call i32 @COHC_2_DEV(%struct.coh901318_chan* %8)
  %10 = call i32 @dev_err(i32 %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %13 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %16 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %15, i32 0, i32 4
  %17 = call i32 @list_empty(i32* %16)
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %20 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %24 = call i32* @coh901318_queue_start(%struct.coh901318_chan* %23)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %28 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %11
  %30 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %31 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %34 = call %struct.TYPE_2__* @cohc_chan_conf(%struct.coh901318_chan* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %40 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %39, i32 0, i32 0
  %41 = call i32 @tasklet_hi_schedule(i32* %40)
  br label %46

42:                                               ; preds = %29
  %43 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %44 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %43, i32 0, i32 0
  %45 = call i32 @tasklet_schedule(i32* %44)
  br label %46

46:                                               ; preds = %7, %42, %38
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @COHC_2_DEV(%struct.coh901318_chan*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32* @coh901318_queue_start(%struct.coh901318_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.TYPE_2__* @cohc_chan_conf(%struct.coh901318_chan*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
