; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i32, i32, i32 }

@gb_operation_completion_wq = common dso_local global i32 0, align 4
@gb_operation_cancellation_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_operation_cancel(%struct.gb_operation* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %6 = call i32 @gb_operation_is_incoming(%struct.gb_operation* %5)
  %7 = call i64 @WARN_ON(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %42

10:                                               ; preds = %2
  %11 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @gb_operation_result_set(%struct.gb_operation* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %17 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gb_message_cancel(i32 %18)
  %20 = load i32, i32* @gb_operation_completion_wq, align 4
  %21 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %22 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %21, i32 0, i32 2
  %23 = call i32 @queue_work(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %15, %10
  %25 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %26 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @trace_gb_message_cancel_outgoing(i32 %27)
  %29 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %30 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %29, i32 0, i32 0
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load i32, i32* @gb_operation_cancellation_queue, align 4
  %33 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %34 = call i32 @gb_operation_is_active(%struct.gb_operation* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @wait_event(i32 %32, i32 %37)
  %39 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %40 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %39, i32 0, i32 0
  %41 = call i32 @atomic_dec(i32* %40)
  br label %42

42:                                               ; preds = %24, %9
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @gb_operation_is_incoming(%struct.gb_operation*) #1

declare dso_local i64 @gb_operation_result_set(%struct.gb_operation*, i32) #1

declare dso_local i32 @gb_message_cancel(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @trace_gb_message_cancel_outgoing(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @gb_operation_is_active(%struct.gb_operation*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
