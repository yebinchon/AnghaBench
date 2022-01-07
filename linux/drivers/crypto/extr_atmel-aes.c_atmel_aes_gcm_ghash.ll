; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_ghash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_ghash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i64, i32*, i32 }
%struct.atmel_aes_gcm_ctx = type { i32, i32*, i32* }

@atmel_aes_gcm_ghash_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*, i32*, i64, i32*, i32*, i32)* @atmel_aes_gcm_ghash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_gcm_ghash(%struct.atmel_aes_dev* %0, i32* %1, i64 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.atmel_aes_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.atmel_aes_gcm_ctx*, align 8
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %15 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32 %16)
  store %struct.atmel_aes_gcm_ctx* %17, %struct.atmel_aes_gcm_ctx** %13, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %20 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %23 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %13, align 8
  %26 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %13, align 8
  %29 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %13, align 8
  %32 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %34 = call i32 @atmel_aes_write_ctrl(%struct.atmel_aes_dev* %33, i32 0, i32* null)
  %35 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %36 = load i32, i32* @atmel_aes_gcm_ghash_init, align 4
  %37 = call i32 @atmel_aes_wait_for_data_ready(%struct.atmel_aes_dev* %35, i32 %36)
  ret i32 %37
}

declare dso_local %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32) #1

declare dso_local i32 @atmel_aes_write_ctrl(%struct.atmel_aes_dev*, i32, i32*) #1

declare dso_local i32 @atmel_aes_wait_for_data_ready(%struct.atmel_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
