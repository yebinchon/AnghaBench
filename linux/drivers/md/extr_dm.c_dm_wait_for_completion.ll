; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, i64)* @dm_wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_wait_for_completion(%struct.mapped_device* %0, i64 %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @wait, align 4
  %7 = call i32 @DEFINE_WAIT(i32 %6)
  br label %8

8:                                                ; preds = %2, %25
  %9 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %10 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @prepare_to_wait(i32* %10, i32* @wait, i64 %11)
  %13 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %14 = call i32 @md_in_flight(%struct.mapped_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  br label %27

17:                                               ; preds = %8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @current, align 4
  %20 = call i64 @signal_pending_state(i64 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINTR, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %27

25:                                               ; preds = %17
  %26 = call i32 (...) @io_schedule()
  br label %8

27:                                               ; preds = %22, %16
  %28 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %29 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %28, i32 0, i32 0
  %30 = call i32 @finish_wait(i32* %29, i32* @wait)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i64) #1

declare dso_local i32 @md_in_flight(%struct.mapped_device*) #1

declare dso_local i64 @signal_pending_state(i64, i32) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
