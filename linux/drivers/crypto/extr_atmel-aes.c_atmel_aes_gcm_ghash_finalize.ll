; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_ghash_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_ghash_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i64, i32, {}*, i32 }
%struct.atmel_aes_gcm_ctx = type { i32 (%struct.atmel_aes_dev.0*)*, i32 }
%struct.atmel_aes_dev.0 = type opaque

@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@AES_ISR = common dso_local global i32 0, align 4
@AES_INT_DATARDY = common dso_local global i32 0, align 4
@AES_IER = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_ghash_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_gcm_ghash_finalize(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca %struct.atmel_aes_gcm_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  %6 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %7 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32 %8)
  store %struct.atmel_aes_gcm_ctx* %9, %struct.atmel_aes_gcm_ctx** %4, align 8
  br label %10

10:                                               ; preds = %48, %1
  %11 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %12 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %17 = call i32 @AES_IDATAR(i32 0)
  %18 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @atmel_aes_write_block(%struct.atmel_aes_dev* %16, i32 %17, i32 %20)
  %22 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %23 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 4
  store i32 %25, i32* %23, align 8
  %26 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %27 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %28 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %32 = load i32, i32* @AES_ISR, align 4
  %33 = call i32 @atmel_aes_read(%struct.atmel_aes_dev* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @AES_INT_DATARDY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %15
  %39 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %40 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %39, i32 0, i32 2
  %41 = bitcast {}** %40 to i32 (%struct.atmel_aes_dev*)**
  store i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_ghash_finalize, i32 (%struct.atmel_aes_dev*)** %41, align 8
  %42 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %43 = load i32, i32* @AES_IER, align 4
  %44 = load i32, i32* @AES_INT_DATARDY, align 4
  %45 = call i32 @atmel_aes_write(%struct.atmel_aes_dev* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @EINPROGRESS, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %62

48:                                               ; preds = %15
  br label %10

49:                                               ; preds = %10
  %50 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %51 = call i32 @AES_GHASHR(i32 0)
  %52 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @atmel_aes_read_block(%struct.atmel_aes_dev* %50, i32 %51, i32 %54)
  %56 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %56, i32 0, i32 0
  %58 = load i32 (%struct.atmel_aes_dev.0*)*, i32 (%struct.atmel_aes_dev.0*)** %57, align 8
  %59 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %60 = bitcast %struct.atmel_aes_dev* %59 to %struct.atmel_aes_dev.0*
  %61 = call i32 %58(%struct.atmel_aes_dev.0* %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %49, %38
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32) #1

declare dso_local i32 @atmel_aes_write_block(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @AES_IDATAR(i32) #1

declare dso_local i32 @atmel_aes_read(%struct.atmel_aes_dev*, i32) #1

declare dso_local i32 @atmel_aes_write(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @atmel_aes_read_block(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @AES_GHASHR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
