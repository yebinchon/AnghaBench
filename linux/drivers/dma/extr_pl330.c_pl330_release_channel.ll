; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_release_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_release_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_thread = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PL330_ERR_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl330_thread*)* @pl330_release_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl330_release_channel(%struct.pl330_thread* %0) #0 {
  %2 = alloca %struct.pl330_thread*, align 8
  store %struct.pl330_thread* %0, %struct.pl330_thread** %2, align 8
  %3 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %4 = icmp ne %struct.pl330_thread* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %7 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %1
  br label %46

11:                                               ; preds = %5
  %12 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %13 = call i32 @_stop(%struct.pl330_thread* %12)
  %14 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %15 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %18 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PL330_ERR_ABORT, align 4
  %26 = call i32 @dma_pl330_rqcb(i32 %24, i32 %25)
  %27 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %28 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %31 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PL330_ERR_ABORT, align 4
  %38 = call i32 @dma_pl330_rqcb(i32 %36, i32 %37)
  %39 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %40 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %41 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @_free_event(%struct.pl330_thread* %39, i32 %42)
  %44 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  %45 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @_stop(%struct.pl330_thread*) #1

declare dso_local i32 @dma_pl330_rqcb(i32, i32) #1

declare dso_local i32 @_free_event(%struct.pl330_thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
