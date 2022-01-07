; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_xts_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_xts_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i64, i32, i32 }
%struct.atmel_aes_xts_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ablkcipher_request = type { i32 }
%struct.atmel_aes_reqctx = type { i32 }

@AES_FLAGS_MODE_MASK = common dso_local global i64 0, align 8
@AES_FLAGS_ECB = common dso_local global i32 0, align 4
@AES_FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@atmel_aes_xts_process_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_xts_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_xts_start(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca %struct.atmel_aes_xts_ctx*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca %struct.atmel_aes_reqctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  %9 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %10 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.atmel_aes_xts_ctx* @atmel_aes_xts_ctx_cast(i32 %11)
  store %struct.atmel_aes_xts_ctx* %12, %struct.atmel_aes_xts_ctx** %4, align 8
  %13 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.ablkcipher_request* @ablkcipher_request_cast(i32 %15)
  store %struct.ablkcipher_request* %16, %struct.ablkcipher_request** %5, align 8
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %18 = call %struct.atmel_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %17)
  store %struct.atmel_aes_reqctx* %18, %struct.atmel_aes_reqctx** %6, align 8
  %19 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %20 = load %struct.atmel_aes_reqctx*, %struct.atmel_aes_reqctx** %6, align 8
  %21 = call i32 @atmel_aes_set_mode(%struct.atmel_aes_dev* %19, %struct.atmel_aes_reqctx* %20)
  %22 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %23 = call i32 @atmel_aes_hw_init(%struct.atmel_aes_dev* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @atmel_aes_complete(%struct.atmel_aes_dev* %27, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %69

30:                                               ; preds = %1
  %31 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %32 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* @AES_FLAGS_MODE_MASK, align 8
  %35 = xor i64 %34, -1
  %36 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %37 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i32, i32* @AES_FLAGS_ECB, align 4
  %41 = load i32, i32* @AES_FLAGS_ENCRYPT, align 4
  %42 = or i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %45 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %49 = load %struct.atmel_aes_xts_ctx*, %struct.atmel_aes_xts_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.atmel_aes_xts_ctx, %struct.atmel_aes_xts_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.atmel_aes_xts_ctx*, %struct.atmel_aes_xts_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.atmel_aes_xts_ctx, %struct.atmel_aes_xts_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @atmel_aes_write_ctrl_key(%struct.atmel_aes_dev* %48, i32 0, i32* null, i32 %51, i32 %55)
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %59 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %61 = call i32 @AES_IDATAR(i32 0)
  %62 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %63 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @atmel_aes_write_block(%struct.atmel_aes_dev* %60, i32 %61, i32 %64)
  %66 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %67 = load i32, i32* @atmel_aes_xts_process_data, align 4
  %68 = call i32 @atmel_aes_wait_for_data_ready(%struct.atmel_aes_dev* %66, i32 %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %30, %26
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.atmel_aes_xts_ctx* @atmel_aes_xts_ctx_cast(i32) #1

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(i32) #1

declare dso_local %struct.atmel_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @atmel_aes_set_mode(%struct.atmel_aes_dev*, %struct.atmel_aes_reqctx*) #1

declare dso_local i32 @atmel_aes_hw_init(%struct.atmel_aes_dev*) #1

declare dso_local i32 @atmel_aes_complete(%struct.atmel_aes_dev*, i32) #1

declare dso_local i32 @atmel_aes_write_ctrl_key(%struct.atmel_aes_dev*, i32, i32*, i32, i32) #1

declare dso_local i32 @atmel_aes_write_block(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @AES_IDATAR(i32) #1

declare dso_local i32 @atmel_aes_wait_for_data_ready(%struct.atmel_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
