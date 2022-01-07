; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_base_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_base_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_device = type { i32 }
%struct.coh901318_base = type { %struct.coh901318_chan* }
%struct.coh901318_chan = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i64, i64, i32, %struct.coh901318_base* }
%struct.TYPE_2__ = type { i32, %struct.dma_device* }

@dma_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_device*, i32*, %struct.coh901318_base*)* @coh901318_base_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coh901318_base_init(%struct.dma_device* %0, i32* %1, %struct.coh901318_base* %2) #0 {
  %4 = alloca %struct.dma_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.coh901318_base*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.coh901318_chan*, align 8
  store %struct.dma_device* %0, %struct.dma_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.coh901318_base* %2, %struct.coh901318_base** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %11 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %10, i32 0, i32 0
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %84, %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %87

20:                                               ; preds = %13
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %80, %20
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %27, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %26
  %36 = load %struct.coh901318_base*, %struct.coh901318_base** %6, align 8
  %37 = getelementptr inbounds %struct.coh901318_base, %struct.coh901318_base* %36, i32 0, i32 0
  %38 = load %struct.coh901318_chan*, %struct.coh901318_chan** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %38, i64 %40
  store %struct.coh901318_chan* %41, %struct.coh901318_chan** %9, align 8
  %42 = load %struct.coh901318_base*, %struct.coh901318_base** %6, align 8
  %43 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %44 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %43, i32 0, i32 9
  store %struct.coh901318_base* %42, %struct.coh901318_base** %44, align 8
  %45 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %46 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %47 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store %struct.dma_device* %45, %struct.dma_device** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %51 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %53 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %52, i32 0, i32 8
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %56 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %58 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %60 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %59, i32 0, i32 5
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %63 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %62, i32 0, i32 4
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %66 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %65, i32 0, i32 3
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %69 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %68, i32 0, i32 2
  %70 = load i32, i32* @dma_tasklet, align 4
  %71 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %72 = ptrtoint %struct.coh901318_chan* %71 to i64
  %73 = call i32 @tasklet_init(i32* %69, i32 %70, i64 %72)
  %74 = load %struct.coh901318_chan*, %struct.coh901318_chan** %9, align 8
  %75 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %78 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %77, i32 0, i32 0
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  br label %80

80:                                               ; preds = %35
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %26

83:                                               ; preds = %26
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %7, align 4
  br label %13

87:                                               ; preds = %13
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
