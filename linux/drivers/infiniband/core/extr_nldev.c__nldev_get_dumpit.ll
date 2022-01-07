; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c__nldev_get_dumpit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c__nldev_get_dumpit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RDMA_NL_NLDEV = common dso_local global i32 0, align 4
@RDMA_NLDEV_CMD_GET = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.sk_buff*, %struct.netlink_callback*, i32)* @_nldev_get_dumpit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nldev_get_dumpit(%struct.ib_device* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.TYPE_4__, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %14 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %25 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @NETLINK_CB(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %32 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RDMA_NL_NLDEV, align 4
  %37 = load i32, i32* @RDMA_NLDEV_CMD_GET, align 4
  %38 = call i32 @RDMA_NL_GET_TYPE(i32 %36, i32 %37)
  %39 = load i32, i32* @NLM_F_MULTI, align 4
  %40 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %23, i32 %30, i32 %35, i32 %38, i32 0, i32 %39)
  store %struct.nlmsghdr* %40, %struct.nlmsghdr** %11, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %43 = call i64 @fill_dev_info(%struct.sk_buff* %41, %struct.ib_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %22
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %48 = call i32 @nlmsg_cancel(%struct.sk_buff* %46, %struct.nlmsghdr* %47)
  br label %55

49:                                               ; preds = %22
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %52 = call i32 @nlmsg_end(%struct.sk_buff* %50, %struct.nlmsghdr* %51)
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %58 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %55, %21
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @RDMA_NL_GET_TYPE(i32, i32) #1

declare dso_local i64 @fill_dev_info(%struct.sk_buff*, %struct.ib_device*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
