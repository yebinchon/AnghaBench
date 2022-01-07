; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_handle_result_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_handle_result_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)*, i32 }
%struct.safexcel_context = type { i32 (%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request.0*, i32*, i32*)* }
%struct.crypto_async_request.0 = type opaque

@EIP197_HIA_xDR_PROC_COUNT = common dso_local global i64 0, align 8
@EIP197_xDR_PROC_xD_PKT_OFFSET = common dso_local global i32 0, align 4
@EIP197_xDR_PROC_xD_PKT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to handle result (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_crypto_priv*, i32)* @safexcel_handle_result_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safexcel_handle_result_descriptor(%struct.safexcel_crypto_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.safexcel_crypto_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca %struct.safexcel_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %105, %2
  store i32 0, i32* %11, align 4
  %15 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %15, i32 %16)
  %18 = load i64, i64* @EIP197_HIA_xDR_PROC_COUNT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @EIP197_xDR_PROC_xD_PKT_OFFSET, align 4
  %22 = load i32, i32* %9, align 4
  %23 = ashr i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @EIP197_xDR_PROC_xD_PKT_MASK, align 4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %14
  br label %107

30:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %77, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %31
  %36 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call %struct.crypto_async_request* @safexcel_rdr_req_get(%struct.safexcel_crypto_priv* %36, i32 %37)
  store %struct.crypto_async_request* %38, %struct.crypto_async_request** %5, align 8
  %39 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %40 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.safexcel_context* @crypto_tfm_ctx(i32 %41)
  store %struct.safexcel_context* %42, %struct.safexcel_context** %6, align 8
  %43 = load %struct.safexcel_context*, %struct.safexcel_context** %6, align 8
  %44 = getelementptr inbounds %struct.safexcel_context, %struct.safexcel_context* %43, i32 0, i32 0
  %45 = load i32 (%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request.0*, i32*, i32*)*, i32 (%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request.0*, i32*, i32*)** %44, align 8
  %46 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %49 = bitcast %struct.crypto_async_request* %48 to %struct.crypto_async_request.0*
  %50 = call i32 %45(%struct.safexcel_crypto_priv* %46, i32 %47, %struct.crypto_async_request.0* %49, i32* %13, i32* %7)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %35
  %54 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %55 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %81

59:                                               ; preds = %35
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = call i32 (...) @local_bh_disable()
  %64 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %65 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %64, i32 0, i32 0
  %66 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %65, align 8
  %67 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 %66(%struct.crypto_async_request* %67, i32 %68)
  %70 = call i32 (...) @local_bh_enable()
  br label %71

71:                                               ; preds = %62, %59
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %31

80:                                               ; preds = %31
  br label %81

81:                                               ; preds = %80, %53
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @EIP197_xDR_PROC_xD_PKT(i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %89 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %87, %91
  %93 = call i32 @EIP197_xDR_PROC_xD_COUNT(i32 %92)
  %94 = or i32 %86, %93
  %95 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %95, i32 %96)
  %98 = load i64, i64* @EIP197_HIA_xDR_PROC_COUNT, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  br label %101

101:                                              ; preds = %84, %81
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @EIP197_xDR_PROC_xD_PKT_MASK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %14

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %29
  %108 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %109 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = call i32 @spin_lock_bh(i32* %114)
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %119 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %125, %117
  store i64 %126, i64* %124, align 8
  %127 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @safexcel_try_push_requests(%struct.safexcel_crypto_priv* %127, i32 %128)
  %130 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %131 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %107
  %140 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %141 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  br label %147

147:                                              ; preds = %139, %107
  %148 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %149 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = call i32 @spin_unlock_bh(i32* %154)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local %struct.crypto_async_request* @safexcel_rdr_req_get(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local %struct.safexcel_context* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @EIP197_xDR_PROC_xD_PKT(i32) #1

declare dso_local i32 @EIP197_xDR_PROC_xD_COUNT(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @safexcel_try_push_requests(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
