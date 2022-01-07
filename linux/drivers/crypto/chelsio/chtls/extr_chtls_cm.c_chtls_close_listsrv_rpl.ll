; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_close_listsrv_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_close_listsrv_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_close_listsvr_rpl = type { i64 }
%struct.listen_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RSS_HDR = common dso_local global i32 0, align 4
@CPL_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Unexpected CLOSE_LISTSRV_RPL status %u for STID %u\0A\00", align 1
@CPL_RET_BUF_DONE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_dev*, %struct.sk_buff*)* @chtls_close_listsrv_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_close_listsrv_rpl(%struct.chtls_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cpl_close_listsvr_rpl*, align 8
  %7 = alloca %struct.listen_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.chtls_dev* %0, %struct.chtls_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.cpl_close_listsvr_rpl* @cplhdr(%struct.sk_buff* %10)
  %12 = load i32, i32* @RSS_HDR, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cpl_close_listsvr_rpl, %struct.cpl_close_listsvr_rpl* %11, i64 %13
  store %struct.cpl_close_listsvr_rpl* %14, %struct.cpl_close_listsvr_rpl** %6, align 8
  %15 = load %struct.cpl_close_listsvr_rpl*, %struct.cpl_close_listsvr_rpl** %6, align 8
  %16 = call i32 @GET_TID(%struct.cpl_close_listsvr_rpl* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %18 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i8* @lookup_stid(i32 %19, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.listen_ctx*
  store %struct.listen_ctx* %23, %struct.listen_ctx** %7, align 8
  %24 = load %struct.cpl_close_listsvr_rpl*, %struct.cpl_close_listsvr_rpl** %6, align 8
  %25 = getelementptr inbounds %struct.cpl_close_listsvr_rpl, %struct.cpl_close_listsvr_rpl* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CPL_ERR_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.cpl_close_listsvr_rpl*, %struct.cpl_close_listsvr_rpl** %6, align 8
  %31 = getelementptr inbounds %struct.cpl_close_listsvr_rpl, %struct.cpl_close_listsvr_rpl* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %33)
  %35 = load i32, i32* @CPL_RET_BUF_DONE, align 4
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %2
  %37 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %38 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cxgb4_free_stid(i32 %39, i32 %40, i32 %45)
  %47 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 @sock_put(%struct.TYPE_2__* %49)
  %51 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %52 = call i32 @kfree(%struct.listen_ctx* %51)
  %53 = load i32, i32* @THIS_MODULE, align 4
  %54 = call i32 @module_put(i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %36, %29
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.cpl_close_listsvr_rpl* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_close_listsvr_rpl*) #1

declare dso_local i8* @lookup_stid(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i64, i32) #1

declare dso_local i32 @cxgb4_free_stid(i32, i32, i32) #1

declare dso_local i32 @sock_put(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.listen_ctx*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
