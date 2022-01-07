; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_cancel_incoming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_cancel_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i32, i32, i32 }

@gb_operation_cancellation_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_operation_cancel_incoming(%struct.gb_operation* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %6 = call i32 @gb_operation_is_incoming(%struct.gb_operation* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %15 = call i32 @gb_operation_is_unidirectional(%struct.gb_operation* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %19 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %18, i32 0, i32 2
  %20 = call i32 @flush_work(i32* %19)
  %21 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @gb_operation_result_set(%struct.gb_operation* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %27 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gb_message_cancel(i32 %28)
  br label %30

30:                                               ; preds = %25, %17
  br label %31

31:                                               ; preds = %30, %13
  %32 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %33 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @trace_gb_message_cancel_incoming(i32 %34)
  %36 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %37 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %36, i32 0, i32 0
  %38 = call i32 @atomic_inc(i32* %37)
  %39 = load i32, i32* @gb_operation_cancellation_queue, align 4
  %40 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %41 = call i32 @gb_operation_is_active(%struct.gb_operation* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @wait_event(i32 %39, i32 %44)
  %46 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %47 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %46, i32 0, i32 0
  %48 = call i32 @atomic_dec(i32* %47)
  br label %49

49:                                               ; preds = %31, %12
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @gb_operation_is_incoming(%struct.gb_operation*) #1

declare dso_local i32 @gb_operation_is_unidirectional(%struct.gb_operation*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @gb_operation_result_set(%struct.gb_operation*, i32) #1

declare dso_local i32 @gb_message_cancel(i32) #1

declare dso_local i32 @trace_gb_message_cancel_incoming(i32) #1

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
