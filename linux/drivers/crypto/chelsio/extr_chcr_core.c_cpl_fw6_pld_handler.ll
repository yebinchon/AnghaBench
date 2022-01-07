; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_core.c_cpl_fw6_pld_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_core.c_cpl_fw6_pld_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chcr_dev = type { i32 }
%struct.crypto_async_request = type { i32 }
%struct.cpl_fw6_pld = type { i32* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Incorrect request address from the firmware\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chcr_dev*, i8*)* @cpl_fw6_pld_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpl_fw6_pld_handler(%struct.chcr_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chcr_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca %struct.cpl_fw6_pld*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adapter*, align 8
  store %struct.chcr_dev* %0, %struct.chcr_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.chcr_dev*, %struct.chcr_dev** %4, align 8
  %12 = call %struct.adapter* @padap(%struct.chcr_dev* %11)
  store %struct.adapter* %12, %struct.adapter** %10, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.cpl_fw6_pld*
  store %struct.cpl_fw6_pld* %14, %struct.cpl_fw6_pld** %7, align 8
  %15 = load %struct.cpl_fw6_pld*, %struct.cpl_fw6_pld** %7, align 8
  %16 = getelementptr inbounds %struct.cpl_fw6_pld, %struct.cpl_fw6_pld* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @be64_to_cpu(i32 %19)
  %21 = inttoptr i64 %20 to %struct.crypto_async_request*
  store %struct.crypto_async_request* %21, %struct.crypto_async_request** %6, align 8
  %22 = load %struct.cpl_fw6_pld*, %struct.cpl_fw6_pld** %7, align 8
  %23 = getelementptr inbounds %struct.cpl_fw6_pld, %struct.cpl_fw6_pld* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = bitcast i32* %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohl(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @CHK_MAC_ERR_BIT(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @CHK_PAD_ERR_BIT(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %2
  %39 = load i32, i32* @EBADMSG, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %43 = icmp ne %struct.crypto_async_request* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @chcr_handle_resp(%struct.crypto_async_request* %45, i8* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  br label %53

49:                                               ; preds = %41
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %62

53:                                               ; preds = %44
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.adapter*, %struct.adapter** %10, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @atomic_inc(i32* %59)
  br label %61

61:                                               ; preds = %56, %53
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.adapter* @padap(%struct.chcr_dev*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @CHK_MAC_ERR_BIT(i32) #1

declare dso_local i64 @CHK_PAD_ERR_BIT(i32) #1

declare dso_local i32 @chcr_handle_resp(%struct.crypto_async_request*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
