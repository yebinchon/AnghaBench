; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_nl_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_nl_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.ib_sa_query = type { i32, i64, i64 }

@ib_nl_sa_request_seq = common dso_local global i32 0, align 4
@ib_nl_request_lock = common dso_local global i32 0, align 4
@sa_local_svc_timeout_ms = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ib_nl_request_list = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ib_nl_wq = common dso_local global i32 0, align 4
@ib_nl_timed_work = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_query*, i32)* @ib_nl_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_nl_make_request(%struct.ib_sa_query* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_sa_query*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ib_sa_query* %0, %struct.ib_sa_query** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ib_sa_query*, %struct.ib_sa_query** %3, align 8
  %9 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %8, i32 0, i32 0
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = call i64 @atomic_inc_return(i32* @ib_nl_sa_request_seq)
  %12 = load %struct.ib_sa_query*, %struct.ib_sa_query** %3, align 8
  %13 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %12, i32 0, i32 2
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @ib_nl_request_lock, i64 %14)
  %16 = load i32, i32* @sa_local_svc_timeout_ms, align 4
  %17 = call i64 @msecs_to_jiffies(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @jiffies, align 8
  %20 = add i64 %18, %19
  %21 = load %struct.ib_sa_query*, %struct.ib_sa_query** %3, align 8
  %22 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.ib_sa_query*, %struct.ib_sa_query** %3, align 8
  %24 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %24, %struct.TYPE_3__* @ib_nl_request_list)
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ib_nl_request_list, i32 0, i32 0), align 8
  %27 = load %struct.ib_sa_query*, %struct.ib_sa_query** %3, align 8
  %28 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %27, i32 0, i32 0
  %29 = icmp eq i32* %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @ib_nl_wq, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @queue_delayed_work(i32 %31, i32* @ib_nl_timed_work, i64 %32)
  br label %34

34:                                               ; preds = %30, %2
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* @ib_nl_request_lock, i64 %35)
  %37 = load %struct.ib_sa_query*, %struct.ib_sa_query** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ib_nl_send_msg(%struct.ib_sa_query* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_lock_irqsave(i32* @ib_nl_request_lock, i64 %45)
  %47 = load %struct.ib_sa_query*, %struct.ib_sa_query** %3, align 8
  %48 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %47, i32 0, i32 0
  %49 = call i32 @list_del(i32* %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @ib_nl_request_lock, i64 %50)
  br label %52

52:                                               ; preds = %42, %34
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_nl_send_msg(%struct.ib_sa_query*, i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
