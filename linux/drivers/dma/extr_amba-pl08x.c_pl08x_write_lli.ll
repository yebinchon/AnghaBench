; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_write_lli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_write_lli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_driver_data = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.pl08x_phy_chan = type { i32, i64, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [97 x i8] c"WRITE channel %d: csrc=0x%08x, cdst=0x%08x, clli=0x%08x, cctl=0x%08x, cctl2=0x%08x, ccfg=0x%08x\0A\00", align 1
@PL080_LLI_SRC = common dso_local global i64 0, align 8
@PL080_LLI_DST = common dso_local global i64 0, align 8
@PL080_LLI_LLI = common dso_local global i64 0, align 8
@PL080_LLI_CCTL = common dso_local global i64 0, align 8
@PL080S_LLI_CCTL2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"WRITE channel %d: csrc=0x%08x, cdst=0x%08x, clli=0x%08x, cctl=0x%08x, ccfg=0x%08x\0A\00", align 1
@FTDMAC020_LLI_TRANSFER_SIZE_MASK = common dso_local global i32 0, align 4
@FTDMAC020_CH_SIZE = common dso_local global i64 0, align 8
@FTDMAC020_LLI_TC_MSK = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_TC_MSK = common dso_local global i32 0, align 4
@FTDMAC020_LLI_SRC_WIDTH_MSK = common dso_local global i32 0, align 4
@FTDMAC020_LLI_SRC_WIDTH_SHIFT = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_SRC_WIDTH_SHIFT = common dso_local global i32 0, align 4
@FTDMAC020_LLI_DST_WIDTH_MSK = common dso_local global i32 0, align 4
@FTDMAC020_LLI_DST_WIDTH_SHIFT = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_DST_WIDTH_SHIFT = common dso_local global i32 0, align 4
@FTDMAC020_LLI_SRCAD_CTL_MSK = common dso_local global i32 0, align 4
@FTDMAC020_LLI_SRCAD_CTL_SHIFT = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_SRCAD_CTL_SHIFT = common dso_local global i32 0, align 4
@FTDMAC020_LLI_DSTAD_CTL_MSK = common dso_local global i32 0, align 4
@FTDMAC020_LLI_DSTAD_CTL_SHIFT = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_DSTAD_CTL_SHIFT = common dso_local global i32 0, align 4
@FTDMAC020_LLI_SRC_SEL = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_SRC_SEL = common dso_local global i32 0, align 4
@FTDMAC020_LLI_DST_SEL = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_DST_SEL = common dso_local global i32 0, align 4
@PL080_BSIZE_1 = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_SRC_SIZE_SHIFT = common dso_local global i32 0, align 4
@PL080_BSIZE_4 = common dso_local global i32 0, align 4
@PL080_BSIZE_8 = common dso_local global i32 0, align 4
@PL080_BSIZE_16 = common dso_local global i32 0, align 4
@PL080_BSIZE_32 = common dso_local global i32 0, align 4
@PL080_BSIZE_64 = common dso_local global i32 0, align 4
@PL080_BSIZE_128 = common dso_local global i32 0, align 4
@PL080_BSIZE_256 = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_PROT2 = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_PROT3 = common dso_local global i32 0, align 4
@FTDMAC020_CH_CSR_PROT1 = common dso_local global i32 0, align 4
@PL080S_CH_CONTROL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_driver_data*, %struct.pl08x_phy_chan*, i32*, i32)* @pl08x_write_lli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_write_lli(%struct.pl08x_driver_data* %0, %struct.pl08x_phy_chan* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.pl08x_driver_data*, align 8
  %6 = alloca %struct.pl08x_phy_chan*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %5, align 8
  store %struct.pl08x_phy_chan* %1, %struct.pl08x_phy_chan** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %5, align 8
  %12 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %4
  %18 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %5, align 8
  %19 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %23 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* @PL080_LLI_SRC, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* @PL080_LLI_DST, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* @PL080_LLI_LLI, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* @PL080_LLI_CCTL, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i64, i64* @PL080S_LLI_CCTL2, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32*, i8*, i32, i32, i32, i32, i32, i32, ...) @dev_vdbg(i32* %21, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28, i32 %32, i32 %36, i32 %40, i32 %44, i32 %45)
  br label %73

