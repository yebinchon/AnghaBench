; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_queue_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_desc = type { i32 }
%struct.d40_chan = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.d40_desc* (%struct.d40_chan*)* @d40_queue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.d40_desc* @d40_queue_start(%struct.d40_chan* %0) #0 {
  %2 = alloca %struct.d40_desc*, align 8
  %3 = alloca %struct.d40_chan*, align 8
  %4 = alloca %struct.d40_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %3, align 8
  %6 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %7 = call %struct.d40_desc* @d40_first_queued(%struct.d40_chan* %6)
  store %struct.d40_desc* %7, %struct.d40_desc** %4, align 8
  %8 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %9 = icmp ne %struct.d40_desc* %8, null
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %12 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %17 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %19 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_get_sync(i32 %22)
  br label %24

24:                                               ; preds = %15, %10
  %25 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %26 = call i32 @d40_desc_remove(%struct.d40_desc* %25)
  %27 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %28 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %29 = call i32 @d40_desc_submit(%struct.d40_chan* %27, %struct.d40_desc* %28)
  %30 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %31 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %32 = call i32 @d40_desc_load(%struct.d40_chan* %30, %struct.d40_desc* %31)
  %33 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %34 = call i32 @d40_start(%struct.d40_chan* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store %struct.d40_desc* null, %struct.d40_desc** %2, align 8
  br label %41

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  store %struct.d40_desc* %40, %struct.d40_desc** %2, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = load %struct.d40_desc*, %struct.d40_desc** %2, align 8
  ret %struct.d40_desc* %42
}

declare dso_local %struct.d40_desc* @d40_first_queued(%struct.d40_chan*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @d40_desc_remove(%struct.d40_desc*) #1

declare dso_local i32 @d40_desc_submit(%struct.d40_chan*, %struct.d40_desc*) #1

declare dso_local i32 @d40_desc_load(%struct.d40_chan*, %struct.d40_desc*) #1

declare dso_local i32 @d40_start(%struct.d40_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
