; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.rdma_link_ops = type { i32 (i8*, %struct.net_device*)* }
%struct.net_device = type opaque
%struct.net_device.0 = type { i32 }
%struct.nlattr = type { i32 }

@RDMA_NLDEV_ATTR_MAX = common dso_local global i32 0, align 4
@IB_DEVICE_NAME_MAX = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@nldev_policy = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_DEV_NAME = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_LINK_TYPE = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_NDEV_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@link_ops_rwsem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @nldev_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nldev_newlink(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rdma_link_ops*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.net_device.0*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %17 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @IB_DEVICE_NAME_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load i32, i32* @IFNAMSIZ, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %27 = load i32, i32* @IFNAMSIZ, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %31 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* @nldev_policy, align 4
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %35 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %30, i32 0, %struct.nlattr** %20, i32 %32, i32 %33, %struct.netlink_ext_ack* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %3
  %39 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_NAME, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i64, i64* @RDMA_NLDEV_ATTR_LINK_TYPE, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i64, i64* @RDMA_NLDEV_ATTR_NDEV_NAME, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48, %43, %38, %3
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %109

56:                                               ; preds = %48
  %57 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_NAME, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = trunc i64 %22 to i32
  %61 = call i32 @nla_strlcpy(i8* %23, %struct.nlattr* %59, i32 %60)
  %62 = call i64 @strchr(i8* %23, i8 signext 37)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %109

67:                                               ; preds = %56
  %68 = load i64, i64* @RDMA_NLDEV_ATTR_LINK_TYPE, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = trunc i64 %28 to i32
  %72 = call i32 @nla_strlcpy(i8* %29, %struct.nlattr* %70, i32 %71)
  %73 = load i64, i64* @RDMA_NLDEV_ATTR_NDEV_NAME, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = trunc i64 %25 to i32
  %77 = call i32 @nla_strlcpy(i8* %26, %struct.nlattr* %75, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sock_net(i32 %80)
  %82 = call %struct.net_device.0* @dev_get_by_name(i32 %81, i8* %26)
  store %struct.net_device.0* %82, %struct.net_device.0** %13, align 8
  %83 = load %struct.net_device.0*, %struct.net_device.0** %13, align 8
  %84 = icmp ne %struct.net_device.0* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %67
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %109

88:                                               ; preds = %67
  %89 = call i32 @down_read(i32* @link_ops_rwsem)
  %90 = call %struct.rdma_link_ops* @link_ops_get(i8* %29)
  store %struct.rdma_link_ops* %90, %struct.rdma_link_ops** %11, align 8
  %91 = load %struct.rdma_link_ops*, %struct.rdma_link_ops** %11, align 8
  %92 = icmp ne %struct.rdma_link_ops* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.rdma_link_ops*, %struct.rdma_link_ops** %11, align 8
  %95 = getelementptr inbounds %struct.rdma_link_ops, %struct.rdma_link_ops* %94, i32 0, i32 0
  %96 = load i32 (i8*, %struct.net_device*)*, i32 (i8*, %struct.net_device*)** %95, align 8
  %97 = load %struct.net_device.0*, %struct.net_device.0** %13, align 8
  %98 = bitcast %struct.net_device.0* %97 to %struct.net_device*
  %99 = call i32 %96(i8* %23, %struct.net_device* %98)
  br label %103

100:                                              ; preds = %88
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  br label %103

103:                                              ; preds = %100, %93
  %104 = phi i32 [ %99, %93 ], [ %102, %100 ]
  store i32 %104, i32* %15, align 4
  %105 = call i32 @up_read(i32* @link_ops_rwsem)
  %106 = load %struct.net_device.0*, %struct.net_device.0** %13, align 8
  %107 = call i32 @dev_put(%struct.net_device.0* %106)
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %109

109:                                              ; preds = %103, %85, %64, %53
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i32) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local %struct.net_device.0* @dev_get_by_name(i32, i8*) #2

declare dso_local i32 @sock_net(i32) #2

declare dso_local i32 @down_read(i32*) #2

declare dso_local %struct.rdma_link_ops* @link_ops_get(i8*) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @dev_put(%struct.net_device.0*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
