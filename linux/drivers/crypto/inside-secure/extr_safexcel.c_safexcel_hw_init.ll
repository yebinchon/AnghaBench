; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"HW init: using %d pipe(s) and %d ring(s)\0A\00", align 1
@SAFEXCEL_HW_EIP197 = common dso_local global i32 0, align 4
@EIP197_HIA_MST_CTRL = common dso_local global i64 0, align 8
@RD_CACHE_4BITS = common dso_local global i32 0, align 4
@WR_CACHE_4BITS = common dso_local global i32 0, align 4
@EIP197_MST_CTRL = common dso_local global i64 0, align 8
@EIP197_HIA_AIC_G_ENABLE_CTRL = common dso_local global i64 0, align 8
@EIP197_HIA_AIC_G_ACK = common dso_local global i64 0, align 8
@EIP197_DxE_THR_CTRL_RESET_PE = common dso_local global i32 0, align 4
@EIP197_HIA_RA_PE_CTRL_RESET = common dso_local global i32 0, align 4
@EIP197_HIA_DFE_CFG_DIS_DEBUG = common dso_local global i32 0, align 4
@RD_CACHE_3BITS = common dso_local global i32 0, align 4
@EIP197_HIA_RA_PE_CTRL_EN = common dso_local global i32 0, align 4
@EIP197_HIA_DSE_CFG_DIS_DEBUG = common dso_local global i32 0, align 4
@WR_CACHE_3BITS = common dso_local global i32 0, align 4
@EIP197_HIA_DSE_CFG_ALWAYS_BUFFERABLE = common dso_local global i32 0, align 4
@EIP197_HIA_DSE_CFG_EN_SINGLE_WR = common dso_local global i32 0, align 4
@EIP197_PE_EIP96_TOKEN_CTRL_CTX_UPDATES = common dso_local global i32 0, align 4
@EIP197_PE_EIP96_TOKEN_CTRL_NO_TOKEN_WAIT = common dso_local global i32 0, align 4
@EIP197_PE_EIP96_TOKEN_CTRL_ENABLE_TIMEOUT = common dso_local global i32 0, align 4
@EIP197_FUNCTION_ALL = common dso_local global i32 0, align 4
@EIP197_HIA_xDR_CFG = common dso_local global i64 0, align 8
@EIP197_xDR_PREP_CLR_COUNT = common dso_local global i32 0, align 4
@EIP197_HIA_xDR_PREP_COUNT = common dso_local global i64 0, align 8
@EIP197_xDR_PROC_CLR_COUNT = common dso_local global i32 0, align 4
@EIP197_HIA_xDR_PROC_COUNT = common dso_local global i64 0, align 8
@EIP197_HIA_xDR_PREP_PNTR = common dso_local global i64 0, align 8
@EIP197_HIA_xDR_PROC_PNTR = common dso_local global i64 0, align 8
@EIP197_DEFAULT_RING_SIZE = common dso_local global i32 0, align 4
@EIP197_HIA_xDR_RING_SIZE = common dso_local global i64 0, align 8
@EIP197_DxE_THR_CTRL_EN = common dso_local global i32 0, align 4
@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*)* @safexcel_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_hw_init(%struct.safexcel_crypto_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.safexcel_crypto_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %3, align 8
  %8 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %9 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %12 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %16 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18)
  %20 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %21 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %28 = call i64 @EIP197_HIA_AIC(%struct.safexcel_crypto_priv* %27)
  %29 = load i64, i64* @EIP197_HIA_MST_CTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = call i32 @EIP197_MST_CTRL_TX_MAX_CMD(i32 5)
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %37 = call i64 @EIP197_HIA_AIC(%struct.safexcel_crypto_priv* %36)
  %38 = load i64, i64* @EIP197_HIA_MST_CTRL, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %35, i64 %39)
  br label %41

41:                                               ; preds = %26, %1
  %42 = load i32, i32* @RD_CACHE_4BITS, align 4
  %43 = call i32 @EIP197_MST_CTRL_RD_CACHE(i32 %42)
  %44 = load i32, i32* @WR_CACHE_4BITS, align 4
  %45 = call i32 @EIP197_MST_CTRL_WD_CACHE(i32 %44)
  %46 = or i32 %43, %45
  %47 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %48 = call i64 @EIP197_HIA_GEN_CFG(%struct.safexcel_crypto_priv* %47)
  %49 = load i64, i64* @EIP197_MST_CTRL, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %46, i64 %50)
  %52 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %53 = call i64 @EIP197_HIA_AIC_G(%struct.safexcel_crypto_priv* %52)
  %54 = load i64, i64* @EIP197_HIA_AIC_G_ENABLE_CTRL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 0, i64 %55)
  %57 = call i32 @GENMASK(i32 31, i32 0)
  %58 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %59 = call i64 @EIP197_HIA_AIC_G(%struct.safexcel_crypto_priv* %58)
  %60 = load i64, i64* @EIP197_HIA_AIC_G_ACK, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %57, i64 %61)
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %257, %41
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %66 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %260

