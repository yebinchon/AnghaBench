; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_nl_is_good_resolve_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_nl_is_good_resolve_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@LS_NLA_TYPE_MAX = common dso_local global i32 0, align 4
@RDMA_NL_LS_F_ERR = common dso_local global i32 0, align 4
@ib_nl_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*)* @ib_nl_is_good_resolve_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_nl_is_good_resolve_resp(%struct.nlmsghdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlmsghdr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %3, align 8
  %8 = load i32, i32* @LS_NLA_TYPE_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca %struct.nlattr*, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %13 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RDMA_NL_LS_F_ERR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load i32, i32* @LS_NLA_TYPE_MAX, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %23 = call i32 @nlmsg_data(%struct.nlmsghdr* %22)
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %25 = call i32 @nlmsg_len(%struct.nlmsghdr* %24)
  %26 = load i32, i32* @ib_nl_policy, align 4
  %27 = call i32 @nla_parse_deprecated(%struct.nlattr** %11, i32 %21, i32 %23, i32 %25, i32 %26, i32* null)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %32

31:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %30, %18
  %33 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %33)
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
