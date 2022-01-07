; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_clear_copy_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_clear_copy_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_aes_dev = type { i32 }

@OMAP_CRYPTO_COPY_MASK = common dso_local global i32 0, align 4
@FLAGS_IN_DATA_ST_SHIFT = common dso_local global i32 0, align 4
@FLAGS_OUT_DATA_ST_SHIFT = common dso_local global i32 0, align 4
@FLAGS_ASSOC_DATA_ST_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_aes_clear_copy_flags(%struct.omap_aes_dev* %0) #0 {
  %2 = alloca %struct.omap_aes_dev*, align 8
  store %struct.omap_aes_dev* %0, %struct.omap_aes_dev** %2, align 8
  %3 = load i32, i32* @OMAP_CRYPTO_COPY_MASK, align 4
  %4 = load i32, i32* @FLAGS_IN_DATA_ST_SHIFT, align 4
  %5 = shl i32 %3, %4
  %6 = xor i32 %5, -1
  %7 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %8 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @OMAP_CRYPTO_COPY_MASK, align 4
  %12 = load i32, i32* @FLAGS_OUT_DATA_ST_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %16 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @OMAP_CRYPTO_COPY_MASK, align 4
  %20 = load i32, i32* @FLAGS_ASSOC_DATA_ST_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %2, align 8
  %24 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
