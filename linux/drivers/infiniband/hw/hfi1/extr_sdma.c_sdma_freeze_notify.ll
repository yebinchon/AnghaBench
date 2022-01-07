; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_freeze_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_freeze_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32*, i32 }

@sdma_event_e85_link_down = common dso_local global i32 0, align 4
@sdma_event_e80_hw_freeze = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdma_freeze_notify(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @sdma_event_e85_link_down, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @sdma_event_e80_hw_freeze, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %6, align 4
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 2
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @atomic_set(i32* %16, i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %36, %13
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @sdma_process_event(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %21

39:                                               ; preds = %21
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sdma_process_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
