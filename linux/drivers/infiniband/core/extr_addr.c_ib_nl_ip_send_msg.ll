; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_ib_nl_ip_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_addr.c_ib_nl_ip_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_dev_addr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.rdma_ls_ip_resolve_header = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@RDMA_NLA_F_MANDATORY = common dso_local global i32 0, align 4
@LS_NLA_TYPE_IPV4 = common dso_local global i32 0, align 4
@LS_NLA_TYPE_IPV6 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_NL_LS = common dso_local global i32 0, align 4
@RDMA_NL_LS_OP_IP_RESOLVE = common dso_local global i32 0, align 4
@NLM_F_REQUEST = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@RDMA_NL_GROUP_LS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_dev_addr*, i8*, i32, i64)* @ib_nl_ip_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_nl_ip_send_msg(%struct.rdma_dev_addr* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rdma_dev_addr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.rdma_ls_ip_resolve_header*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rdma_dev_addr* %0, %struct.rdma_dev_addr** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @AF_INET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  store i64 4, i64* %14, align 8
  %21 = load i32, i32* @RDMA_NLA_F_MANDATORY, align 4
  %22 = load i32, i32* @LS_NLA_TYPE_IPV4, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %15, align 4
  br label %28

24:                                               ; preds = %4
  store i64 4, i64* %14, align 8
  %25 = load i32, i32* @RDMA_NLA_F_MANDATORY, align 4
  %26 = load i32, i32* @LS_NLA_TYPE_IPV6, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %15, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = call i32 @nla_total_size(i32 8)
  store i32 %29, i32* %16, align 4
  %30 = call i64 @NLMSG_ALIGN(i32 4)
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.sk_buff* @nlmsg_new(i32 %35, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %10, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %80

43:                                               ; preds = %28
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @RDMA_NL_LS, align 4
  %47 = load i32, i32* @RDMA_NL_LS_OP_IP_RESOLVE, align 4
  %48 = load i32, i32* @NLM_F_REQUEST, align 4
  %49 = call i8* @ibnl_put_msg(%struct.sk_buff* %44, %struct.nlmsghdr** %11, i32 %45, i32 0, i32 %46, i32 %47, i32 %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = call i32 @nlmsg_free(%struct.sk_buff* %53)
  %55 = load i32, i32* @ENODATA, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %80

57:                                               ; preds = %43
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = call i64 @NLMSG_ALIGN(i32 4)
  %60 = call %struct.rdma_ls_ip_resolve_header* @skb_put(%struct.sk_buff* %58, i64 %59)
  store %struct.rdma_ls_ip_resolve_header* %60, %struct.rdma_ls_ip_resolve_header** %12, align 8
  %61 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %6, align 8
  %62 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rdma_ls_ip_resolve_header*, %struct.rdma_ls_ip_resolve_header** %12, align 8
  %65 = getelementptr inbounds %struct.rdma_ls_ip_resolve_header, %struct.rdma_ls_ip_resolve_header* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i64, i64* %14, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @nla_put(%struct.sk_buff* %66, i32 %67, i64 %68, i8* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %73 = call i32 @nlmsg_end(%struct.sk_buff* %71, %struct.nlmsghdr* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load i32, i32* @RDMA_NL_GROUP_LS, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i32 @rdma_nl_multicast(i32* @init_net, %struct.sk_buff* %74, i32 %75, i32 %76)
  %78 = load i32, i32* @ENODATA, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %57, %52, %40
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @ibnl_put_msg(%struct.sk_buff*, %struct.nlmsghdr**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local %struct.rdma_ls_ip_resolve_header* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i64, i8*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @rdma_nl_multicast(i32*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
