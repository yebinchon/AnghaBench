; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_mem_err_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_mem_err_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cper_mem_err_compact = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CPER_REC_LEN = common dso_local global i32 0, align 4
@CPER_MEM_VALID_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"node: %d \00", align 1
@CPER_MEM_VALID_CARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"card: %d \00", align 1
@CPER_MEM_VALID_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"module: %d \00", align 1
@CPER_MEM_VALID_RANK_NUMBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"rank: %d \00", align 1
@CPER_MEM_VALID_BANK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"bank: %d \00", align 1
@CPER_MEM_VALID_DEVICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"device: %d \00", align 1
@CPER_MEM_VALID_ROW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"row: %d \00", align 1
@CPER_MEM_VALID_COLUMN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"column: %d \00", align 1
@CPER_MEM_VALID_BIT_POSITION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"bit_position: %d \00", align 1
@CPER_MEM_VALID_REQUESTOR_ID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"requestor_id: 0x%016llx \00", align 1
@CPER_MEM_VALID_RESPONDER_ID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"responder_id: 0x%016llx \00", align 1
@CPER_MEM_VALID_TARGET_ID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"target_id: 0x%016llx \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cper_mem_err_compact*, i8*)* @cper_mem_err_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cper_mem_err_location(%struct.cper_mem_err_compact* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cper_mem_err_compact*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cper_mem_err_compact* %0, %struct.cper_mem_err_compact** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %291

11:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @CPER_REC_LEN, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %15 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CPER_MEM_VALID_NODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %11
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %29 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @scnprintf(i8* %24, i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %20, %11
  %37 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %38 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CPER_MEM_VALID_CARD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %52 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @scnprintf(i8* %47, i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %43, %36
  %60 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %61 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CPER_MEM_VALID_MODULE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %75 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @scnprintf(i8* %70, i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %66, %59
  %83 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %84 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CPER_MEM_VALID_RANK_NUMBER, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %82
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %98 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @scnprintf(i8* %93, i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %89, %82
  %106 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %107 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CPER_MEM_VALID_BANK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %105
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %121 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @scnprintf(i8* %116, i32 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %112, %105
  %129 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %130 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @CPER_MEM_VALID_DEVICE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %128
  %136 = load i8*, i8** %5, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %7, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %144 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @scnprintf(i8* %139, i32 %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %135, %128
  %152 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %153 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @CPER_MEM_VALID_ROW, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %151
  %159 = load i8*, i8** %5, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %163, %164
  %166 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %167 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @scnprintf(i8* %162, i32 %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %158, %151
  %175 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %176 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @CPER_MEM_VALID_COLUMN, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %174
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %7, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %190 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @scnprintf(i8* %185, i32 %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %181, %174
  %198 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %199 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @CPER_MEM_VALID_BIT_POSITION, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %197
  %205 = load i8*, i8** %5, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %7, align 4
  %211 = sub nsw i32 %209, %210
  %212 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %213 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @scnprintf(i8* %208, i32 %211, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %204, %197
  %221 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %222 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @CPER_MEM_VALID_REQUESTOR_ID, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %243

227:                                              ; preds = %220
  %228 = load i8*, i8** %5, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %7, align 4
  %234 = sub nsw i32 %232, %233
  %235 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %236 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = call i64 @scnprintf(i8* %231, i32 %234, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, %238
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %7, align 4
  br label %243

243:                                              ; preds = %227, %220
  %244 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %245 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @CPER_MEM_VALID_RESPONDER_ID, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %243
  %251 = load i8*, i8** %5, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* %7, align 4
  %257 = sub nsw i32 %255, %256
  %258 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %259 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = call i64 @scnprintf(i8* %254, i32 %257, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* %7, align 4
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %263, %261
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %7, align 4
  br label %266

266:                                              ; preds = %250, %243
  %267 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %268 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @CPER_MEM_VALID_TARGET_ID, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %285

273:                                              ; preds = %266
  %274 = load i8*, i8** %5, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* %7, align 4
  %280 = sub nsw i32 %278, %279
  %281 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %282 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @scnprintf(i8* %277, i32 %280, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %273, %266
  %286 = load i8*, i8** %5, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %286, i64 %288
  store i8 0, i8* %289, align 1
  %290 = load i32, i32* %7, align 4
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %285, %10
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i64 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
