; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_put_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_put_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i64, i32, i32, %struct.gb_connection* }
%struct.gb_connection = type { i32 }

@gb_operation_cancellation_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_operation*)* @gb_operation_put_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_operation_put_active(%struct.gb_operation* %0) #0 {
  %2 = alloca %struct.gb_operation*, align 8
  %3 = alloca %struct.gb_connection*, align 8
  %4 = alloca i64, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %2, align 8
  %5 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %6 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %5, i32 0, i32 3
  %7 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  store %struct.gb_connection* %7, %struct.gb_connection** %3, align 8
  %8 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %9 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %13 = call i32 @trace_gb_operation_put_active(%struct.gb_operation* %12)
  %14 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %15 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %21 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %20, i32 0, i32 2
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %24 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %23, i32 0, i32 1
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @wake_up(i32* @gb_operation_cancellation_queue)
  br label %29

29:                                               ; preds = %27, %19
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %32 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace_gb_operation_put_active(%struct.gb_operation*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
