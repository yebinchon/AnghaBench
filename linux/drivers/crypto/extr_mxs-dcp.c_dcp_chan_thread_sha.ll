; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_dcp_chan_thread_sha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_dcp_chan_thread_sha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcp = type { i32*, i32* }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)* }

@global_sdcp = common dso_local global %struct.dcp* null, align 8
@DCP_CHAN_HASH_SHA = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dcp_chan_thread_sha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcp_chan_thread_sha(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dcp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load %struct.dcp*, %struct.dcp** @global_sdcp, align 8
  store %struct.dcp* %8, %struct.dcp** %3, align 8
  %9 = load i32, i32* @DCP_CHAN_HASH_SHA, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %77, %50, %1
  %11 = call i32 (...) @kthread_should_stop()
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %78

14:                                               ; preds = %10
  %15 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %16 = call i32 @set_current_state(i32 %15)
  %17 = load %struct.dcp*, %struct.dcp** %3, align 8
  %18 = getelementptr inbounds %struct.dcp, %struct.dcp* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.dcp*, %struct.dcp** %3, align 8
  %25 = getelementptr inbounds %struct.dcp, %struct.dcp* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %29)
  store %struct.crypto_async_request* %30, %struct.crypto_async_request** %5, align 8
  %31 = load %struct.dcp*, %struct.dcp** %3, align 8
  %32 = getelementptr inbounds %struct.dcp, %struct.dcp* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %36)
  store %struct.crypto_async_request* %37, %struct.crypto_async_request** %6, align 8
  %38 = load %struct.dcp*, %struct.dcp** %3, align 8
  %39 = getelementptr inbounds %struct.dcp, %struct.dcp* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %46 = icmp ne %struct.crypto_async_request* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %14
  %48 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %49 = icmp ne %struct.crypto_async_request* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 (...) @schedule()
  br label %10

52:                                               ; preds = %47, %14
  %53 = load i32, i32* @TASK_RUNNING, align 4
  %54 = call i32 @set_current_state(i32 %53)
  %55 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %56 = icmp ne %struct.crypto_async_request* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %59 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %58, i32 0, i32 0
  %60 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %59, align 8
  %61 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %62 = load i32, i32* @EINPROGRESS, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32 %60(%struct.crypto_async_request* %61, i32 %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %67 = icmp ne %struct.crypto_async_request* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %70 = call i32 @dcp_sha_req_to_buf(%struct.crypto_async_request* %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %72 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %71, i32 0, i32 0
  %73 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %72, align 8
  %74 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 %73(%struct.crypto_async_request* %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %65
  br label %10

78:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @dcp_sha_req_to_buf(%struct.crypto_async_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
