; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_search_srate_coarse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_search_srate_coarse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0900_state* }
%struct.stv0900_state = type { i32, %struct.stv0900_internal* }
%struct.stv0900_internal = type { i32, i32*, i32*, i32*, i32*, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@DEMOD_MODE = common dso_local global i32 0, align 4
@TMGCFG = common dso_local global i32 0, align 4
@TMGTHRISE = common dso_local global i32 0, align 4
@TMGTHFALL = common dso_local global i32 0, align 4
@SCAN_ENABLE = common dso_local global i32 0, align 4
@CFR_AUTOSCAN = common dso_local global i32 0, align 4
@SFRUP1 = common dso_local global i32 0, align 4
@SFRUP0 = common dso_local global i32 0, align 4
@SFRLOW1 = common dso_local global i32 0, align 4
@SFRLOW0 = common dso_local global i32 0, align 4
@DMDT0M = common dso_local global i32 0, align 4
@AGC2REF = common dso_local global i32 0, align 4
@CARFREQ = common dso_local global i32 0, align 4
@SFRSTEP = common dso_local global i32 0, align 4
@DMDISTATE = common dso_local global i32 0, align 4
@TMGLOCK_QUALITY = common dso_local global i32 0, align 4
@AGC2I1 = common dso_local global i32 0, align 4
@AGC2I0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"lock: I2C_DEMOD_MODE_FIELD =0. Search started. tuner freq=%d agc2=0x%x srate_coarse=%d tmg_cpt=%d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv0900_search_srate_coarse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_search_srate_coarse(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.stv0900_state*, align 8
  %4 = alloca %struct.stv0900_internal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  %19 = load %struct.stv0900_state*, %struct.stv0900_state** %18, align 8
  store %struct.stv0900_state* %19, %struct.stv0900_state** %3, align 8
  %20 = load %struct.stv0900_state*, %struct.stv0900_state** %3, align 8
  %21 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %20, i32 0, i32 1
  %22 = load %struct.stv0900_internal*, %struct.stv0900_internal** %21, align 8
  store %struct.stv0900_internal* %22, %struct.stv0900_internal** %4, align 8
  %23 = load %struct.stv0900_state*, %struct.stv0900_state** %3, align 8
  %24 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1200, i32* %16, align 4
  %27 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %28 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 48
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 11776, i32* %13, align 4
  br label %33

32:                                               ; preds = %1
  store i32 7936, i32* %13, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %35 = load i32, i32* @DEMOD_MODE, align 4
  %36 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %34, i32 %35, i32 31)
  %37 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %38 = load i32, i32* @TMGCFG, align 4
  %39 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %37, i32 %38, i32 18)
  %40 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %41 = load i32, i32* @TMGTHRISE, align 4
  %42 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %40, i32 %41, i32 240)
  %43 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %44 = load i32, i32* @TMGTHFALL, align 4
  %45 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %43, i32 %44, i32 224)
  %46 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %47 = load i32, i32* @SCAN_ENABLE, align 4
  %48 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %46, i32 %47, i32 1)
  %49 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %50 = load i32, i32* @CFR_AUTOSCAN, align 4
  %51 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %49, i32 %50, i32 1)
  %52 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %53 = load i32, i32* @SFRUP1, align 4
  %54 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %52, i32 %53, i32 131)
  %55 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %56 = load i32, i32* @SFRUP0, align 4
  %57 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %55, i32 %56, i32 192)
  %58 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %59 = load i32, i32* @SFRLOW1, align 4
  %60 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %58, i32 %59, i32 130)
  %61 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %62 = load i32, i32* @SFRLOW0, align 4
  %63 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %61, i32 %62, i32 160)
  %64 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %65 = load i32, i32* @DMDT0M, align 4
  %66 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %64, i32 %65, i32 0)
  %67 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %68 = load i32, i32* @AGC2REF, align 4
  %69 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %67, i32 %68, i32 80)
  %70 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %71 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %72, 48
  br i1 %73, label %74, label %81

74:                                               ; preds = %33
  %75 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %76 = load i32, i32* @CARFREQ, align 4
  %77 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %75, i32 %76, i32 153)
  %78 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %79 = load i32, i32* @SFRSTEP, align 4
  %80 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %78, i32 %79, i32 152)
  br label %101

81:                                               ; preds = %33
  %82 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %83 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 32
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %88 = load i32, i32* @CARFREQ, align 4
  %89 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %87, i32 %88, i32 106)
  %90 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %91 = load i32, i32* @SFRSTEP, align 4
  %92 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %90, i32 %91, i32 149)
  br label %100

93:                                               ; preds = %81
  %94 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %95 = load i32, i32* @CARFREQ, align 4
  %96 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %94, i32 %95, i32 237)
  %97 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %98 = load i32, i32* @SFRSTEP, align 4
  %99 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %97, i32 %98, i32 115)
  br label %100

100:                                              ; preds = %93, %86
  br label %101

101:                                              ; preds = %100, %74
  %102 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %103 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp sle i32 %108, 2000000
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i32 1000, i32* %16, align 4
  br label %134

111:                                              ; preds = %101
  %112 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %113 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp sle i32 %118, 5000000
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i32 2000, i32* %16, align 4
  br label %133

121:                                              ; preds = %111
  %122 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %123 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp sle i32 %128, 12000000
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  store i32 3000, i32* %16, align 4
  br label %132

131:                                              ; preds = %121
  store i32 5000, i32* %16, align 4
  br label %132

132:                                              ; preds = %131, %130
  br label %133

133:                                              ; preds = %132, %120
  br label %134