70:                                               ; preds = %63
  %71 = load i32, i32* @EIP197_DxE_THR_CTRL_RESET_PE, align 4
  %72 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %73 = call i64 @EIP197_HIA_DFE_THR(%struct.safexcel_crypto_priv* %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @EIP197_HIA_DFE_THR_CTRL(i32 %74)
  %76 = add nsw i64 %73, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %79 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %70
  %85 = load i32, i32* @EIP197_HIA_RA_PE_CTRL_RESET, align 4
  %86 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %87 = call i64 @EIP197_HIA_AIC(%struct.safexcel_crypto_priv* %86)
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @EIP197_HIA_RA_PE_CTRL(i32 %88)
  %90 = add nsw i64 %87, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  br label %92

92:                                               ; preds = %84, %70
  %93 = load i32, i32* @EIP197_HIA_DFE_CFG_DIS_DEBUG, align 4
  store i32 %93, i32* %4, align 4
  %94 = call i32 @EIP197_HIA_DxE_CFG_MIN_DATA_SIZE(i32 6)
  %95 = call i32 @EIP197_HIA_DxE_CFG_MAX_DATA_SIZE(i32 9)
  %96 = or i32 %94, %95
  %97 = load i32, i32* %4, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %4, align 4
  %99 = call i32 @EIP197_HIA_DxE_CFG_MIN_CTRL_SIZE(i32 6)
  %100 = call i32 @EIP197_HIA_DxE_CFG_MAX_CTRL_SIZE(i32 7)
  %101 = or i32 %99, %100
  %102 = load i32, i32* %4, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* @RD_CACHE_3BITS, align 4
  %105 = call i32 @EIP197_HIA_DxE_CFG_DATA_CACHE_CTRL(i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* @RD_CACHE_3BITS, align 4
  %109 = call i32 @EIP197_HIA_DxE_CFG_CTRL_CACHE_CTRL(i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %114 = call i64 @EIP197_HIA_DFE(%struct.safexcel_crypto_priv* %113)
  %115 = load i32, i32* %7, align 4
  %116 = call i64 @EIP197_HIA_DFE_CFG(i32 %115)
  %117 = add nsw i64 %114, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  %119 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %120 = call i64 @EIP197_HIA_DFE_THR(%struct.safexcel_crypto_priv* %119)
  %121 = load i32, i32* %7, align 4
  %122 = call i64 @EIP197_HIA_DFE_THR_CTRL(i32 %121)
  %123 = add nsw i64 %120, %122
  %124 = call i32 @writel(i32 0, i64 %123)
  %125 = call i32 @EIP197_PE_IN_xBUF_THRES_MIN(i32 6)
  %126 = call i32 @EIP197_PE_IN_xBUF_THRES_MAX(i32 9)
  %127 = or i32 %125, %126
  %128 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %129 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %128)
  %130 = load i32, i32* %7, align 4
  %131 = call i64 @EIP197_PE_IN_DBUF_THRES(i32 %130)
  %132 = add nsw i64 %129, %131
  %133 = call i32 @writel(i32 %127, i64 %132)
  %134 = call i32 @EIP197_PE_IN_xBUF_THRES_MIN(i32 6)
  %135 = call i32 @EIP197_PE_IN_xBUF_THRES_MAX(i32 7)
  %136 = or i32 %134, %135
  %137 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %138 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %137)
  %139 = load i32, i32* %7, align 4
  %140 = call i64 @EIP197_PE_IN_TBUF_THRES(i32 %139)
  %141 = add nsw i64 %138, %140
  %142 = call i32 @writel(i32 %136, i64 %141)
  %143 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %144 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %92
  %150 = load i32, i32* @EIP197_HIA_RA_PE_CTRL_EN, align 4
  %151 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %152 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %154, 1
  %156 = call i32 @GENMASK(i32 %155, i32 0)
  %157 = or i32 %150, %156
  %158 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %159 = call i64 @EIP197_HIA_AIC(%struct.safexcel_crypto_priv* %158)
  %160 = load i32, i32* %7, align 4
  %161 = call i64 @EIP197_HIA_RA_PE_CTRL(i32 %160)
  %162 = add nsw i64 %159, %161
  %163 = call i32 @writel(i32 %157, i64 %162)
  br label %164

164:                                              ; preds = %149, %92
  %165 = load i32, i32* @EIP197_DxE_THR_CTRL_RESET_PE, align 4
  %166 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %167 = call i64 @EIP197_HIA_DSE_THR(%struct.safexcel_crypto_priv* %166)
  %168 = load i32, i32* %7, align 4
  %169 = call i64 @EIP197_HIA_DSE_THR_CTRL(i32 %168)
  %170 = add nsw i64 %167, %169
  %171 = call i32 @writel(i32 %165, i64 %170)
  br label %172

172:                                              ; preds = %183, %164
  %173 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %174 = call i64 @EIP197_HIA_DSE_THR(%struct.safexcel_crypto_priv* %173)
  %175 = load i32, i32* %7, align 4
  %176 = call i64 @EIP197_HIA_DSE_THR_STAT(i32 %175)
  %177 = add nsw i64 %174, %176
  %178 = call i32 @readl(i64 %177)
  %179 = call i32 @GENMASK(i32 15, i32 12)
  %180 = and i32 %178, %179
  %181 = call i32 @GENMASK(i32 15, i32 12)
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  br label %172

184:                                              ; preds = %172
  %185 = load i32, i32* @EIP197_HIA_DSE_CFG_DIS_DEBUG, align 4
  store i32 %185, i32* %4, align 4
  %186 = call i32 @EIP197_HIA_DxE_CFG_MIN_DATA_SIZE(i32 7)
  %187 = call i32 @EIP197_HIA_DxE_CFG_MAX_DATA_SIZE(i32 8)
  %188 = or i32 %186, %187
  %189 = load i32, i32* %4, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* @WR_CACHE_3BITS, align 4
  %192 = call i32 @EIP197_HIA_DxE_CFG_DATA_CACHE_CTRL(i32 %191)
  %193 = load i32, i32* %4, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* @EIP197_HIA_DSE_CFG_ALWAYS_BUFFERABLE, align 4
  %196 = load i32, i32* %4, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %4, align 4
  %198 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %199 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %184
  %205 = load i32, i32* @EIP197_HIA_DSE_CFG_EN_SINGLE_WR, align 4
  %206 = load i32, i32* %4, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %204, %184
  %209 = load i32, i32* %4, align 4
  %210 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %211 = call i64 @EIP197_HIA_DSE(%struct.safexcel_crypto_priv* %210)
  %212 = load i32, i32* %7, align 4
  %213 = call i64 @EIP197_HIA_DSE_CFG(i32 %212)
  %214 = add nsw i64 %211, %213
  %215 = call i32 @writel(i32 %209, i64 %214)
  %216 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %217 = call i64 @EIP197_HIA_DSE_THR(%struct.safexcel_crypto_priv* %216)
  %218 = load i32, i32* %7, align 4
  %219 = call i64 @EIP197_HIA_DSE_THR_CTRL(i32 %218)
  %220 = add nsw i64 %217, %219
  %221 = call i32 @writel(i32 0, i64 %220)
  %222 = call i32 @EIP197_PE_OUT_DBUF_THRES_MIN(i32 7)
  %223 = call i32 @EIP197_PE_OUT_DBUF_THRES_MAX(i32 8)
  %224 = or i32 %222, %223
  %225 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %226 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %225)
  %227 = load i32, i32* %7, align 4
  %228 = call i64 @EIP197_PE_OUT_DBUF_THRES(i32 %227)
  %229 = add nsw i64 %226, %228
  %230 = call i32 @writel(i32 %224, i64 %229)
  %231 = load i32, i32* @EIP197_PE_EIP96_TOKEN_CTRL_CTX_UPDATES, align 4
  %232 = load i32, i32* @EIP197_PE_EIP96_TOKEN_CTRL_NO_TOKEN_WAIT, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @EIP197_PE_EIP96_TOKEN_CTRL_ENABLE_TIMEOUT, align 4
  %235 = or i32 %233, %234
  store i32 %235, i32* %4, align 4
  %236 = load i32, i32* %4, align 4
  %237 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %238 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %237)
  %239 = load i32, i32* %7, align 4
  %240 = call i64 @EIP197_PE_EIP96_TOKEN_CTRL(i32 %239)
  %241 = add nsw i64 %238, %240
  %242 = call i32 @writel(i32 %236, i64 %241)
  %243 = load i32, i32* @EIP197_FUNCTION_ALL, align 4
  %244 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %245 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %244)
  %246 = load i32, i32* %7, align 4
  %247 = call i64 @EIP197_PE_EIP96_FUNCTION_EN(i32 %246)
  %248 = add nsw i64 %245, %247
  %249 = call i32 @writel(i32 %243, i64 %248)
  %250 = load i32, i32* @EIP197_FUNCTION_ALL, align 4
  %251 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %252 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %251)
  %253 = load i32, i32* %7, align 4
  %254 = call i64 @EIP197_PE_EIP96_FUNCTION2_EN(i32 %253)
  %255 = add nsw i64 %252, %254
  %256 = call i32 @writel(i32 %250, i64 %255)
  br label %257

