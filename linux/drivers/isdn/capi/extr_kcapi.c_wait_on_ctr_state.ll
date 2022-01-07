; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_wait_on_ctr_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_wait_on_ctr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_ctr = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@CAPI_CTR_DETACHED = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@capi_controller_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.capi_ctr*, i32)* @wait_on_ctr_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_on_ctr_state(%struct.capi_ctr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.capi_ctr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.capi_ctr* %0, %struct.capi_ctr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @wait, align 4
  %8 = call i32 @DEFINE_WAIT(i32 %7)
  store i32 0, i32* %6, align 4
  %9 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %10 = call %struct.capi_ctr* @capi_ctr_get(%struct.capi_ctr* %9)
  store %struct.capi_ctr* %10, %struct.capi_ctr** %4, align 8
  %11 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %12 = icmp ne %struct.capi_ctr* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ESRCH, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %44, %16
  %18 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %19 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %18, i32 0, i32 1
  %20 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %21 = call i32 @prepare_to_wait(i32* %19, i32* @wait, i32 %20)
  %22 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %23 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %48

28:                                               ; preds = %17
  %29 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %30 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CAPI_CTR_DETACHED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ESRCH, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %48

37:                                               ; preds = %28
  %38 = load i32, i32* @current, align 4
  %39 = call i64 @signal_pending(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINTR, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %48

44:                                               ; preds = %37
  %45 = call i32 @mutex_unlock(i32* @capi_controller_lock)
  %46 = call i32 (...) @schedule()
  %47 = call i32 @mutex_lock(i32* @capi_controller_lock)
  br label %17

48:                                               ; preds = %41, %34, %27
  %49 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %50 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %49, i32 0, i32 1
  %51 = call i32 @finish_wait(i32* %50, i32* @wait)
  %52 = load %struct.capi_ctr*, %struct.capi_ctr** %4, align 8
  %53 = call i32 @capi_ctr_put(%struct.capi_ctr* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %48, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.capi_ctr* @capi_ctr_get(%struct.capi_ctr*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @capi_ctr_put(%struct.capi_ctr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
