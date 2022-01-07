; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_get_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ib_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@RDMA_NLDEV_ATTR_MAX = common dso_local global i32 0, align 4
@nldev_policy = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_DEV_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_NL_NLDEV = common dso_local global i32 0, align 4
@RDMA_NLDEV_CMD_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @nldev_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nldev_get_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %17 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %22 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @nldev_policy, align 4
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %26 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %21, i32 0, %struct.nlattr** %20, i32 %23, i32 %24, %struct.netlink_ext_ack* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %106

37:                                               ; preds = %29
  %38 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i32 @nla_get_u32(%struct.nlattr* %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sock_net(i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = call %struct.ib_device* @ib_device_get_by_index(i32 %45, i32 %46)
  store %struct.ib_device* %47, %struct.ib_device** %10, align 8
  %48 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %49 = icmp ne %struct.ib_device* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %106

53:                                               ; preds = %37
  %54 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.sk_buff* @nlmsg_new(i32 %54, i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %11, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %13, align 4
  br label %102

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @NETLINK_CB(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %70 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RDMA_NL_NLDEV, align 4
  %73 = load i32, i32* @RDMA_NLDEV_CMD_GET, align 4
  %74 = call i32 @RDMA_NL_GET_TYPE(i32 %72, i32 %73)
  %75 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %63, i32 %68, i32 %71, i32 %74, i32 0, i32 0)
  store %struct.nlmsghdr* %75, %struct.nlmsghdr** %6, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %78 = call i32 @fill_dev_info(%struct.sk_buff* %76, %struct.ib_device* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %62
  br label %99

82:                                               ; preds = %62
  %83 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %84 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %85 = call i32 @nlmsg_end(%struct.sk_buff* %83, %struct.nlmsghdr* %84)
  %86 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %87 = call i32 @ib_device_put(%struct.ib_device* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @sock_net(i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call i32 @NETLINK_CB(%struct.sk_buff* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @rdma_nl_unicast(i32 %91, %struct.sk_buff* %92, i32 %97)
  store i32 %98, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %106

99:                                               ; preds = %81
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = call i32 @nlmsg_free(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %99, %59
  %103 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %104 = call i32 @ib_device_put(%struct.ib_device* %103)
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %106

106:                                              ; preds = %102, %82, %50, %34
  %107 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local %struct.ib_device* @ib_device_get_by_index(i32, i32) #2

declare dso_local i32 @sock_net(i32) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #2

declare dso_local i32 @RDMA_NL_GET_TYPE(i32, i32) #2

declare dso_local i32 @fill_dev_info(%struct.sk_buff*, %struct.ib_device*) #2

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #2

declare dso_local i32 @ib_device_put(%struct.ib_device*) #2

declare dso_local i32 @rdma_nl_unicast(i32, %struct.sk_buff*, i32) #2

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
