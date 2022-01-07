; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_hw_setup_cdesc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_hw_setup_cdesc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SAFEXCEL_HW_EIP197 = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@EIP197_FETCH_DEPTH = common dso_local global i32 0, align 4
@EIP197_HIA_xDR_RING_BASE_ADDR_LO = common dso_local global i64 0, align 8
@EIP197_HIA_xDR_RING_BASE_ADDR_HI = common dso_local global i64 0, align 8
@EIP197_xDR_DESC_MODE_64BIT = common dso_local global i32 0, align 4
@EIP197_HIA_xDR_DESC_SIZE = common dso_local global i64 0, align 8
@EIP197_HIA_xDR_CFG = common dso_local global i64 0, align 8
@WR_CACHE_3BITS = common dso_local global i32 0, align 4
@RD_CACHE_3BITS = common dso_local global i32 0, align 4
@EIP197_HIA_xDR_DMA_CFG = common dso_local global i64 0, align 8
@EIP197_HIA_xDR_STAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*)* @safexcel_hw_setup_cdesc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_hw_setup_cdesc_rings(%struct.safexcel_crypto_priv* %0) #0 {
  %2 = alloca %struct.safexcel_crypto_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %2, align 8
  %7 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %8 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %12 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = sub nsw i32 %15, 1
  %17 = add nsw i32 %10, %16
  %18 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %19 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %17, %21
  store i32 %22, i32* %3, align 4
  %23 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %24 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %1
  %30 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %31 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %3, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @uint, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %40 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EIP197_FETCH_DEPTH, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i32 @min_t(i32 %37, i32 %38, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %1
  %47 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %48 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %3, align 4
  %53 = sdiv i32 %51, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %46, %29
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %156, %55
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %59 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %159

63:                                               ; preds = %56
  %64 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %65 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @lower_32_bits(i32 %72)
  %74 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %74, i32 %75)
  %77 = load i64, i64* @EIP197_HIA_xDR_RING_BASE_ADDR_LO, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %81 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @upper_32_bits(i32 %88)
  %90 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %90, i32 %91)
  %93 = load i64, i64* @EIP197_HIA_xDR_RING_BASE_ADDR_HI, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = load i32, i32* @EIP197_xDR_DESC_MODE_64BIT, align 4
  %97 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %98 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 16
  %102 = or i32 %96, %101
  %103 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %104 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %102, %106
  %108 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %108, i32 %109)
  %111 = load i64, i64* @EIP197_HIA_xDR_DESC_SIZE, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writel(i32 %107, i64 %112)
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %117 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %115, %119
  %121 = mul nsw i32 %114, %120
  %122 = shl i32 %121, 16
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %125 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %123, %127
  %129 = or i32 %122, %128
  %130 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %130, i32 %131)
  %133 = load i64, i64* @EIP197_HIA_xDR_CFG, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @writel(i32 %129, i64 %134)
  %136 = load i32, i32* @WR_CACHE_3BITS, align 4
  %137 = call i32 @EIP197_HIA_xDR_CFG_WR_CACHE(i32 %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* @RD_CACHE_3BITS, align 4
  %139 = call i32 @EIP197_HIA_xDR_CFG_RD_CACHE(i32 %138)
  %140 = load i32, i32* %4, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %143, i32 %144)
  %146 = load i64, i64* @EIP197_HIA_xDR_DMA_CFG, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i32 %142, i64 %147)
  %149 = call i32 @GENMASK(i32 5, i32 0)
  %150 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %150, i32 %151)
  %153 = load i64, i64* @EIP197_HIA_xDR_STAT, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  br label %156

156:                                              ; preds = %63
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %56

159:                                              ; preds = %56
  ret i32 0
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @EIP197_HIA_xDR_CFG_WR_CACHE(i32) #1

declare dso_local i32 @EIP197_HIA_xDR_CFG_RD_CACHE(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
