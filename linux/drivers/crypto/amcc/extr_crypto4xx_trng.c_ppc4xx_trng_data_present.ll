; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_trng.c_ppc4xx_trng_data_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_trng.c_ppc4xx_trng_data_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.crypto4xx_device = type { i64 }

@PPC4XX_TRNG_STAT = common dso_local global i64 0, align 8
@PPC4XX_TRNG_STAT_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i32)* @ppc4xx_trng_data_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_trng_data_present(%struct.hwrng* %0, i32 %1) #0 {
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto4xx_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %10 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.crypto4xx_device*
  store %struct.crypto4xx_device* %13, %struct.crypto4xx_device** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %34, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 20
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %5, align 8
  %19 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PPC4XX_TRNG_STAT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @in_le32(i64 %22)
  %24 = load i32, i32* @PPC4XX_TRNG_STAT_B, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %17
  store i32 1, i32* %8, align 4
  br label %37

32:                                               ; preds = %28
  %33 = call i32 @udelay(i32 10)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %14

37:                                               ; preds = %31, %14
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @in_le32(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
