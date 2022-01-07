; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_port_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_port_get_doit.c"
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
@RDMA_NLDEV_ATTR_PORT_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_NL_NLDEV = common dso_local global i32 0, align 4
@RDMA_NLDEV_CMD_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @nldev_port_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nldev_port_get_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %18 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca %struct.nlattr*, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %23 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @nldev_policy, align 4
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %27 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %22, i32 0, %struct.nlattr** %21, i32 %24, i32 %25, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %3
  %31 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %30, %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %129

43:                                               ; preds = %35
  %44 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i32 @nla_get_u32(%struct.nlattr* %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sock_net(i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = call %struct.ib_device* @ib_device_get_by_index(i32 %51, i32 %52)
  store %struct.ib_device* %53, %struct.ib_device** %10, align 8
  %54 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %55 = icmp ne %struct.ib_device* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %129

59:                                               ; preds = %43
  %60 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i32 @nla_get_u32(%struct.nlattr* %62)
  store i32 %63, i32* %13, align 4
  %64 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @rdma_is_port_valid(%struct.ib_device* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %125

71:                                               ; preds = %59
  %72 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.sk_buff* @nlmsg_new(i32 %72, i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %11, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %14, align 4
  br label %125

80:                                               ; preds = %71
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @NETLINK_CB(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %88 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @RDMA_NL_NLDEV, align 4
  %91 = load i32, i32* @RDMA_NLDEV_CMD_GET, align 4
  %92 = call i32 @RDMA_NL_GET_TYPE(i32 %90, i32 %91)
  %93 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %81, i32 %86, i32 %89, i32 %92, i32 0, i32 0)
  store %struct.nlmsghdr* %93, %struct.nlmsghdr** %6, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %95 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sock_net(i32 %99)
  %101 = call i32 @fill_port_info(%struct.sk_buff* %94, %struct.ib_device* %95, i32 %96, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %80
  br label %122

105:                                              ; preds = %80
  %106 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %107 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %108 = call i32 @nlmsg_end(%struct.sk_buff* %106, %struct.nlmsghdr* %107)
  %109 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %110 = call i32 @ib_device_put(%struct.ib_device* %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @sock_net(i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = call i32 @NETLINK_CB(%struct.sk_buff* %116)
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @rdma_nl_unicast(i32 %114, %struct.sk_buff* %115, i32 %120)
  store i32 %121, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %129

122:                                              ; preds = %104
  %123 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %124 = call i32 @nlmsg_free(%struct.sk_buff* %123)
  br label %125

125:                                              ; preds = %122, %77, %68
  %126 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %127 = call i32 @ib_device_put(%struct.ib_device* %126)
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %129

129:                                              ; preds = %125, %105, %56, %40
  %130 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local %struct.ib_device* @ib_device_get_by_index(i32, i32) #2

declare dso_local i32 @sock_net(i32) #2

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i32) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #2

declare dso_local i32 @RDMA_NL_GET_TYPE(i32, i32) #2

declare dso_local i32 @fill_port_info(%struct.sk_buff*, %struct.ib_device*, i32, i32) #2

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
