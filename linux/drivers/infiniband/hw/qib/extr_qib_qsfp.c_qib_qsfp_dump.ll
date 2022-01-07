; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qsfp.c_qib_qsfp_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qsfp.c_qib_qsfp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32 }
%struct.qib_qsfp_cache = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@QSFP_DUMP_CHUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%dM \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"PWR:%.3sW\0A\00", align 1
@pwr_codes = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"TECH:%s%s\0A\00", align 1
@qib_qsfp_devtech = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"Vendor:%.*s\0A\00", align 1
@QSFP_VEND_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"OUI:%06X\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Part#:%.*s\0A\00", align 1
@QSFP_PN_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"Rev:%.*s\0A\00", align 1
@QSFP_REV_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Atten:%d, %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Serial:%.*s\0A\00", align 1
@QSFP_SN_LEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"Date:%.*s\0A\00", align 1
@QSFP_DATE_LEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"Lot:%.*s\0A\00", align 1
@QSFP_LOT_LEN = common dso_local global i32 0, align 4
@QSFP_DEFAULT_HDR_CNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_qsfp_dump(%struct.qib_pportdata* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_qsfp_cache, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [6 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @QSFP_DUMP_CHUNK, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %20 = call i32 @qib_refresh_qsfp_cache(%struct.qib_pportdata* %19, %struct.qib_qsfp_cache* %7)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %260

24:                                               ; preds = %3
  %25 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 32, i8* %25, align 1
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @QSFP_IS_CU(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %33 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i64, i64* @pwr_codes, align 8
  %45 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @QSFP_PWR(i32 %46)
  %48 = mul nsw i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %44, %49
  %51 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %40, i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %60, %61
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %64 = load i32*, i32** @qib_qsfp_devtech, align 8
  %65 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %59, i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %63, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* @QSFP_VEND_LEN, align 4
  %84 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %79, i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %95, %96
  %98 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @QSFP_OUI(i32 %99)
  %101 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %94, i32 %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* @QSFP_PN_LEN, align 4
  %114 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %109, i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %113, i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %11, align 4
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i32, i32* @QSFP_REV_LEN, align 4
  %129 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %124, i32 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %128, i32 %130)
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %11, align 4
  %136 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @QSFP_IS_CU(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %36
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %11, align 4
  %147 = sub nsw i32 %145, %146
  %148 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @QSFP_ATTEN_SDR(i32 %149)
  %151 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @QSFP_ATTEN_DDR(i32 %152)
  %154 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %144, i32 %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %150, i32 %153)
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %140, %36
  %160 = load i8*, i8** %5, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %11, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* @QSFP_SN_LEN, align 4
  %168 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %163, i32 %166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %167, i32 %169)
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %11, align 4
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %11, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load i32, i32* @QSFP_DATE_LEN, align 4
  %183 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %178, i32 %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %182, i32 %184)
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %185
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %11, align 4
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %11, align 4
  %196 = sub nsw i32 %194, %195
  %197 = load i32, i32* @QSFP_LOT_LEN, align 4
  %198 = getelementptr inbounds %struct.qib_qsfp_cache, %struct.qib_qsfp_cache* %7, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %193, i32 %196, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %197, i32 %199)
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %202, %200
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %242, %159
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* @QSFP_DEFAULT_HDR_CNT, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %258

209:                                              ; preds = %205
  %210 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @QSFP_DUMP_CHUNK, align 4
  %213 = call i32 @qsfp_read(%struct.qib_pportdata* %210, i32 %211, i32* %18, i32 %212)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  br label %260

217:                                              ; preds = %209
  store i32 0, i32* %14, align 4
  br label %218

218:                                              ; preds = %239, %217
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %242

222:                                              ; preds = %218
  %223 = load i8*, i8** %5, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %11, align 4
  %229 = sub nsw i32 %227, %228
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %18, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %226, i32 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %234
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %11, align 4
  br label %239

239:                                              ; preds = %222
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %14, align 4
  br label %218

242:                                              ; preds = %218
  %243 = load i8*, i8** %5, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %11, align 4
  %249 = sub nsw i32 %247, %248
  %250 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %246, i32 %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %252, %250
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* @QSFP_DUMP_CHUNK, align 4
  %256 = load i32, i32* %13, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* %13, align 4
  br label %205

258:                                              ; preds = %205
  %259 = load i32, i32* %11, align 4
  store i32 %259, i32* %12, align 4
  br label %260

260:                                              ; preds = %258, %216, %23
  %261 = load i32, i32* %12, align 4
  %262 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %262)
  ret i32 %261
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @qib_refresh_qsfp_cache(%struct.qib_pportdata*, %struct.qib_qsfp_cache*) #2

declare dso_local i64 @QSFP_IS_CU(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i64 @scnprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @QSFP_PWR(i32) #2

declare dso_local i32 @QSFP_OUI(i32) #2

declare dso_local i32 @QSFP_ATTEN_SDR(i32) #2

declare dso_local i32 @QSFP_ATTEN_DDR(i32) #2

declare dso_local i32 @qsfp_read(%struct.qib_pportdata*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
