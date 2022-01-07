; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_dellink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@RDMA_NLDEV_ATTR_MAX = common dso_local global i32 0, align 4
@nldev_policy = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_DEV_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IB_DEVICE_ALLOW_USER_UNREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @nldev_dellink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nldev_dellink(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %14 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %19 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @nldev_policy, align 4
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %23 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %18, i32 0, %struct.nlattr** %17, i32 %20, i32 %21, %struct.netlink_ext_ack* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %66

34:                                               ; preds = %26
  %35 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i32 @nla_get_u32(%struct.nlattr* %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sock_net(i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.ib_device* @ib_device_get_by_index(i32 %42, i32 %43)
  store %struct.ib_device* %44, %struct.ib_device** %10, align 8
  %45 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %46 = icmp ne %struct.ib_device* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %66

50:                                               ; preds = %34
  %51 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %52 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IB_DEVICE_ALLOW_USER_UNREG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %60 = call i32 @ib_device_put(%struct.ib_device* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %66

63:                                               ; preds = %50
  %64 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %65 = call i32 @ib_unregister_device_and_put(%struct.ib_device* %64)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %66

66:                                               ; preds = %63, %58, %47, %31
  %67 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local %struct.ib_device* @ib_device_get_by_index(i32, i32) #2

declare dso_local i32 @sock_net(i32) #2

declare dso_local i32 @ib_device_put(%struct.ib_device*) #2

declare dso_local i32 @ib_unregister_device_and_put(%struct.ib_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