257:                                              ; preds = %208
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %7, align 4
  br label %63

260:                                              ; preds = %63
  store i32 0, i32* %5, align 4
  br label %261

261:                                              ; preds = %321, %260
  %262 = load i32, i32* %5, align 4
  %263 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %264 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp slt i32 %262, %266
  br i1 %267, label %268, label %324

268:                                              ; preds = %261
  %269 = call i32 @GENMASK(i32 31, i32 0)
  %270 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %271 = call i64 @EIP197_HIA_AIC_R(%struct.safexcel_crypto_priv* %270)
  %272 = load i32, i32* %5, align 4
  %273 = call i64 @EIP197_HIA_AIC_R_ENABLE_CLR(i32 %272)
  %274 = add nsw i64 %271, %273
  %275 = call i32 @writel(i32 %269, i64 %274)
  %276 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %277 = load i32, i32* %5, align 4
  %278 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %276, i32 %277)
  %279 = load i64, i64* @EIP197_HIA_xDR_CFG, align 8
  %280 = add nsw i64 %278, %279
  %281 = call i32 @writel(i32 0, i64 %280)
  %282 = load i32, i32* @EIP197_xDR_PREP_CLR_COUNT, align 4
  %283 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %284 = load i32, i32* %5, align 4
  %285 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %283, i32 %284)
  %286 = load i64, i64* @EIP197_HIA_xDR_PREP_COUNT, align 8
  %287 = add nsw i64 %285, %286
  %288 = call i32 @writel(i32 %282, i64 %287)
  %289 = load i32, i32* @EIP197_xDR_PROC_CLR_COUNT, align 4
  %290 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %291 = load i32, i32* %5, align 4
  %292 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %290, i32 %291)
  %293 = load i64, i64* @EIP197_HIA_xDR_PROC_COUNT, align 8
  %294 = add nsw i64 %292, %293
  %295 = call i32 @writel(i32 %289, i64 %294)
  %296 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %297 = load i32, i32* %5, align 4
  %298 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %296, i32 %297)
  %299 = load i64, i64* @EIP197_HIA_xDR_PREP_PNTR, align 8
  %300 = add nsw i64 %298, %299
  %301 = call i32 @writel(i32 0, i64 %300)
  %302 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %303 = load i32, i32* %5, align 4
  %304 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %302, i32 %303)
  %305 = load i64, i64* @EIP197_HIA_xDR_PROC_PNTR, align 8
  %306 = add nsw i64 %304, %305
  %307 = call i32 @writel(i32 0, i64 %306)
  %308 = load i32, i32* @EIP197_DEFAULT_RING_SIZE, align 4
  %309 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %310 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 %308, %312
  %314 = shl i32 %313, 2
  %315 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %316 = load i32, i32* %5, align 4
  %317 = call i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv* %315, i32 %316)
  %318 = load i64, i64* @EIP197_HIA_xDR_RING_SIZE, align 8
  %319 = add nsw i64 %317, %318
  %320 = call i32 @writel(i32 %314, i64 %319)
  br label %321

