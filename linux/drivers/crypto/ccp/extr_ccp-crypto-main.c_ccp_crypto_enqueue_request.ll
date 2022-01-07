; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-main.c_ccp_crypto_enqueue_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-main.c_ccp_crypto_enqueue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32, i32 }
%struct.ccp_cmd = type { i32, %struct.ccp_crypto_cmd*, i32 }
%struct.ccp_crypto_cmd = type { i32, %struct.crypto_async_request*, %struct.ccp_cmd* }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ccp_crypto_complete = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@CCP_CMD_MAY_BACKLOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccp_crypto_enqueue_request(%struct.crypto_async_request* %0, %struct.ccp_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca %struct.ccp_cmd*, align 8
  %6 = alloca %struct.ccp_crypto_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %4, align 8
  store %struct.ccp_cmd* %1, %struct.ccp_cmd** %5, align 8
  %8 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %9 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.ccp_crypto_cmd* @kzalloc(i32 24, i32 %20)
  store %struct.ccp_crypto_cmd* %21, %struct.ccp_crypto_cmd** %6, align 8
  %22 = load %struct.ccp_crypto_cmd*, %struct.ccp_crypto_cmd** %6, align 8
  %23 = icmp ne %struct.ccp_crypto_cmd* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %18
  %28 = load %struct.ccp_cmd*, %struct.ccp_cmd** %5, align 8
  %29 = load %struct.ccp_crypto_cmd*, %struct.ccp_crypto_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.ccp_crypto_cmd, %struct.ccp_crypto_cmd* %29, i32 0, i32 2
  store %struct.ccp_cmd* %28, %struct.ccp_cmd** %30, align 8
  %31 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %32 = load %struct.ccp_crypto_cmd*, %struct.ccp_crypto_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.ccp_crypto_cmd, %struct.ccp_crypto_cmd* %32, i32 0, i32 1
  store %struct.crypto_async_request* %31, %struct.crypto_async_request** %33, align 8
  %34 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %35 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ccp_crypto_cmd*, %struct.ccp_crypto_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.ccp_crypto_cmd, %struct.ccp_crypto_cmd* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @ccp_crypto_complete, align 4
  %40 = load %struct.ccp_cmd*, %struct.ccp_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ccp_crypto_cmd*, %struct.ccp_crypto_cmd** %6, align 8
  %43 = load %struct.ccp_cmd*, %struct.ccp_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %43, i32 0, i32 1
  store %struct.ccp_crypto_cmd* %42, %struct.ccp_crypto_cmd** %44, align 8
  %45 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %46 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %27
  %52 = load i32, i32* @CCP_CMD_MAY_BACKLOG, align 4
  %53 = load %struct.ccp_cmd*, %struct.ccp_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %64

57:                                               ; preds = %27
  %58 = load i32, i32* @CCP_CMD_MAY_BACKLOG, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.ccp_cmd*, %struct.ccp_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %57, %51
  %65 = load %struct.ccp_crypto_cmd*, %struct.ccp_crypto_cmd** %6, align 8
  %66 = call i32 @ccp_crypto_enqueue_cmd(%struct.ccp_crypto_cmd* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %24
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.ccp_crypto_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @ccp_crypto_enqueue_cmd(%struct.ccp_crypto_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
