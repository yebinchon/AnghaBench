; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_mcast_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_mcast_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"ib_mcast\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@mcast_wq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sa_client = common dso_local global i32 0, align 4
@mcast_client = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcast_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %4 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %3)
  store i32 %4, i32* @mcast_wq, align 4
  %5 = load i32, i32* @mcast_wq, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %22

10:                                               ; preds = %0
  %11 = call i32 @ib_sa_register_client(i32* @sa_client)
  %12 = call i32 @ib_register_client(i32* @mcast_client)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %17

16:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %22

17:                                               ; preds = %15
  %18 = call i32 @ib_sa_unregister_client(i32* @sa_client)
  %19 = load i32, i32* @mcast_wq, align 4
  %20 = call i32 @destroy_workqueue(i32 %19)
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %17, %16, %7
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @ib_sa_register_client(i32*) #1

declare dso_local i32 @ib_register_client(i32*) #1

declare dso_local i32 @ib_sa_unregister_client(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
