; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_pass_open_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_pass_open_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_pass_open_rpl = type { i64 }
%struct.listen_ctx = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RSS_HDR = common dso_local global i32 0, align 4
@CPL_RET_BUF_DONE = common dso_local global i32 0, align 4
@T4_LISTEN_START_PENDING = common dso_local global i64 0, align 8
@T4_LISTEN_STARTED = common dso_local global i64 0, align 8
@CPL_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Unexpected PASS_OPEN_RPL status %u for STID %u\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_dev*, %struct.sk_buff*)* @chtls_pass_open_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_pass_open_rpl(%struct.chtls_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cpl_pass_open_rpl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.listen_ctx*, align 8
  store %struct.chtls_dev* %0, %struct.chtls_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.cpl_pass_open_rpl* @cplhdr(%struct.sk_buff* %9)
  %11 = load i32, i32* @RSS_HDR, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cpl_pass_open_rpl, %struct.cpl_pass_open_rpl* %10, i64 %12
  store %struct.cpl_pass_open_rpl* %13, %struct.cpl_pass_open_rpl** %6, align 8
  %14 = load %struct.cpl_pass_open_rpl*, %struct.cpl_pass_open_rpl** %6, align 8
  %15 = call i32 @GET_TID(%struct.cpl_pass_open_rpl* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %17 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @lookup_stid(i32 %18, i32 %19)
  %21 = inttoptr i64 %20 to %struct.listen_ctx*
  store %struct.listen_ctx* %21, %struct.listen_ctx** %8, align 8
  %22 = load %struct.listen_ctx*, %struct.listen_ctx** %8, align 8
  %23 = icmp ne %struct.listen_ctx* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @CPL_RET_BUF_DONE, align 4
  store i32 %25, i32* %3, align 4
  br label %69

26:                                               ; preds = %2
  %27 = load %struct.listen_ctx*, %struct.listen_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @T4_LISTEN_START_PENDING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i64, i64* @T4_LISTEN_STARTED, align 8
  %34 = load %struct.listen_ctx*, %struct.listen_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @CPL_RET_BUF_DONE, align 4
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %26
  %38 = load %struct.cpl_pass_open_rpl*, %struct.cpl_pass_open_rpl** %6, align 8
  %39 = getelementptr inbounds %struct.cpl_pass_open_rpl, %struct.cpl_pass_open_rpl* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CPL_ERR_NONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.cpl_pass_open_rpl*, %struct.cpl_pass_open_rpl** %6, align 8
  %45 = getelementptr inbounds %struct.cpl_pass_open_rpl, %struct.cpl_pass_open_rpl* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %46, i32 %47)
  %49 = load i32, i32* @CPL_RET_BUF_DONE, align 4
  store i32 %49, i32* %3, align 4
  br label %69

50:                                               ; preds = %37
  %51 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %52 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.listen_ctx*, %struct.listen_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cxgb4_free_stid(i32 %53, i32 %54, i32 %59)
  %61 = load %struct.listen_ctx*, %struct.listen_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @sock_put(%struct.TYPE_2__* %63)
  %65 = load %struct.listen_ctx*, %struct.listen_ctx** %8, align 8
  %66 = call i32 @kfree(%struct.listen_ctx* %65)
  %67 = load i32, i32* @THIS_MODULE, align 4
  %68 = call i32 @module_put(i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %50, %43, %32, %24
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.cpl_pass_open_rpl* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_pass_open_rpl*) #1

declare dso_local i64 @lookup_stid(i32, i32) #1

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
