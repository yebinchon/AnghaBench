; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_request_send_sync_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_request_send_sync_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i32 }

@gb_operation_sync_callback = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_operation_request_send_sync_timeout(%struct.gb_operation* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_operation*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %8 = load i32, i32* @gb_operation_sync_callback, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @gb_operation_request_send(%struct.gb_operation* %7, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %18 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %17, i32 0, i32 0
  %19 = call i32 @wait_for_completion_interruptible(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %24 = load i32, i32* @ECANCELED, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @gb_operation_cancel(%struct.gb_operation* %23, i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %29 = call i32 @gb_operation_result(%struct.gb_operation* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @gb_operation_request_send(%struct.gb_operation*, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @gb_operation_cancel(%struct.gb_operation*, i32) #1

declare dso_local i32 @gb_operation_result(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