321:                                              ; preds = %268
  %322 = load i32, i32* %5, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %5, align 4
  br label %261

324:                                              ; preds = %261
  store i32 0, i32* %5, align 4
  br label %325

325:                                              ; preds = %378, %324
  %326 = load i32, i32* %5, align 4
  %327 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %328 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %326, %330
  br i1 %331, label %332, label %381

332:                                              ; preds = %325
  %333 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %334 = load i32, i32* %5, align 4
  %335 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %333, i32 %334)
  %336 = load i64, i64* @EIP197_HIA_xDR_CFG, align 8
  %337 = add nsw i64 %335, %336
  %338 = call i32 @writel(i32 0, i64 %337)
  %339 = load i32, i32* @EIP197_xDR_PREP_CLR_COUNT, align 4
  %340 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %341 = load i32, i32* %5, align 4
  %342 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %340, i32 %341)
  %343 = load i64, i64* @EIP197_HIA_xDR_PREP_COUNT, align 8
  %344 = add nsw i64 %342, %343
  %345 = call i32 @writel(i32 %339, i64 %344)
  %346 = load i32, i32* @EIP197_xDR_PROC_CLR_COUNT, align 4
  %347 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %348 = load i32, i32* %5, align 4
  %349 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %347, i32 %348)
  %350 = load i64, i64* @EIP197_HIA_xDR_PROC_COUNT, align 8
  %351 = add nsw i64 %349, %350
  %352 = call i32 @writel(i32 %346, i64 %351)
  %353 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %354 = load i32, i32* %5, align 4
  %355 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %353, i32 %354)
  %356 = load i64, i64* @EIP197_HIA_xDR_PREP_PNTR, align 8
  %357 = add nsw i64 %355, %356
  %358 = call i32 @writel(i32 0, i64 %357)
  %359 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %360 = load i32, i32* %5, align 4
  %361 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %359, i32 %360)
  %362 = load i64, i64* @EIP197_HIA_xDR_PROC_PNTR, align 8
  %363 = add nsw i64 %361, %362
  %364 = call i32 @writel(i32 0, i64 %363)
  %365 = load i32, i32* @EIP197_DEFAULT_RING_SIZE, align 4
  %366 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %367 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = mul nsw i32 %365, %369
  %371 = shl i32 %370, 2
  %372 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %373 = load i32, i32* %5, align 4
  %374 = call i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv* %372, i32 %373)
  %375 = load i64, i64* @EIP197_HIA_xDR_RING_SIZE, align 8
  %376 = add nsw i64 %374, %375
  %377 = call i32 @writel(i32 %371, i64 %376)
  br label %378

