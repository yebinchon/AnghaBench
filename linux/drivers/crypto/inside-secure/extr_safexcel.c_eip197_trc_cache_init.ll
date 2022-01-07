; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_trc_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_trc_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32, i64 }

@EIP197_CS_RAM_CTRL = common dso_local global i64 0, align 8
@EIP197_TRC_ENABLE_MASK = common dso_local global i32 0, align 4
@EIP197_TRC_ENABLE_0 = common dso_local global i32 0, align 4
@EIP197_CS_BANKSEL_MASK = common dso_local global i32 0, align 4
@EIP197_CS_BANKSEL_OFS = common dso_local global i32 0, align 4
@EIP197_TRC_ECCCTRL = common dso_local global i64 0, align 8
@EIP197_TRC_PARAMS = common dso_local global i64 0, align 8
@EIP197_TRC_PARAMS_SW_RESET = common dso_local global i32 0, align 4
@EIP197_TRC_PARAMS_DATA_ACCESS = common dso_local global i32 0, align 4
@EIP197_CS_TRC_REC_WC = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@EIP197_TRC_FREECHAIN = common dso_local global i64 0, align 8
@EIP197_TRC_PARAMS2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"TRC init: %dd,%da (%dr,%dh)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_crypto_priv*)* @eip197_trc_cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eip197_trc_cache_init(%struct.safexcel_crypto_priv* %0) #0 {
  %2 = alloca %struct.safexcel_crypto_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %2, align 8
  %13 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %14 = call i32 @eip197_trc_cache_setupvirt(%struct.safexcel_crypto_priv* %13)
  %15 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %16 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EIP197_CS_RAM_CTRL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @EIP197_TRC_ENABLE_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @EIP197_TRC_ENABLE_0, align 4
  %26 = load i32, i32* @EIP197_CS_BANKSEL_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %32 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EIP197_CS_RAM_CTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %38 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EIP197_CS_RAM_CTRL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @EIP197_CS_BANKSEL_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @EIP197_CS_BANKSEL_OFS, align 4
  %47 = ashr i32 %45, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %50 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EIP197_TRC_ECCCTRL, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 0, i64 %53)
  %55 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %56 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EIP197_TRC_PARAMS, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @EIP197_TRC_PARAMS_SW_RESET, align 4
  %62 = load i32, i32* @EIP197_TRC_PARAMS_DATA_ACCESS, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %68 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @EIP197_TRC_PARAMS, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @eip197_trc_cache_probe(%struct.safexcel_crypto_priv* %73, i32 %74, i32 -1)
  store i32 %75, i32* %4, align 4
  %76 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %77 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @EIP197_TRC_PARAMS, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @readl(i64 %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* @EIP197_TRC_PARAMS_DATA_ACCESS, align 4
  %83 = load i32, i32* @EIP197_CS_BANKSEL_MASK, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %90 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @EIP197_TRC_PARAMS, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  %95 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %96 = call i32 @eip197_trc_cache_probe(%struct.safexcel_crypto_priv* %95, i32 0, i32 -1073741825)
  %97 = ashr i32 %96, 4
  store i32 %97, i32* %5, align 4
  %98 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %99 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @EIP197_TRC_ECCCTRL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 0, i64 %102)
  %104 = load i32, i32* @EIP197_CS_TRC_REC_WC, align 4
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @EIP197_CS_TRC_REC_WC, align 4
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* @uint, align 4
  %107 = load i32, i32* %4, align 4
  %108 = ashr i32 %107, 2
  %109 = load i32, i32* %9, align 4
  %110 = sdiv i32 %108, %109
  %111 = call i32 @min_t(i32 %106, i32 %110, i32 1023)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* @uint, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %5, align 4
  %115 = ashr i32 %114, 1
  %116 = call i32 @min_t(i32 %112, i32 %113, i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %117, %118
  %120 = call i32 @__fls(i32 %119)
  %121 = sub nsw i32 %120, 2
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = shl i32 16, %122
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @uint, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %7, align 4
  %128 = ashr i32 %127, 4
  %129 = sub nsw i32 %126, %128
  %130 = call i32 @min_t(i32 %124, i32 %125, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @eip197_trc_cache_clear(%struct.safexcel_crypto_priv* %131, i32 %132, i32 %133)
  %135 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %136 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @EIP197_CS_RAM_CTRL, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @readl(i64 %139)
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* @EIP197_TRC_ENABLE_MASK, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %3, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* %3, align 4
  %146 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %147 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @EIP197_CS_RAM_CTRL, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @writel(i32 %145, i64 %150)
  %152 = call i32 @EIP197_TRC_FREECHAIN_HEAD_PTR(i32 0)
  %153 = load i32, i32* %6, align 4
  %154 = sub nsw i32 %153, 1
  %155 = call i32 @EIP197_TRC_FREECHAIN_TAIL_PTR(i32 %154)
  %156 = or i32 %152, %155
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %3, align 4
  %158 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %159 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @EIP197_TRC_FREECHAIN, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @writel(i32 %157, i64 %162)
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @EIP197_TRC_PARAMS2_RC_SZ_SMALL(i32 %164)
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @EIP197_TRC_PARAMS2_HTABLE_PTR(i32 %166)
  %168 = or i32 %165, %167
  store i32 %168, i32* %3, align 4
  %169 = load i32, i32* %3, align 4
  %170 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %171 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @EIP197_TRC_PARAMS2, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writel(i32 %169, i64 %174)
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @EIP197_TRC_PARAMS_RC_SZ_LARGE(i32 %176)
  %178 = call i32 @EIP197_TRC_PARAMS_BLK_TIMER_SPEED(i32 1)
  %179 = or i32 %177, %178
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @EIP197_TRC_PARAMS_HTABLE_SZ(i32 %180)
  %182 = or i32 %179, %181
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* %3, align 4
  %184 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %185 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @EIP197_TRC_PARAMS, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @writel(i32 %183, i64 %188)
  %190 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %191 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %196, %197
  %199 = call i32 @dev_info(i32 %192, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %193, i32 %194, i32 %195, i32 %198)
  ret void
}

declare dso_local i32 @eip197_trc_cache_setupvirt(%struct.safexcel_crypto_priv*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @eip197_trc_cache_probe(%struct.safexcel_crypto_priv*, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @__fls(i32) #1

declare dso_local i32 @eip197_trc_cache_clear(%struct.safexcel_crypto_priv*, i32, i32) #1

declare dso_local i32 @EIP197_TRC_FREECHAIN_HEAD_PTR(i32) #1

declare dso_local i32 @EIP197_TRC_FREECHAIN_TAIL_PTR(i32) #1

declare dso_local i32 @EIP197_TRC_PARAMS2_RC_SZ_SMALL(i32) #1

declare dso_local i32 @EIP197_TRC_PARAMS2_HTABLE_PTR(i32) #1

declare dso_local i32 @EIP197_TRC_PARAMS_RC_SZ_LARGE(i32) #1

declare dso_local i32 @EIP197_TRC_PARAMS_BLK_TIMER_SPEED(i32) #1

declare dso_local i32 @EIP197_TRC_PARAMS_HTABLE_SZ(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
