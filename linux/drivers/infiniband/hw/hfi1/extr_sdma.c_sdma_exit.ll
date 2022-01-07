; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, %struct.sdma_engine* }
%struct.sdma_engine = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"sde %u: dmawait list not empty!\0A\00", align 1
@sdma_event_e00_go_hw_down = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdma_exit(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdma_engine*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %45, %1
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %6, i32 0, i32 1
  %8 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %9 = icmp ne %struct.sdma_engine* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i1 [ false, %5 ], [ %15, %10 ]
  br i1 %17, label %18, label %48

18:                                               ; preds = %16
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %20 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %19, i32 0, i32 1
  %21 = load %struct.sdma_engine*, %struct.sdma_engine** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %21, i64 %23
  store %struct.sdma_engine* %24, %struct.sdma_engine** %4, align 8
  %25 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %26 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %25, i32 0, i32 3
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %18
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %31 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %32 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dd_dev_err(%struct.hfi1_devdata* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %18
  %36 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %37 = load i32, i32* @sdma_event_e00_go_hw_down, align 4
  %38 = call i32 @sdma_process_event(%struct.sdma_engine* %36, i32 %37)
  %39 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %40 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %39, i32 0, i32 1
  %41 = call i32 @del_timer_sync(i32* %40)
  %42 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %43 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %42, i32 0, i32 0
  %44 = call i32 @sdma_finalput(i32* %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %5

48:                                               ; preds = %16
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @sdma_process_event(%struct.sdma_engine*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @sdma_finalput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
