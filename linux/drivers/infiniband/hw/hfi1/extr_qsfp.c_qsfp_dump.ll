; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qsfp.c_qsfp_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qsfp.c_qsfp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }

@QSFP_DUMP_CHUNK = common dso_local global i32 0, align 4
@QSFP_ATTEN_OFFS = common dso_local global i64 0, align 8
@QSFP_VOUI_OFFS = common dso_local global i64 0, align 8
@QSFP_MOD_TECH_OFFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%dM \00", align 1
@QSFP_MOD_LEN_OFFS = common dso_local global i64 0, align 8
@QSFP_MOD_PWR_OFFS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"PWR:%.3sW\0A\00", align 1
@pwr_codes = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"TECH:%s%s\0A\00", align 1
@hfi1_qsfp_devtech = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"Vendor:%.*s\0A\00", align 1
@QSFP_VEND_LEN = common dso_local global i32 0, align 4
@QSFP_VEND_OFFS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"OUI:%06X\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Part#:%.*s\0A\00", align 1
@QSFP_PN_LEN = common dso_local global i32 0, align 4
@QSFP_PN_OFFS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"Rev:%.*s\0A\00", align 1
@QSFP_REV_LEN = common dso_local global i32 0, align 4
@QSFP_REV_OFFS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"Atten:%d, %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Serial:%.*s\0A\00", align 1
@QSFP_SN_LEN = common dso_local global i32 0, align 4
@QSFP_SN_OFFS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"Date:%.*s\0A\00", align 1
@QSFP_DATE_LEN = common dso_local global i32 0, align 4
@QSFP_DATE_OFFS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"Lot:%.*s\0A\00", align 1
@QSFP_LOT_LEN = common dso_local global i32 0, align 4
@QSFP_LOT_OFFS = common dso_local global i64 0, align 8
@QSFP_DEFAULT_HDR_CNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qsfp_dump(%struct.hfi1_pportdata* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [6 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %18 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32* %21, i32** %7, align 8
  %22 = load i32, i32* @QSFP_DUMP_CHUNK, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* @QSFP_ATTEN_OFFS, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* @QSFP_VOUI_OFFS, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 32, i8* %32, align 1
  %33 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %33, align 1
  %34 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %35 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %283

39:                                               ; preds = %3
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* @QSFP_MOD_TECH_OFFS, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @QSFP_IS_CU(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* @QSFP_MOD_LEN_OFFS, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snprintf(i8* %47, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* @QSFP_MOD_PWR_OFFS, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32*, i32** @pwr_codes, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i64 @get_qsfp_power_class(i32 %66)
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %61, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %79, %80
  %82 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %83 = load i32*, i32** @hfi1_qsfp_devtech, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i64, i64* @QSFP_MOD_TECH_OFFS, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %83, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %78, i32 %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %82, i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %11, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* @QSFP_VEND_LEN, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = load i64, i64* @QSFP_VEND_OFFS, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %100, i32 %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32* %107)
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %11, align 4
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %11, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @QSFP_OUI(i32* %120)
  %122 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %116, i32 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %11, align 4
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %131, %132
  %134 = load i32, i32* @QSFP_PN_LEN, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = load i64, i64* @QSFP_PN_OFFS, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %130, i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %134, i32* %137)
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %11, align 4
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %11, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i32, i32* @QSFP_REV_LEN, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = load i64, i64* @QSFP_REV_OFFS, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %146, i32 %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %150, i32* %153)
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %11, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = load i64, i64* @QSFP_MOD_TECH_OFFS, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @QSFP_IS_CU(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %53
  %166 = load i8*, i8** %5, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %11, align 4
  %172 = sub nsw i32 %170, %171
  %173 = load i32*, i32** %13, align 8
  %174 = call i32 @QSFP_ATTEN_SDR(i32* %173)
  %175 = load i32*, i32** %13, align 8
  %176 = call i32 @QSFP_ATTEN_DDR(i32* %175)
  %177 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %169, i32 %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %174, i32 %176)
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %165, %53
  %183 = load i8*, i8** %5, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %11, align 4
  %189 = sub nsw i32 %187, %188
  %190 = load i32, i32* @QSFP_SN_LEN, align 4
  %191 = load i32*, i32** %7, align 8
  %192 = load i64, i64* @QSFP_SN_OFFS, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %186, i32 %189, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %190, i32* %193)
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %11, align 4
  %199 = load i8*, i8** %5, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %11, align 4
  %205 = sub nsw i32 %203, %204
  %206 = load i32, i32* @QSFP_DATE_LEN, align 4
  %207 = load i32*, i32** %7, align 8
  %208 = load i64, i64* @QSFP_DATE_OFFS, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %202, i32 %205, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %206, i32* %209)
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %11, align 4
  %215 = load i8*, i8** %5, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %11, align 4
  %221 = sub nsw i32 %219, %220
  %222 = load i32, i32* @QSFP_LOT_LEN, align 4
  %223 = load i32*, i32** %7, align 8
  %224 = load i64, i64* @QSFP_LOT_OFFS, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %218, i32 %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %222, i32* %225)
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %11, align 4
  br label %231

231:                                              ; preds = %266, %182
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* @QSFP_DEFAULT_HDR_CNT, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %282

235:                                              ; preds = %231
  %236 = load i32*, i32** %7, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* @QSFP_DUMP_CHUNK, align 4
  %241 = call i32 @memcpy(i32* %25, i32* %239, i32 %240)
  store i32 0, i32* %16, align 4
  br label %242

242:                                              ; preds = %263, %235
  %243 = load i32, i32* %16, align 4
  %244 = load i32, i32* @QSFP_DUMP_CHUNK, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %266

246:                                              ; preds = %242
  %247 = load i8*, i8** %5, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  %251 = load i32, i32* %6, align 4
  %252 = load i32, i32* %11, align 4
  %253 = sub nsw i32 %251, %252
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %25, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %250, i32 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %260, %258
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %11, align 4
  br label %263

263:                                              ; preds = %246
  %264 = load i32, i32* %16, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %16, align 4
  br label %242

266:                                              ; preds = %242
  %267 = load i8*, i8** %5, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* %11, align 4
  %273 = sub nsw i32 %271, %272
  %274 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %270, i32 %273, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %276, %274
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %11, align 4
  %279 = load i32, i32* @QSFP_DUMP_CHUNK, align 4
  %280 = load i32, i32* %12, align 4
  %281 = add nsw i32 %280, %279
  store i32 %281, i32* %12, align 4
  br label %231

282:                                              ; preds = %231
  br label %283

283:                                              ; preds = %282, %3
  %284 = load i32, i32* %11, align 4
  %285 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %285)
  ret i32 %284
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @QSFP_IS_CU(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @scnprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @get_qsfp_power_class(i32) #2

declare dso_local i32 @QSFP_OUI(i32*) #2

declare dso_local i32 @QSFP_ATTEN_SDR(i32*) #2

declare dso_local i32 @QSFP_ATTEN_DDR(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
