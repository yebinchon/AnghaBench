; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_invalidate_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_invalidate_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.safexcel_crypto_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.safexcel_command_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i32 }
%struct.safexcel_result_desc = type { %struct.TYPE_3__ }

@EIP197_TYPE_EXTENDED = common dso_local global i32 0, align 4
@CONTEXT_CONTROL_INV_TR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @safexcel_invalidate_cache(%struct.crypto_async_request* %0, %struct.safexcel_crypto_priv* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca %struct.safexcel_crypto_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.safexcel_command_desc*, align 8
  %11 = alloca %struct.safexcel_result_desc*, align 8
  %12 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %6, align 8
  store %struct.safexcel_crypto_priv* %1, %struct.safexcel_crypto_priv** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.safexcel_result_desc* @safexcel_add_cdesc(%struct.safexcel_crypto_priv* %13, i32 %14, i32 1, i32 1, i32 0, i32 0, i32 0, i32 %15)
  %17 = bitcast %struct.safexcel_result_desc* %16 to %struct.safexcel_command_desc*
  store %struct.safexcel_command_desc* %17, %struct.safexcel_command_desc** %10, align 8
  %18 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %10, align 8
  %19 = bitcast %struct.safexcel_command_desc* %18 to %struct.safexcel_result_desc*
  %20 = call i64 @IS_ERR(%struct.safexcel_result_desc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %10, align 8
  %24 = bitcast %struct.safexcel_command_desc* %23 to %struct.safexcel_result_desc*
  %25 = call i32 @PTR_ERR(%struct.safexcel_result_desc* %24)
  store i32 %25, i32* %5, align 4
  br label %68

26:                                               ; preds = %4
  %27 = load i32, i32* @EIP197_TYPE_EXTENDED, align 4
  %28 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %10, align 8
  %29 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %10, align 8
  %32 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %10, align 8
  %35 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @CONTEXT_CONTROL_INV_TR, align 4
  %38 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %10, align 8
  %39 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.safexcel_result_desc* @safexcel_add_rdesc(%struct.safexcel_crypto_priv* %41, i32 %42, i32 1, i32 1, i32 0, i32 0)
  store %struct.safexcel_result_desc* %43, %struct.safexcel_result_desc** %11, align 8
  %44 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %11, align 8
  %45 = call i64 @IS_ERR(%struct.safexcel_result_desc* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %26
  %48 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %11, align 8
  %49 = call i32 @PTR_ERR(%struct.safexcel_result_desc* %48)
  store i32 %49, i32* %12, align 4
  br label %57

50:                                               ; preds = %26
  %51 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %11, align 8
  %54 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %55 = call i32 @safexcel_rdr_req_set(%struct.safexcel_crypto_priv* %51, i32 %52, %struct.safexcel_result_desc* %53, %struct.crypto_async_request* %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %68

57:                                               ; preds = %47
  %58 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %59 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %60 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @safexcel_ring_rollback_wptr(%struct.safexcel_crypto_priv* %58, i32* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %57, %50, %22
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.safexcel_result_desc* @safexcel_add_cdesc(%struct.safexcel_crypto_priv*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.safexcel_result_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.safexcel_result_desc*) #1

declare dso_local %struct.safexcel_result_desc* @safexcel_add_rdesc(%struct.safexcel_crypto_priv*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @safexcel_rdr_req_set(%struct.safexcel_crypto_priv*, i32, %struct.safexcel_result_desc*, %struct.crypto_async_request*) #1

declare dso_local i32 @safexcel_ring_rollback_wptr(%struct.safexcel_crypto_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
