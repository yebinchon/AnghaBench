; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_hw_setup_rdesc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_hw_setup_rdesc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EIP197_RD64_FETCH_SIZE = common dso_local global i32 0, align 4
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
@EIP197_HIA_xDR_WR_RES_BUF = common dso_local global i32 0, align 4
@EIP197_HIA_xDR_WR_CTRL_BUF = common dso_local global i32 0, align 4
@EIP197_HIA_xDR_DMA_CFG = common dso_local global i64 0, align 8
@EIP197_HIA_xDR_STAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*)* @safexcel_hw_setup_rdesc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_hw_setup_rdesc_rings(%struct.safexcel_crypto_priv* %0) #0 {
  %2 = alloca %struct.safexcel_crypto_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %2, align 8
  %7 = load i32, i32* @EIP197_RD64_FETCH_SIZE, align 4
  %8 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %9 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = sub nsw i32 %12, 1
  %14 = add nsw i32 %7, %13
  %15 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %16 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %14, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %21 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %28 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* %3, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @uint, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %37 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EIP197_FETCH_DEPTH, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @min_t(i32 %34, i32 %35, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %52

43:                                               ; preds = %1
  %44 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %45 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %3, align 4
  %50 = sdiv i32 %48, %49
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %43, %26
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %175, %52
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %56 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %178

60:                                               ; preds = %53
  %61 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %62 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @lower_32_bits(i32 %69)
  %71 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %71, i32 %72)
  %74 = load i64, i64* @EIP197_HIA_xDR_RING_BASE_ADDR_LO, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %78 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @upper_32_bits(i32 %85)
  %87 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %87, i32 %88)
  %90 = load i64, i64* @EIP197_HIA_xDR_RING_BASE_ADDR_HI, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load i32, i32* @EIP197_xDR_DESC_MODE_64BIT, align 4
  %94 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %95 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 16
  %99 = or i32 %93, %98
  %100 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %101 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %99, %103
  %105 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %105, i32 %106)
  %108 = load i64, i64* @EIP197_HIA_xDR_DESC_SIZE, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %114 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %112, %116
  %118 = mul nsw i32 %111, %117
  %119 = shl i32 %118, 16
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %122 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %120, %124
  %126 = or i32 %119, %125
  %127 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %127, i32 %128)
  %130 = load i64, i64* @EIP197_HIA_xDR_CFG, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel(i32 %126, i64 %131)
  %133 = load i32, i32* @WR_CACHE_3BITS, align 4
  %134 = call i32 @EIP197_HIA_xDR_CFG_WR_CACHE(i32 %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* @RD_CACHE_3BITS, align 4
  %136 = call i32 @EIP197_HIA_xDR_CFG_RD_CACHE(i32 %135)
  %137 = load i32, i32* %4, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* @EIP197_HIA_xDR_WR_RES_BUF, align 4
  %140 = load i32, i32* @EIP197_HIA_xDR_WR_CTRL_BUF, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %4, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %145, i32 %146)
  %148 = load i64, i64* @EIP197_HIA_xDR_DMA_CFG, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel(i32 %144, i64 %149)
  %151 = call i32 @GENMASK(i32 7, i32 0)
  %152 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %152, i32 %153)
  %155 = load i64, i64* @EIP197_HIA_xDR_STAT, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel(i32 %151, i64 %156)
  %158 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %159 = call i64 @EIP197_HIA_AIC_R(%struct.safexcel_crypto_priv* %158)
  %160 = load i32, i32* %5, align 4
  %161 = call i64 @EIP197_HIA_AIC_R_ENABLE_CTRL(i32 %160)
  %162 = add nsw i64 %159, %161
  %163 = call i32 @readl(i64 %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @EIP197_RDR_IRQ(i32 %164)
  %166 = load i32, i32* %4, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* %4, align 4
  %169 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %170 = call i64 @EIP197_HIA_AIC_R(%struct.safexcel_crypto_priv* %169)
  %171 = load i32, i32* %5, align 4
  %172 = call i64 @EIP197_HIA_AIC_R_ENABLE_CTRL(i32 %171)
  %173 = add nsw i64 %170, %172
  %174 = call i32 @writel(i32 %168, i64 %173)
  br label %175

175:                                              ; preds = %60
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %53

178:                                              ; preds = %53
  ret i32 0
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @EIP197_HIA_xDR_CFG_WR_CACHE(i32) #1

declare dso_local i32 @EIP197_HIA_xDR_CFG_RD_CACHE(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @EIP197_HIA_AIC_R(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_HIA_AIC_R_ENABLE_CTRL(i32) #1

declare dso_local i32 @EIP197_RDR_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
