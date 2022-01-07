; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__alloc_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__alloc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_thread = type { i32, %struct.pl330_dmac* }
%struct.pl330_dmac = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl330_thread*)* @_alloc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_alloc_event(%struct.pl330_thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pl330_thread*, align 8
  %4 = alloca %struct.pl330_dmac*, align 8
  %5 = alloca i32, align 4
  store %struct.pl330_thread* %0, %struct.pl330_thread** %3, align 8
  %6 = load %struct.pl330_thread*, %struct.pl330_thread** %3, align 8
  %7 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %6, i32 0, i32 1
  %8 = load %struct.pl330_dmac*, %struct.pl330_dmac** %7, align 8
  store %struct.pl330_dmac* %8, %struct.pl330_dmac** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %37, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %12 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %9
  %17 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %18 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load %struct.pl330_thread*, %struct.pl330_thread** %3, align 8
  %27 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %30 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %41

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %9

40:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
