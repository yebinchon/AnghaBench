; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_netlink.c_get_cb_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_netlink.c_get_cb_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rdma_nl_cbs = type { i32, i32 }
%struct.sk_buff = type { i32 }

@init_net = common dso_local global i32 0, align 4
@RDMA_NL_NLDEV = common dso_local global i32 0, align 4
@rdma_nl_types = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"rdma-netlink-subsys-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdma_nl_cbs* (%struct.sk_buff*, i32, i32)* @get_cb_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdma_nl_cbs* @get_cb_table(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rdma_nl_cbs*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdma_nl_cbs*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @sock_net(i32 %11)
  %13 = icmp ne i32* %12, @init_net
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RDMA_NL_NLDEV, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.rdma_nl_cbs* null, %struct.rdma_nl_cbs** %4, align 8
  br label %73

19:                                               ; preds = %14, %3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rdma_nl_types, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.rdma_nl_cbs* @READ_ONCE(i32 %25)
  store %struct.rdma_nl_cbs* %26, %struct.rdma_nl_cbs** %8, align 8
  %27 = load %struct.rdma_nl_cbs*, %struct.rdma_nl_cbs** %8, align 8
  %28 = icmp ne %struct.rdma_nl_cbs* %27, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %19
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rdma_nl_types, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @up_read(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @request_module(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rdma_nl_types, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @down_read(i32* %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rdma_nl_types, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.rdma_nl_cbs* @READ_ONCE(i32 %49)
  store %struct.rdma_nl_cbs* %50, %struct.rdma_nl_cbs** %8, align 8
  br label %51

51:                                               ; preds = %29, %19
  %52 = load %struct.rdma_nl_cbs*, %struct.rdma_nl_cbs** %8, align 8
  %53 = icmp ne %struct.rdma_nl_cbs* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.rdma_nl_cbs*, %struct.rdma_nl_cbs** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.rdma_nl_cbs, %struct.rdma_nl_cbs* %55, i64 %57
  %59 = getelementptr inbounds %struct.rdma_nl_cbs, %struct.rdma_nl_cbs* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %54
  %63 = load %struct.rdma_nl_cbs*, %struct.rdma_nl_cbs** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.rdma_nl_cbs, %struct.rdma_nl_cbs* %63, i64 %65
  %67 = getelementptr inbounds %struct.rdma_nl_cbs, %struct.rdma_nl_cbs* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62, %51
  store %struct.rdma_nl_cbs* null, %struct.rdma_nl_cbs** %4, align 8
  br label %73

71:                                               ; preds = %62, %54
  %72 = load %struct.rdma_nl_cbs*, %struct.rdma_nl_cbs** %8, align 8
  store %struct.rdma_nl_cbs* %72, %struct.rdma_nl_cbs** %4, align 8
  br label %73

73:                                               ; preds = %71, %70, %18
  %74 = load %struct.rdma_nl_cbs*, %struct.rdma_nl_cbs** %4, align 8
  ret %struct.rdma_nl_cbs* %74
}

declare dso_local i32* @sock_net(i32) #1

declare dso_local %struct.rdma_nl_cbs* @READ_ONCE(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @request_module(i8*, i32) #1

declare dso_local i32 @down_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
