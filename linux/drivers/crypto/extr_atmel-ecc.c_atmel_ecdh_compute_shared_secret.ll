; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-ecc.c_atmel_ecdh_compute_shared_secret.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-ecc.c_atmel_ecdh_compute_shared_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpp_request = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_kpp = type { i32 }
%struct.atmel_ecdh_ctx = type { i32, i32, i64 }
%struct.atmel_i2c_work_data = type { i32, i32, %struct.atmel_ecdh_ctx* }

@ATMEL_ECC_PUBKEY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@atmel_ecdh_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kpp_request*)* @atmel_ecdh_compute_shared_secret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ecdh_compute_shared_secret(%struct.kpp_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kpp_request*, align 8
  %4 = alloca %struct.crypto_kpp*, align 8
  %5 = alloca %struct.atmel_ecdh_ctx*, align 8
  %6 = alloca %struct.atmel_i2c_work_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kpp_request* %0, %struct.kpp_request** %3, align 8
  %9 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %10 = call %struct.crypto_kpp* @crypto_kpp_reqtfm(%struct.kpp_request* %9)
  store %struct.crypto_kpp* %10, %struct.crypto_kpp** %4, align 8
  %11 = load %struct.crypto_kpp*, %struct.crypto_kpp** %4, align 8
  %12 = call %struct.atmel_ecdh_ctx* @kpp_tfm_ctx(%struct.crypto_kpp* %11)
  store %struct.atmel_ecdh_ctx* %12, %struct.atmel_ecdh_ctx** %5, align 8
  %13 = load %struct.atmel_ecdh_ctx*, %struct.atmel_ecdh_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.atmel_ecdh_ctx, %struct.atmel_ecdh_ctx* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %19 = load %struct.atmel_ecdh_ctx*, %struct.atmel_ecdh_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.atmel_ecdh_ctx, %struct.atmel_ecdh_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kpp_request_set_tfm(%struct.kpp_request* %18, i32 %21)
  %23 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %24 = call i32 @crypto_kpp_compute_shared_secret(%struct.kpp_request* %23)
  store i32 %24, i32* %2, align 4
  br label %84

25:                                               ; preds = %1
  %26 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %27 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ATMEL_ECC_PUBKEY_SIZE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %84

34:                                               ; preds = %25
  %35 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %36 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @GFP_KERNEL, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.atmel_i2c_work_data* @kmalloc(i32 16, i32 %48)
  store %struct.atmel_i2c_work_data* %49, %struct.atmel_i2c_work_data** %6, align 8
  %50 = load %struct.atmel_i2c_work_data*, %struct.atmel_i2c_work_data** %6, align 8
  %51 = icmp ne %struct.atmel_i2c_work_data* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %84

55:                                               ; preds = %46
  %56 = load %struct.atmel_ecdh_ctx*, %struct.atmel_ecdh_ctx** %5, align 8
  %57 = load %struct.atmel_i2c_work_data*, %struct.atmel_i2c_work_data** %6, align 8
  %58 = getelementptr inbounds %struct.atmel_i2c_work_data, %struct.atmel_i2c_work_data* %57, i32 0, i32 2
  store %struct.atmel_ecdh_ctx* %56, %struct.atmel_ecdh_ctx** %58, align 8
  %59 = load %struct.atmel_ecdh_ctx*, %struct.atmel_ecdh_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.atmel_ecdh_ctx, %struct.atmel_ecdh_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.atmel_i2c_work_data*, %struct.atmel_i2c_work_data** %6, align 8
  %63 = getelementptr inbounds %struct.atmel_i2c_work_data, %struct.atmel_i2c_work_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.atmel_i2c_work_data*, %struct.atmel_i2c_work_data** %6, align 8
  %65 = getelementptr inbounds %struct.atmel_i2c_work_data, %struct.atmel_i2c_work_data* %64, i32 0, i32 0
  %66 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %67 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @atmel_i2c_init_ecdh_cmd(i32* %65, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %80

73:                                               ; preds = %55
  %74 = load %struct.atmel_i2c_work_data*, %struct.atmel_i2c_work_data** %6, align 8
  %75 = load i32, i32* @atmel_ecdh_done, align 4
  %76 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %77 = call i32 @atmel_i2c_enqueue(%struct.atmel_i2c_work_data* %74, i32 %75, %struct.kpp_request* %76)
  %78 = load i32, i32* @EINPROGRESS, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %84

80:                                               ; preds = %72
  %81 = load %struct.atmel_i2c_work_data*, %struct.atmel_i2c_work_data** %6, align 8
  %82 = call i32 @kfree(%struct.atmel_i2c_work_data* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %73, %52, %31, %17
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.crypto_kpp* @crypto_kpp_reqtfm(%struct.kpp_request*) #1

declare dso_local %struct.atmel_ecdh_ctx* @kpp_tfm_ctx(%struct.crypto_kpp*) #1

declare dso_local i32 @kpp_request_set_tfm(%struct.kpp_request*, i32) #1

declare dso_local i32 @crypto_kpp_compute_shared_secret(%struct.kpp_request*) #1

declare dso_local %struct.atmel_i2c_work_data* @kmalloc(i32, i32) #1

declare dso_local i32 @atmel_i2c_init_ecdh_cmd(i32*, i32) #1

declare dso_local i32 @atmel_i2c_enqueue(%struct.atmel_i2c_work_data*, i32, %struct.kpp_request*) #1

declare dso_local i32 @kfree(%struct.atmel_i2c_work_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
