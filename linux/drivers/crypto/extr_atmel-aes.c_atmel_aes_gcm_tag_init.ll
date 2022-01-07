; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_tag_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_tag_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, {}*, i32*, i32, i32 }
%struct.atmel_aes_gcm_ctx = type { i32, i32 }
%struct.aead_request = type { i32 }

@AES_FLAGS_GTAGEN = common dso_local global i32 0, align 4
@AES_ISR = common dso_local global i32 0, align 4
@AES_INT_TAGRDY = common dso_local global i32 0, align 4
@AES_IER = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@atmel_aes_gcm_tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_tag_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_gcm_tag_init(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca %struct.atmel_aes_gcm_ctx*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32*, align 8
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  %7 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32 %9)
  store %struct.atmel_aes_gcm_ctx* %10, %struct.atmel_aes_gcm_ctx** %4, align 8
  %11 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %12 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.aead_request* @aead_request_cast(i32 %13)
  store %struct.aead_request* %14, %struct.aead_request** %5, align 8
  %15 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AES_FLAGS_GTAGEN, align 4
  %22 = and i32 %20, %21
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %1
  %26 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %27 = load i32, i32* @AES_ISR, align 4
  %28 = call i32 @atmel_aes_read(%struct.atmel_aes_dev* %26, i32 %27)
  %29 = load i32, i32* @AES_INT_TAGRDY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %25
  %33 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %34 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %33, i32 0, i32 1
  %35 = bitcast {}** %34 to i32 (%struct.atmel_aes_dev*)**
  store i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_tag_init, i32 (%struct.atmel_aes_dev*)** %35, align 8
  %36 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %37 = load i32, i32* @AES_IER, align 4
  %38 = load i32, i32* @AES_INT_TAGRDY, align 4
  %39 = call i32 @atmel_aes_write(%struct.atmel_aes_dev* %36, i32 %37, i32 %38)
  %40 = load i32, i32* @EINPROGRESS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %77

42:                                               ; preds = %25
  %43 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %44 = call i32 @atmel_aes_gcm_finalize(%struct.atmel_aes_dev* %43)
  store i32 %44, i32* %2, align 4
  br label %77

45:                                               ; preds = %1
  %46 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %47 = call i32 @AES_GHASHR(i32 0)
  %48 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @atmel_aes_read_block(%struct.atmel_aes_dev* %46, i32 %47, i32 %50)
  %52 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %53 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 8
  %56 = call i32 @cpu_to_be64(i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 8
  %63 = call i32 @cpu_to_be64(i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %69 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @atmel_aes_gcm_tag, align 4
  %76 = call i32 @atmel_aes_gcm_ghash(%struct.atmel_aes_dev* %66, i32* %67, i32 %68, i32 %71, i32 %74, i32 %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %45, %42, %32
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32) #1

declare dso_local %struct.aead_request* @aead_request_cast(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atmel_aes_read(%struct.atmel_aes_dev*, i32) #1

declare dso_local i32 @atmel_aes_write(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @atmel_aes_gcm_finalize(%struct.atmel_aes_dev*) #1

declare dso_local i32 @atmel_aes_read_block(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @AES_GHASHR(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @atmel_aes_gcm_ghash(%struct.atmel_aes_dev*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
