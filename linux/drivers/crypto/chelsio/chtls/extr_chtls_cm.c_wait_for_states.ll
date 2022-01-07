; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_wait_for_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_wait_for_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32* }
%struct.socket_wq = type { i32, i32*, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @wait_for_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_states(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_wq, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @wait, align 4
  %9 = load i32, i32* @current, align 4
  %10 = call i32 @DECLARE_WAITQUEUE(i32 %8, i32 %9)
  store i32 0, i32* %7, align 4
  store i64 200, i64* %6, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %5, i32 0, i32 2
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %5, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %5, i32 0, i32 0
  %20 = call i32 @init_rcu_head_on_stack(i32* %19)
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @RCU_INIT_POINTER(i32* %23, %struct.socket_wq* %5)
  br label %25

25:                                               ; preds = %15, %2
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @sk_sleep(%struct.sock* %26)
  %28 = call i32 @add_wait_queue(i32 %27, i32* @wait)
  br label %29

29:                                               ; preds = %60, %25
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @sk_in_state(%struct.sock* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %65

41:                                               ; preds = %35
  %42 = load i32, i32* @current, align 4
  %43 = call i64 @signal_pending(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @sock_intr_errno(i64 %46)
  store i32 %47, i32* %7, align 4
  br label %65

48:                                               ; preds = %41
  %49 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %50 = call i32 @set_current_state(i32 %49)
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = call i32 @release_sock(%struct.sock* %51)
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @sk_in_state(%struct.sock* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @schedule_timeout(i64 %58)
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i32, i32* @TASK_RUNNING, align 4
  %62 = call i32 @__set_current_state(i32 %61)
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = call i32 @lock_sock(%struct.sock* %63)
  br label %29

65:                                               ; preds = %45, %38, %29
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = call i32 @sk_sleep(%struct.sock* %66)
  %68 = call i32 @remove_wait_queue(i32 %67, i32* @wait)
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call %struct.socket_wq* @rcu_dereference(i32* %71)
  %73 = icmp eq %struct.socket_wq* %72, %5
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.sock*, %struct.sock** %3, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %65
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_rcu_head_on_stack(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32*, %struct.socket_wq*) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sk_in_state(%struct.sock*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local %struct.socket_wq* @rcu_dereference(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
