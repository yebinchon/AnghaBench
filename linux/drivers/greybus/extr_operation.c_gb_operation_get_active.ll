; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_get_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_get_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i32, i32, %struct.gb_connection* }
%struct.gb_connection = type { i32, i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_operation_get_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_operation_get_active(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca i64, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %6 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %7 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %6, i32 0, i32 2
  %8 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  store %struct.gb_connection* %8, %struct.gb_connection** %4, align 8
  %9 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %10 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %14 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %29 [
    i32 129, label %16
    i32 128, label %17
    i32 130, label %23
  ]

16:                                               ; preds = %1
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %19 = call i32 @gb_operation_is_incoming(%struct.gb_operation* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %49

22:                                               ; preds = %17
  br label %30

23:                                               ; preds = %1
  %24 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %25 = call i32 @gb_operation_is_core(%struct.gb_operation* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %49

28:                                               ; preds = %23
  br label %30

29:                                               ; preds = %1
  br label %49

30:                                               ; preds = %28, %22, %16
  %31 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %32 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %38 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %37, i32 0, i32 0
  %39 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %40 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %39, i32 0, i32 2
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %44 = call i32 @trace_gb_operation_get_active(%struct.gb_operation* %43)
  %45 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %46 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %45, i32 0, i32 1
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  store i32 0, i32* %2, align 4
  br label %56

49:                                               ; preds = %29, %27, %21
  %50 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %51 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %50, i32 0, i32 1
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* @ENOTCONN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %49, %42
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gb_operation_is_incoming(%struct.gb_operation*) #1

declare dso_local i32 @gb_operation_is_core(%struct.gb_operation*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @trace_gb_operation_get_active(%struct.gb_operation*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
