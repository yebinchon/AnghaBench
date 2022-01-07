; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_pass_accept_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_pass_accept_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_pass_accept_req = type { i32 }
%struct.listen_ctx = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.TYPE_4__ = type { %struct.chtls_dev* }

@RSS_HDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"passive open TID %u too large\0A\00", align 1
@chtls_pass_accept_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_dev*, %struct.sk_buff*)* @chtls_pass_accept_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_pass_accept_req(%struct.chtls_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cpl_pass_accept_req*, align 8
  %7 = alloca %struct.listen_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i8*, align 8
  store %struct.chtls_dev* %0, %struct.chtls_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.cpl_pass_accept_req* @cplhdr(%struct.sk_buff* %12)
  %14 = load i32, i32* @RSS_HDR, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cpl_pass_accept_req, %struct.cpl_pass_accept_req* %13, i64 %15
  store %struct.cpl_pass_accept_req* %16, %struct.cpl_pass_accept_req** %6, align 8
  %17 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %18 = getelementptr inbounds %struct.cpl_pass_accept_req, %struct.cpl_pass_accept_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ntohl(i32 %19)
  %21 = call i32 @PASS_OPEN_TID_G(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %23 = call i32 @GET_TID(%struct.cpl_pass_accept_req* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %25 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @lookup_stid(%struct.TYPE_3__* %26, i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %60

32:                                               ; preds = %2
  %33 = load i8*, i8** %11, align 8
  %34 = bitcast i8* %33 to %struct.listen_ctx*
  store %struct.listen_ctx* %34, %struct.listen_ctx** %7, align 8
  %35 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %35, i32 0, i32 0
  %37 = load %struct.sock*, %struct.sock** %36, align 8
  store %struct.sock* %37, %struct.sock** %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %40 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp uge i32 %38, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 1, i32* %3, align 4
  br label %60

51:                                               ; preds = %32
  %52 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call %struct.TYPE_4__* @BLOG_SKB_CB(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.chtls_dev* %52, %struct.chtls_dev** %55, align 8
  %56 = load i32, i32* @chtls_pass_accept_request, align 4
  %57 = load %struct.sock*, %struct.sock** %10, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @process_cpl_msg(i32 %56, %struct.sock* %57, %struct.sk_buff* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %48, %31
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.cpl_pass_accept_req* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @PASS_OPEN_TID_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_pass_accept_req*) #1

declare dso_local i8* @lookup_stid(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @BLOG_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @process_cpl_msg(i32, %struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
