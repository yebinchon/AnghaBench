; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_dmac_free_threads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_dmac_free_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_dmac = type { %struct.pl330_thread*, %struct.TYPE_2__ }
%struct.pl330_thread = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl330_dmac*)* @dmac_free_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmac_free_threads(%struct.pl330_dmac* %0) #0 {
  %2 = alloca %struct.pl330_dmac*, align 8
  %3 = alloca %struct.pl330_thread*, align 8
  %4 = alloca i32, align 4
  store %struct.pl330_dmac* %0, %struct.pl330_dmac** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.pl330_dmac*, %struct.pl330_dmac** %2, align 8
  %8 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %5
  %13 = load %struct.pl330_dmac*, %struct.pl330_dmac** %2, align 8
  %14 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %13, i32 0, i32 0
  %15 = load %struct.pl330_thread*, %struct.pl330_thread** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %15, i64 %17
  store %struct.pl330_thread* %18, %struct.pl330_thread** %3, align 8
  %19 = load %struct.pl330_thread*, %struct.pl330_thread** %3, align 8
  %20 = call i32 @pl330_release_channel(%struct.pl330_thread* %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %5

24:                                               ; preds = %5
  %25 = load %struct.pl330_dmac*, %struct.pl330_dmac** %2, align 8
  %26 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %25, i32 0, i32 0
  %27 = load %struct.pl330_thread*, %struct.pl330_thread** %26, align 8
  %28 = call i32 @kfree(%struct.pl330_thread* %27)
  ret i32 0
}

declare dso_local i32 @pl330_release_channel(%struct.pl330_thread*) #1

declare dso_local i32 @kfree(%struct.pl330_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
