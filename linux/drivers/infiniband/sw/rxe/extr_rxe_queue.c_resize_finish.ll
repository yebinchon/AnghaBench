; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_queue.c_resize_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_queue.c_resize_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_queue*, %struct.rxe_queue*, i32)* @resize_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize_finish(%struct.rxe_queue* %0, %struct.rxe_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_queue*, align 8
  %6 = alloca %struct.rxe_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.rxe_queue* %0, %struct.rxe_queue** %5, align 8
  store %struct.rxe_queue* %1, %struct.rxe_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.rxe_queue*, %struct.rxe_queue** %5, align 8
  %9 = call i32 @queue_empty(%struct.rxe_queue* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.rxe_queue*, %struct.rxe_queue** %5, align 8
  %14 = call i32 @queue_count(%struct.rxe_queue* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %46

19:                                               ; preds = %11, %3
  br label %20

20:                                               ; preds = %25, %19
  %21 = load %struct.rxe_queue*, %struct.rxe_queue** %5, align 8
  %22 = call i32 @queue_empty(%struct.rxe_queue* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.rxe_queue*, %struct.rxe_queue** %6, align 8
  %27 = call i32 @producer_addr(%struct.rxe_queue* %26)
  %28 = load %struct.rxe_queue*, %struct.rxe_queue** %5, align 8
  %29 = call i32 @consumer_addr(%struct.rxe_queue* %28)
  %30 = load %struct.rxe_queue*, %struct.rxe_queue** %6, align 8
  %31 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32 %27, i32 %29, i32 %32)
  %34 = load %struct.rxe_queue*, %struct.rxe_queue** %6, align 8
  %35 = call i32 @advance_producer(%struct.rxe_queue* %34)
  %36 = load %struct.rxe_queue*, %struct.rxe_queue** %5, align 8
  %37 = call i32 @advance_consumer(%struct.rxe_queue* %36)
  br label %20

38:                                               ; preds = %20
  %39 = load %struct.rxe_queue*, %struct.rxe_queue** %5, align 8
  %40 = load %struct.rxe_queue*, %struct.rxe_queue** %6, align 8
  %41 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %39, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.rxe_queue, %struct.rxe_queue* %40, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @swap(i32 %42, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %38, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @queue_empty(%struct.rxe_queue*) #1

declare dso_local i32 @queue_count(%struct.rxe_queue*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @producer_addr(%struct.rxe_queue*) #1

declare dso_local i32 @consumer_addr(%struct.rxe_queue*) #1

declare dso_local i32 @advance_producer(%struct.rxe_queue*) #1

declare dso_local i32 @advance_consumer(%struct.rxe_queue*) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