378:                                              ; preds = %332
  %379 = load i32, i32* %5, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %5, align 4
  br label %325

381:                                              ; preds = %325
  store i32 0, i32* %7, align 4
  br label %382

382:                                              ; preds = %418, %381
  %383 = load i32, i32* %7, align 4
  %384 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %385 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = icmp slt i32 %383, %387
  br i1 %388, label %389, label %421

389:                                              ; preds = %382
  %390 = load i32, i32* @EIP197_DxE_THR_CTRL_EN, align 4
  %391 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %392 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = sub nsw i32 %394, 1
  %396 = call i32 @GENMASK(i32 %395, i32 0)
  %397 = or i32 %390, %396
  %398 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %399 = call i64 @EIP197_HIA_DFE_THR(%struct.safexcel_crypto_priv* %398)
  %400 = load i32, i32* %7, align 4
  %401 = call i64 @EIP197_HIA_DFE_THR_CTRL(i32 %400)
  %402 = add nsw i64 %399, %401
  %403 = call i32 @writel(i32 %397, i64 %402)
  %404 = load i32, i32* @EIP197_DxE_THR_CTRL_EN, align 4
  %405 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %406 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = sub nsw i32 %408, 1
  %410 = call i32 @GENMASK(i32 %409, i32 0)
  %411 = or i32 %404, %410
  %412 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %413 = call i64 @EIP197_HIA_DSE_THR(%struct.safexcel_crypto_priv* %412)
  %414 = load i32, i32* %7, align 4
  %415 = call i64 @EIP197_HIA_DSE_THR_CTRL(i32 %414)
  %416 = add nsw i64 %413, %415
  %417 = call i32 @writel(i32 %411, i64 %416)
  br label %418

418:                                              ; preds = %389
  %419 = load i32, i32* %7, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %7, align 4
  br label %382

421:                                              ; preds = %382
  %422 = call i32 @GENMASK(i32 30, i32 20)
  %423 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %424 = call i64 @EIP197_HIA_AIC_G(%struct.safexcel_crypto_priv* %423)
  %425 = load i64, i64* @EIP197_HIA_AIC_G_ACK, align 8
  %426 = add nsw i64 %424, %425
  %427 = call i32 @writel(i32 %422, i64 %426)
  %428 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %429 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %449