47:                                               ; preds = %4
  %48 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %5, align 8
  %49 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %53 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i64, i64* @PL080_LLI_SRC, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i64, i64* @PL080_LLI_DST, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i64, i64* @PL080_LLI_LLI, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i64, i64* @PL080_LLI_CCTL, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32*, i8*, i32, i32, i32, i32, i32, i32, ...) @dev_vdbg(i32* %51, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %58, i32 %62, i32 %66, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %47, %17
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* @PL080_LLI_SRC, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %79 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @writel_relaxed(i32 %77, i64 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load i64, i64* @PL080_LLI_DST, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %87 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @writel_relaxed(i32 %85, i64 %88)
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* @PL080_LLI_LLI, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %95 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @writel_relaxed(i32 %93, i64 %96)
  %98 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %99 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %264

102:                                              ; preds = %73
  %103 = load i32*, i32** %7, align 8
  %104 = load i64, i64* @PL080_LLI_CCTL, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @FTDMAC020_LLI_TRANSFER_SIZE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %111 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @FTDMAC020_CH_SIZE, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writel_relaxed(i32 %109, i64 %114)
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @FTDMAC020_LLI_TC_MSK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %102
  %121 = load i32, i32* @FTDMAC020_CH_CSR_TC_MSK, align 4
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %120, %102
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @FTDMAC020_LLI_SRC_WIDTH_MSK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @FTDMAC020_LLI_SRC_WIDTH_SHIFT, align 4
  %129 = load i32, i32* @FTDMAC020_CH_CSR_SRC_WIDTH_SHIFT, align 4
  %130 = sub nsw i32 %128, %129
  %131 = ashr i32 %127, %130
  %132 = load i32, i32* %10, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @FTDMAC020_LLI_DST_WIDTH_MSK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @FTDMAC020_LLI_DST_WIDTH_SHIFT, align 4
  %138 = load i32, i32* @FTDMAC020_CH_CSR_DST_WIDTH_SHIFT, align 4
  %139 = sub nsw i32 %137, %138
  %140 = ashr i32 %136, %139
  %141 = load i32, i32* %10, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @FTDMAC020_LLI_SRCAD_CTL_MSK, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* @FTDMAC020_LLI_SRCAD_CTL_SHIFT, align 4
  %147 = load i32, i32* @FTDMAC020_CH_CSR_SRCAD_CTL_SHIFT, align 4
  %148 = sub nsw i32 %146, %147
  %149 = ashr i32 %145, %148
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @FTDMAC020_LLI_DSTAD_CTL_MSK, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @FTDMAC020_LLI_DSTAD_CTL_SHIFT, align 4
  %156 = load i32, i32* @FTDMAC020_CH_CSR_DSTAD_CTL_SHIFT, align 4
  %157 = sub nsw i32 %155, %156
  %158 = ashr i32 %154, %157
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @FTDMAC020_LLI_SRC_SEL, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %124
  %166 = load i32, i32* @FTDMAC020_CH_CSR_SRC_SEL, align 4
  %167 = load i32, i32* %10, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %165, %124
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @FTDMAC020_LLI_DST_SEL, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i32, i32* @FTDMAC020_CH_CSR_DST_SEL, align 4
  %176 = load i32, i32* %10, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %174, %169
  %179 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %5, align 8
  %180 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %179, i32 0, i32 1
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %184 [
    i32 135, label %185
    i32 130, label %191
    i32 128, label %197
    i32 133, label %203
    i32 131, label %209
    i32 129, label %215
    i32 134, label %221
    i32 132, label %227
  ]

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %178, %184
  %186 = load i32, i32* @PL080_BSIZE_1, align 4
  %187 = load i32, i32* @FTDMAC020_CH_CSR_SRC_SIZE_SHIFT, align 4
  %188 = shl i32 %186, %187
  %189 = load i32, i32* %10, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %10, align 4
  br label %233

191:                                              ; preds = %178
  %192 = load i32, i32* @PL080_BSIZE_4, align 4
  %193 = load i32, i32* @FTDMAC020_CH_CSR_SRC_SIZE_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = load i32, i32* %10, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %10, align 4
  br label %233

197:                                              ; preds = %178
  %198 = load i32, i32* @PL080_BSIZE_8, align 4
  %199 = load i32, i32* @FTDMAC020_CH_CSR_SRC_SIZE_SHIFT, align 4
  %200 = shl i32 %198, %199
  %201 = load i32, i32* %10, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %10, align 4
  br label %233

203:                                              ; preds = %178
  %204 = load i32, i32* @PL080_BSIZE_16, align 4
  %205 = load i32, i32* @FTDMAC020_CH_CSR_SRC_SIZE_SHIFT, align 4
  %206 = shl i32 %204, %205
  %207 = load i32, i32* %10, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %10, align 4
  br label %233

209:                                              ; preds = %178
  %210 = load i32, i32* @PL080_BSIZE_32, align 4
  %211 = load i32, i32* @FTDMAC020_CH_CSR_SRC_SIZE_SHIFT, align 4
  %212 = shl i32 %210, %211
  %213 = load i32, i32* %10, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %10, align 4
  br label %233

215:                                              ; preds = %178
  %216 = load i32, i32* @PL080_BSIZE_64, align 4
  %217 = load i32, i32* @FTDMAC020_CH_CSR_SRC_SIZE_SHIFT, align 4
  %218 = shl i32 %216, %217
  %219 = load i32, i32* %10, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %10, align 4
  br label %233

221:                                              ; preds = %178
  %222 = load i32, i32* @PL080_BSIZE_128, align 4
  %223 = load i32, i32* @FTDMAC020_CH_CSR_SRC_SIZE_SHIFT, align 4
  %224 = shl i32 %222, %223
  %225 = load i32, i32* %10, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %10, align 4
  br label %233

227:                                              ; preds = %178
  %228 = load i32, i32* @PL080_BSIZE_256, align 4
  %229 = load i32, i32* @FTDMAC020_CH_CSR_SRC_SIZE_SHIFT, align 4
  %230 = shl i32 %228, %229
  %231 = load i32, i32* %10, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %10, align 4
  br label %233

233:                                              ; preds = %227, %221, %215, %209, %203, %197, %191, %185
  %234 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %5, align 8
  %235 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %234, i32 0, i32 1
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %233
  %241 = load i32, i32* @FTDMAC020_CH_CSR_PROT2, align 4
  %242 = load i32, i32* %10, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %10, align 4
  br label %244

244:                                              ; preds = %240, %233
  %245 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %5, align 8
  %246 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %245, i32 0, i32 1
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load i32, i32* @FTDMAC020_CH_CSR_PROT3, align 4
  %253 = load i32, i32* %10, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %10, align 4
  br label %255

255:                                              ; preds = %251, %244
  %256 = load i32, i32* @FTDMAC020_CH_CSR_PROT1, align 4
  %257 = load i32, i32* %10, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %10, align 4
  %259 = load i32, i32* %10, align 4
  %260 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %261 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @writel_relaxed(i32 %259, i64 %262)
  br label %273

264:                                              ; preds = %73
  %265 = load i32*, i32** %7, align 8
  %266 = load i64, i64* @PL080_LLI_CCTL, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %270 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @writel_relaxed(i32 %268, i64 %271)
  br label %273

273:                                              ; preds = %264, %255
  %274 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %5, align 8
  %275 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %274, i32 0, i32 0
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %291

280:                                              ; preds = %273
  %281 = load i32*, i32** %7, align 8
  %282 = load i64, i64* @PL080S_LLI_CCTL2, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %286 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @PL080S_CH_CONTROL2, align 8
  %289 = add nsw i64 %287, %288
  %290 = call i32 @writel_relaxed(i32 %284, i64 %289)
  br label %291

291:                                              ; preds = %280, %273
  %292 = load i32, i32* %8, align 4
  %293 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %294 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @writel(i32 %292, i32 %295)
  ret void
}

declare dso_local i32 @dev_vdbg(i32*, i8*, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