134:                                              ; preds = %133, %110
  %135 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %136 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 1000
  %143 = load i32, i32* %16, align 4
  %144 = sdiv i32 %142, %143
  %145 = add nsw i32 -1, %144
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = sdiv i32 %146, 2
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = mul nsw i32 2, %148
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %134
  store i32 1, i32* %10, align 4
  br label %168

154:                                              ; preds = %134
  %155 = load i32, i32* %10, align 4
  %156 = icmp sgt i32 %155, 10
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  store i32 11, i32* %10, align 4
  %158 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %159 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = sdiv i32 %164, 1000
  %166 = sdiv i32 %165, 10
  store i32 %166, i32* %16, align 4
  br label %167

167:                                              ; preds = %157, %154
  br label %168

168:                                              ; preds = %167, %153
  store i32 0, i32* %11, align 4
  store i32 1, i32* %9, align 4
  %169 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %170 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %12, align 4
  br label %176

176:                                              ; preds = %304, %168
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @FALSE, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp slt i32 %181, %182
  br label %184

184:                                              ; preds = %180, %176
  %185 = phi i1 [ false, %176 ], [ %183, %180 ]
  br i1 %185, label %186, label %305

186:                                              ; preds = %184
  %187 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %188 = load i32, i32* @DMDISTATE, align 4
  %189 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %187, i32 %188, i32 95)
  %190 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %191 = load i32, i32* @DEMOD_MODE, align 4
  %192 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %190, i32 %191, i32 0)
  %193 = call i32 @msleep(i32 50)
  store i32 0, i32* %7, align 4
  br label %194

194:                                              ; preds = %216, %186
  %195 = load i32, i32* %7, align 4
  %196 = icmp slt i32 %195, 10
  br i1 %196, label %197, label %219

197:                                              ; preds = %194
  %198 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %199 = load i32, i32* @TMGLOCK_QUALITY, align 4
  %200 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %198, i32 %199)
  %201 = icmp sge i32 %200, 2
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %202, %197
  %206 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %207 = load i32, i32* @AGC2I1, align 4
  %208 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %206, i32 %207)
  %209 = shl i32 %208, 8
  %210 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %211 = load i32, i32* @AGC2I0, align 4
  %212 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %210, i32 %211)
  %213 = or i32 %209, %212
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %15, align 4
  br label %216

216:                                              ; preds = %205
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %7, align 4
  br label %194

219:                                              ; preds = %194
  %220 = load i32, i32* %15, align 4
  %221 = sdiv i32 %220, 10
  store i32 %221, i32* %15, align 4
  %222 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %223 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %224 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @stv0900_get_symbol_rate(%struct.stv0900_internal* %222, i32 %225, i32 %226)
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %9, align 4
  %231 = mul nsw i32 %230, -1
  store i32 %231, i32* %9, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* %14, align 4
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @dprintk(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %232, i32 %233, i32 %234, i32 %235)
  %237 = load i32, i32* %8, align 4
  %238 = icmp sge i32 %237, 5
  br i1 %238, label %239, label %251

239:                                              ; preds = %219
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* %13, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %251

243:                                              ; preds = %239
  %244 = load i32, i32* %14, align 4
  %245 = icmp slt i32 %244, 55000000
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load i32, i32* %14, align 4
  %248 = icmp sgt i32 %247, 850000
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = load i32, i32* @TRUE, align 4
  store i32 %250, i32* %6, align 4
  br label %304

251:                                              ; preds = %246, %243, %239, %219
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %10, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %303

255:                                              ; preds = %251
  %256 = load i32, i32* %9, align 4
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %255
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* %16, align 4
  %261 = mul nsw i32 %259, %260
  %262 = load i32, i32* %12, align 4
  %263 = add nsw i32 %262, %261
  store i32 %263, i32* %12, align 4
  br label %270

264:                                              ; preds = %255
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* %16, align 4
  %267 = mul nsw i32 %265, %266
  %268 = load i32, i32* %12, align 4
  %269 = sub nsw i32 %268, %267
  store i32 %269, i32* %12, align 4
  br label %270

270:                                              ; preds = %264, %258
  %271 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %272 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %271, i32 0, i32 4
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %5, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 3
  br i1 %278, label %279, label %291

279:                                              ; preds = %270
  %280 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %281 = load i32, i32* %12, align 4
  %282 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %283 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %282, i32 0, i32 6
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %5, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %5, align 4
  %290 = call i32 @stv0900_set_tuner_auto(%struct.stv0900_internal* %280, i32 %281, i32 %288, i32 %289)
  br label %302

291:                                              ; preds = %270
  %292 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %293 = load i32, i32* %12, align 4
  %294 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %295 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %294, i32 0, i32 6
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %5, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @stv0900_set_tuner(%struct.dvb_frontend* %292, i32 %293, i32 %300)
  br label %302

302:                                              ; preds = %291, %279
  br label %303

303:                                              ; preds = %302, %251
  br label %304

304:                                              ; preds = %303, %249
  br label %176

305:                                              ; preds = %184
  %306 = load i32, i32* %6, align 4
  %307 = load i32, i32* @FALSE, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %305
  store i32 0, i32* %14, align 4
  br label %317

310:                                              ; preds = %305
  %311 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %312 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %313 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %5, align 4
  %316 = call i32 @stv0900_get_symbol_rate(%struct.stv0900_internal* %311, i32 %314, i32 %315)
  store i32 %316, i32* %14, align 4
  br label %317

317:                                              ; preds = %310, %309
  %318 = load i32, i32* %14, align 4
  ret i32 %318
}

declare dso_local i32 @stv0900_write_bits(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stv0900_get_bits(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @stv0900_read_reg(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @stv0900_get_symbol_rate(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @stv0900_set_tuner_auto(%struct.stv0900_internal*, i32, i32, i32) #1

declare dso_local i32 @stv0900_set_tuner(%struct.dvb_frontend*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
