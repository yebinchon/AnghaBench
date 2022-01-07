; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i64, i32 }
%struct.atmel_aes_gcm_ctx = type { i32, i32 }

@AES_FLAGS_OPMODE_MASK = common dso_local global i32 0, align 4
@AES_FLAGS_GTAGEN = common dso_local global i32 0, align 4
@AES_FLAGS_CTR = common dso_local global i32 0, align 4
@atmel_aes_gcm_finalize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_gcm_tag(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca %struct.atmel_aes_dev*, align 8
  %3 = alloca %struct.atmel_aes_gcm_ctx*, align 8
  %4 = alloca i64, align 8
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %2, align 8
  %5 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %6 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32 %7)
  store %struct.atmel_aes_gcm_ctx* %8, %struct.atmel_aes_gcm_ctx** %3, align 8
  %9 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %10 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* @AES_FLAGS_OPMODE_MASK, align 4
  %13 = load i32, i32* @AES_FLAGS_GTAGEN, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %18 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load i32, i32* @AES_FLAGS_CTR, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %24 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = or i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %28 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @atmel_aes_write_ctrl(%struct.atmel_aes_dev* %27, i32 0, i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %34 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %36 = call i32 @AES_IDATAR(i32 0)
  %37 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @atmel_aes_write_block(%struct.atmel_aes_dev* %35, i32 %36, i32 %39)
  %41 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %42 = load i32, i32* @atmel_aes_gcm_finalize, align 4
  %43 = call i32 @atmel_aes_wait_for_data_ready(%struct.atmel_aes_dev* %41, i32 %42)
  ret i32 %43
}

declare dso_local %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32) #1

declare dso_local i32 @atmel_aes_write_ctrl(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @atmel_aes_write_block(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @AES_IDATAR(i32) #1

declare dso_local i32 @atmel_aes_wait_for_data_ready(%struct.atmel_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
