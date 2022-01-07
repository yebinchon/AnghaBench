; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tid = common dso_local global i32 0, align 4
@ib_nl_sa_request_seq = common dso_local global i32 0, align 4
@sa_client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Couldn't register ib_sa client\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't initialize multicast handling\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ib_nl_sa_wq\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ib_nl_wq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_nl_timed_work = common dso_local global i32 0, align 4
@ib_nl_request_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_sa_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @get_random_bytes(i32* @tid, i32 4)
  %4 = call i32 @atomic_set(i32* @ib_nl_sa_request_seq, i32 0)
  %5 = call i32 @ib_register_client(i32* @sa_client)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %31

10:                                               ; preds = %0
  %11 = call i32 (...) @mcast_init()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %29

16:                                               ; preds = %10
  %17 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %18 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  store i32 %18, i32* @ib_nl_wq, align 4
  %19 = load i32, i32* @ib_nl_wq, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @ib_nl_request_timeout, align 4
  %26 = call i32 @INIT_DELAYED_WORK(i32* @ib_nl_timed_work, i32 %25)
  store i32 0, i32* %1, align 4
  br label %33

27:                                               ; preds = %21
  %28 = call i32 (...) @mcast_cleanup()
  br label %29

29:                                               ; preds = %27, %14
  %30 = call i32 @ib_unregister_client(i32* @sa_client)
  br label %31

31:                                               ; preds = %29, %8
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ib_register_client(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mcast_init(...) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mcast_cleanup(...) #1

declare dso_local i32 @ib_unregister_client(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
