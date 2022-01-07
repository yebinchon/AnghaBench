; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-crc32.c_stm32_crc_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-crc32.c_stm32_crc_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.stm32_crc_desc_ctx = type { i32 }
%struct.stm32_crc_ctx = type { i64 }

@CRC32C_POLY_LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @stm32_crc_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_crc_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stm32_crc_desc_ctx*, align 8
  %6 = alloca %struct.stm32_crc_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %8 = call %struct.stm32_crc_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %7)
  store %struct.stm32_crc_desc_ctx* %8, %struct.stm32_crc_desc_ctx** %5, align 8
  %9 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %10 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.stm32_crc_ctx* @crypto_shash_ctx(i32 %11)
  store %struct.stm32_crc_ctx* %12, %struct.stm32_crc_ctx** %6, align 8
  %13 = load %struct.stm32_crc_ctx*, %struct.stm32_crc_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.stm32_crc_ctx, %struct.stm32_crc_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CRC32C_POLY_LE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.stm32_crc_desc_ctx*, %struct.stm32_crc_desc_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.stm32_crc_desc_ctx, %struct.stm32_crc_desc_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.stm32_crc_desc_ctx*, %struct.stm32_crc_desc_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.stm32_crc_desc_ctx, %struct.stm32_crc_desc_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i32 [ %22, %18 ], [ %26, %23 ]
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @put_unaligned_le32(i32 %28, i32* %29)
  ret i32 0
}

declare dso_local %struct.stm32_crc_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.stm32_crc_ctx* @crypto_shash_ctx(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
