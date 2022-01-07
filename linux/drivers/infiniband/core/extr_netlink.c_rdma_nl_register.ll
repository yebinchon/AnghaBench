; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_netlink.c_rdma_nl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_netlink.c_rdma_nl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rdma_nl_cbs = type { i32 }

@rdma_nl_types = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_nl_register(i32 %0, %struct.rdma_nl_cbs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_nl_cbs*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rdma_nl_cbs* %1, %struct.rdma_nl_cbs** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @is_nl_msg_valid(i32 %5, i32 0)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rdma_nl_types, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @READ_ONCE(i32 %18)
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12, %2
  br label %31

23:                                               ; preds = %12
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rdma_nl_types, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.rdma_nl_cbs*, %struct.rdma_nl_cbs** %4, align 8
  %30 = call i32 @smp_store_release(i32* %28, %struct.rdma_nl_cbs* %29)
  br label %31

31:                                               ; preds = %23, %22
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @is_nl_msg_valid(i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @smp_store_release(i32*, %struct.rdma_nl_cbs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
