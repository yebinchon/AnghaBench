; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_net_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@recv_sockets = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@rxe_net_notifier = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register netdev notifier\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_net_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recv_sockets, i32 0, i32 0), align 8
  %3 = call i32 (...) @rxe_net_ipv4_init()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %1, align 4
  br label %23

8:                                                ; preds = %0
  %9 = call i32 (...) @rxe_net_ipv6_init()
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %20

13:                                               ; preds = %8
  %14 = call i32 @register_netdevice_notifier(i32* @rxe_net_notifier)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %20

19:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %23

20:                                               ; preds = %17, %12
  %21 = call i32 (...) @rxe_net_exit()
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %20, %19, %6
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @rxe_net_ipv4_init(...) #1

declare dso_local i32 @rxe_net_ipv6_init(...) #1

declare dso_local i32 @register_netdevice_notifier(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rxe_net_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
