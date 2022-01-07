; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_stat_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_stat_get_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nlattr = type { i32 }

@RDMA_NLDEV_ATTR_MAX = common dso_local global i32 0, align 4
@nldev_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_STAT_RES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @nldev_stat_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nldev_stat_get_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca %struct.nlattr*, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %17 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* @nldev_policy, align 4
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %21 = call i32 @nlmsg_parse(%struct.nlmsghdr* %16, i32 0, %struct.nlattr** %15, i32 %18, i32 %19, %struct.netlink_ext_ack* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %52

27:                                               ; preds = %3
  %28 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_RES, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %36 = call i32 @stat_get_doit_default_counter(%struct.sk_buff* %33, %struct.nlmsghdr* %34, %struct.netlink_ext_ack* %35, %struct.nlattr** %15)
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %52

37:                                               ; preds = %27
  %38 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_RES, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i32 @nla_get_u32(%struct.nlattr* %40)
  switch i32 %41, label %47 [
    i32 128, label %42
  ]

42:                                               ; preds = %37
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %46 = call i32 @stat_get_doit_qp(%struct.sk_buff* %43, %struct.nlmsghdr* %44, %struct.netlink_ext_ack* %45, %struct.nlattr** %15)
  store i32 %46, i32* %10, align 4
  br label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %32, %24
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @stat_get_doit_default_counter(%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*, %struct.nlattr**) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @stat_get_doit_qp(%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*, %struct.nlattr**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