434:                                              ; preds = %421
  %435 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %436 = call i32 @eip197_trc_cache_init(%struct.safexcel_crypto_priv* %435)
  %437 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %438 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %439 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = or i32 %440, %437
  store i32 %441, i32* %439, align 4
  %442 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %443 = call i32 @eip197_load_firmwares(%struct.safexcel_crypto_priv* %442)
  store i32 %443, i32* %6, align 4
  %444 = load i32, i32* %6, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %448

446:                                              ; preds = %434
  %447 = load i32, i32* %6, align 4
  store i32 %447, i32* %2, align 4
  br label %454

448:                                              ; preds = %434
  br label %449

449:                                              ; preds = %448, %421
  %450 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %451 = call i32 @safexcel_hw_setup_cdesc_rings(%struct.safexcel_crypto_priv* %450)
  %452 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %453 = call i32 @safexcel_hw_setup_rdesc_rings(%struct.safexcel_crypto_priv* %452)
  store i32 0, i32* %2, align 4
  br label %454

454:                                              ; preds = %449, %446
  %455 = load i32, i32* %2, align 4
  ret i32 %455
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @EIP197_HIA_AIC(%struct.safexcel_crypto_priv*) #1

declare dso_local i32 @EIP197_MST_CTRL_TX_MAX_CMD(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @EIP197_MST_CTRL_RD_CACHE(i32) #1

declare dso_local i32 @EIP197_MST_CTRL_WD_CACHE(i32) #1

declare dso_local i64 @EIP197_HIA_GEN_CFG(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_HIA_AIC_G(%struct.safexcel_crypto_priv*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @EIP197_HIA_DFE_THR(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_HIA_DFE_THR_CTRL(i32) #1

declare dso_local i64 @EIP197_HIA_RA_PE_CTRL(i32) #1

declare dso_local i32 @EIP197_HIA_DxE_CFG_MIN_DATA_SIZE(i32) #1

declare dso_local i32 @EIP197_HIA_DxE_CFG_MAX_DATA_SIZE(i32) #1

declare dso_local i32 @EIP197_HIA_DxE_CFG_MIN_CTRL_SIZE(i32) #1

declare dso_local i32 @EIP197_HIA_DxE_CFG_MAX_CTRL_SIZE(i32) #1

declare dso_local i32 @EIP197_HIA_DxE_CFG_DATA_CACHE_CTRL(i32) #1

declare dso_local i32 @EIP197_HIA_DxE_CFG_CTRL_CACHE_CTRL(i32) #1

declare dso_local i64 @EIP197_HIA_DFE(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_HIA_DFE_CFG(i32) #1

declare dso_local i32 @EIP197_PE_IN_xBUF_THRES_MIN(i32) #1

declare dso_local i32 @EIP197_PE_IN_xBUF_THRES_MAX(i32) #1

declare dso_local i64 @EIP197_PE(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_PE_IN_DBUF_THRES(i32) #1

declare dso_local i64 @EIP197_PE_IN_TBUF_THRES(i32) #1

declare dso_local i64 @EIP197_HIA_DSE_THR(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_HIA_DSE_THR_CTRL(i32) #1

declare dso_local i64 @EIP197_HIA_DSE_THR_STAT(i32) #1

declare dso_local i64 @EIP197_HIA_DSE(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_HIA_DSE_CFG(i32) #1

declare dso_local i32 @EIP197_PE_OUT_DBUF_THRES_MIN(i32) #1

declare dso_local i32 @EIP197_PE_OUT_DBUF_THRES_MAX(i32) #1

declare dso_local i64 @EIP197_PE_OUT_DBUF_THRES(i32) #1

declare dso_local i64 @EIP197_PE_EIP96_TOKEN_CTRL(i32) #1

declare dso_local i64 @EIP197_PE_EIP96_FUNCTION_EN(i32) #1

declare dso_local i64 @EIP197_PE_EIP96_FUNCTION2_EN(i32) #1

declare dso_local i64 @EIP197_HIA_AIC_R(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_HIA_AIC_R_ENABLE_CLR(i32) #1

declare dso_local i64 @EIP197_HIA_CDR(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i64 @EIP197_HIA_RDR(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i32 @eip197_trc_cache_init(%struct.safexcel_crypto_priv*) #1

declare dso_local i32 @eip197_load_firmwares(%struct.safexcel_crypto_priv*) #1

declare dso_local i32 @safexcel_hw_setup_cdesc_rings(%struct.safexcel_crypto_priv*) #1

declare dso_local i32 @safexcel_hw_setup_rdesc_rings(%struct.safexcel_crypto_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
