; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_nl_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_nl_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_query = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_sa_mad* }
%struct.ib_sa_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_NL_LS = common dso_local global i32 0, align 4
@RDMA_NL_LS_OP_RESOLVE = common dso_local global i32 0, align 4
@NLM_F_REQUEST = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@RDMA_NL_GROUP_LS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_query*, i32)* @ib_nl_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_nl_send_msg(%struct.ib_sa_query* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_sa_query*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ib_sa_mad*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_sa_query* %0, %struct.ib_sa_query** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %11 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %12 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %14, align 8
  store %struct.ib_sa_mad* %15, %struct.ib_sa_mad** %9, align 8
  %16 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %17 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ib_nl_get_path_rec_attrs_len(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EMSGSIZE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %62

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.sk_buff* @nlmsg_new(i32 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %62

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %38 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RDMA_NL_LS, align 4
  %41 = load i32, i32* @RDMA_NL_LS_OP_RESOLVE, align 4
  %42 = load i32, i32* @NLM_F_REQUEST, align 4
  %43 = call i8* @ibnl_put_msg(%struct.sk_buff* %36, %struct.nlmsghdr** %7, i32 %39, i32 0, i32 %40, i32 %41, i32 %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %35
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @nlmsg_free(%struct.sk_buff* %47)
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %62

51:                                               ; preds = %35
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %54 = call i32 @ib_nl_set_path_rec_attrs(%struct.sk_buff* %52, %struct.ib_sa_query* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %57 = call i32 @nlmsg_end(%struct.sk_buff* %55, %struct.nlmsghdr* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* @RDMA_NL_GROUP_LS, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @rdma_nl_multicast(i32* @init_net, %struct.sk_buff* %58, i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %51, %46, %32, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ib_nl_get_path_rec_attrs_len(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @ibnl_put_msg(%struct.sk_buff*, %struct.nlmsghdr**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @ib_nl_set_path_rec_attrs(%struct.sk_buff*, %struct.ib_sa_query*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @rdma_nl_multicast(i32*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
