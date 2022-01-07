; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_ghash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_gcm_ghash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, i32 }
%struct.atmel_aes_gcm_ctx = type { i64 }

@AES_AADLENR = common dso_local global i32 0, align 4
@AES_CLENR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_gcm_ghash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_gcm_ghash_init(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca %struct.atmel_aes_dev*, align 8
  %3 = alloca %struct.atmel_aes_gcm_ctx*, align 8
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %2, align 8
  %4 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %5 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32 %6)
  store %struct.atmel_aes_gcm_ctx* %7, %struct.atmel_aes_gcm_ctx** %3, align 8
  %8 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %9 = load i32, i32* @AES_AADLENR, align 4
  %10 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %11 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @atmel_aes_write(%struct.atmel_aes_dev* %8, i32 %9, i32 %12)
  %14 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %15 = load i32, i32* @AES_CLENR, align 4
  %16 = call i32 @atmel_aes_write(%struct.atmel_aes_dev* %14, i32 %15, i32 0)
  %17 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %23 = call i32 @AES_GHASHR(i32 0)
  %24 = load %struct.atmel_aes_gcm_ctx*, %struct.atmel_aes_gcm_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.atmel_aes_gcm_ctx, %struct.atmel_aes_gcm_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @atmel_aes_write_block(%struct.atmel_aes_dev* %22, i32 %23, i64 %26)
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %30 = call i32 @atmel_aes_gcm_ghash_finalize(%struct.atmel_aes_dev* %29)
  ret i32 %30
}

declare dso_local %struct.atmel_aes_gcm_ctx* @atmel_aes_gcm_ctx_cast(i32) #1

declare dso_local i32 @atmel_aes_write(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @atmel_aes_write_block(%struct.atmel_aes_dev*, i32, i64) #1

declare dso_local i32 @AES_GHASHR(i32) #1

declare dso_local i32 @atmel_aes_gcm_ghash_finalize(%struct.atmel_aes_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
