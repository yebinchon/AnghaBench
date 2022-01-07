; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TALITOS_TIMEOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TALITOS_CCPSR_LO = common dso_local global i64 0, align 8
@TALITOS_CCPSR_LO_DOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"double fetch fifo overflow error\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@TALITOS_CCPSR_LO_SOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"single fetch fifo overflow error\0A\00", align 1
@TALITOS_CCPSR_LO_MDTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"master data transfer error\0A\00", align 1
@TALITOS_CCPSR_LO_SGDLZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"pointer not complete error\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"s/g data length zero error\0A\00", align 1
@TALITOS_CCPSR_LO_FPZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"parity error\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"fetch pointer zero error\0A\00", align 1
@TALITOS_CCPSR_LO_IDH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"illegal descriptor header error\0A\00", align 1
@TALITOS_CCPSR_LO_IEU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"static assignment error\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid exec unit error\0A\00", align 1
@TALITOS_CCPSR_LO_EU = common dso_local global i32 0, align 4
@TALITOS_CCPSR_LO_GB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"gather boundary error\0A\00", align 1
@TALITOS_CCPSR_LO_GRL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"gather return/length error\0A\00", align 1
@TALITOS_CCPSR_LO_SB = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"scatter boundary error\0A\00", align 1
@TALITOS_CCPSR_LO_SRL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"scatter return/length error\0A\00", align 1
@TALITOS_CCCR = common dso_local global i64 0, align 8
@TALITOS2_CCCR_CONT = common dso_local global i32 0, align 4
@TALITOS_CCCR_LO = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"failed to restart channel %d\0A\00", align 1
@TALITOS1_ISR_4CHERR = common dso_local global i32 0, align 4
@TALITOS2_ISR_4CHERR = common dso_local global i32 0, align 4
@TALITOS1_ISR_TEA_ERR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"TEA error: ISR 0x%08x_%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"done overflow, internal time out, or rngu error: ISR 0x%08x_%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i32)* @talitos_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @talitos_error(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.talitos_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %15)
  store %struct.talitos_private* %16, %struct.talitos_private** %7, align 8
  %17 = load i32, i32* @TALITOS_TIMEOUT, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %19 = call i32 @has_ftr_sec1(%struct.talitos_private* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %259, %3
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %27 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %262

30:                                               ; preds = %24
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 1
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 29, %37
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 2
  %41 = mul nsw i32 %40, 6
  %42 = sub nsw i32 %38, %41
  %43 = shl i32 1, %42
  %44 = and i32 %34, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  br label %259

47:                                               ; preds = %33
  br label %58

48:                                               ; preds = %30
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %51, 1
  %53 = shl i32 1, %52
  %54 = and i32 %49, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %259

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %62 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TALITOS_CCPSR_LO, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @in_be32(i64 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @TALITOS_CCPSR_LO_DOF, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %58
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %81

81:                                               ; preds = %76, %58
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @TALITOS_CCPSR_LO_SOF, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EAGAIN, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @TALITOS_CCPSR_LO_MDTE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @TALITOS_CCPSR_LO_SGDLZ, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* %109)
  br label %111

111:                                              ; preds = %104, %99
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @TALITOS_CCPSR_LO_FPZ, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %117, i8* %121)
  br label %123

123:                                              ; preds = %116, %111
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @TALITOS_CCPSR_LO_IDH, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @TALITOS_CCPSR_LO_IEU, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0)
  %142 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %137, i8* %141)
  br label %143

143:                                              ; preds = %136, %131
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @TALITOS_CCPSR_LO_EU, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @current_desc_hdr(%struct.device* %151, i32 %152)
  %154 = call i32 @report_eu_error(%struct.device* %149, i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %148, %143
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %191, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @TALITOS_CCPSR_LO_GB, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %164, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %158
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* @TALITOS_CCPSR_LO_GRL, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.device*, %struct.device** %4, align 8
  %173 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %172, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %166
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @TALITOS_CCPSR_LO_SB, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %180, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %174
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* @TALITOS_CCPSR_LO_SRL, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.device*, %struct.device** %4, align 8
  %189 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %188, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %182
  br label %191

191:                                              ; preds = %190, %155
  %192 = load %struct.device*, %struct.device** %4, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @flush_channel(%struct.device* %192, i32 %193, i32 %194, i32 %195)
  %197 = load i32, i32* %14, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %191
  %200 = load %struct.device*, %struct.device** %4, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @reset_channel(%struct.device* %200, i32 %201)
  br label %258

203:                                              ; preds = %191
  %204 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %205 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %204, i32 0, i32 1
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @TALITOS_CCCR, align 8
  %213 = add nsw i64 %211, %212
  %214 = load i32, i32* @TALITOS2_CCCR_CONT, align 4
  %215 = call i32 @setbits32(i64 %213, i32 %214)
  %216 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %217 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %216, i32 0, i32 1
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @TALITOS_CCCR_LO, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @setbits32(i64 %225, i32 0)
  br label %227

227:                                              ; preds = %248, %203
  %228 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %229 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %228, i32 0, i32 1
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @TALITOS_CCCR, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @in_be32(i64 %237)
  %239 = load i32, i32* @TALITOS2_CCCR_CONT, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %227
  %243 = load i32, i32* %8, align 4
  %244 = add i32 %243, -1
  store i32 %244, i32* %8, align 4
  %245 = icmp ne i32 %244, 0
  br label %246

246:                                              ; preds = %242, %227
  %247 = phi i1 [ false, %227 ], [ %245, %242 ]
  br i1 %247, label %248, label %250

248:                                              ; preds = %246
  %249 = call i32 (...) @cpu_relax()
  br label %227

250:                                              ; preds = %246
  %251 = load i32, i32* %8, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load %struct.device*, %struct.device** %4, align 8
  %255 = load i32, i32* %9, align 4
  %256 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %254, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %255)
  store i32 1, i32* %11, align 4
  br label %257

257:                                              ; preds = %253, %250
  br label %258

258:                                              ; preds = %257, %199
  br label %259

259:                                              ; preds = %258, %56, %46
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %9, align 4
  br label %24

262:                                              ; preds = %24
  %263 = load i32, i32* %11, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %286, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %13, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load i32, i32* %5, align 4
  %270 = load i32, i32* @TALITOS1_ISR_4CHERR, align 4
  %271 = xor i32 %270, -1
  %272 = and i32 %269, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %286, label %274

274:                                              ; preds = %268, %265
  %275 = load i32, i32* %13, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %5, align 4
  %279 = load i32, i32* @TALITOS2_ISR_4CHERR, align 4
  %280 = xor i32 %279, -1
  %281 = and i32 %278, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %277, %274
  %284 = load i32, i32* %6, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %323

286:                                              ; preds = %283, %277, %268, %262
  %287 = load i32, i32* %13, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %286
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* @TALITOS1_ISR_TEA_ERR, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %289
  %295 = load %struct.device*, %struct.device** %4, align 8
  %296 = load i32, i32* %5, align 4
  %297 = load i32, i32* %6, align 4
  %298 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %295, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %296, i32 %297)
  br label %304

299:                                              ; preds = %289, %286
  %300 = load %struct.device*, %struct.device** %4, align 8
  %301 = load i32, i32* %5, align 4
  %302 = load i32, i32* %6, align 4
  %303 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %300, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i64 0, i64 0), i32 %301, i32 %302)
  br label %304

304:                                              ; preds = %299, %294
  store i32 0, i32* %9, align 4
  br label %305

305:                                              ; preds = %317, %304
  %306 = load i32, i32* %9, align 4
  %307 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %308 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp slt i32 %306, %309
  br i1 %310, label %311, label %320

311:                                              ; preds = %305
  %312 = load %struct.device*, %struct.device** %4, align 8
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* @EIO, align 4
  %315 = sub nsw i32 0, %314
  %316 = call i32 @flush_channel(%struct.device* %312, i32 %313, i32 %315, i32 1)
  br label %317

317:                                              ; preds = %311
  %318 = load i32, i32* %9, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %9, align 4
  br label %305

320:                                              ; preds = %305
  %321 = load %struct.device*, %struct.device** %4, align 8
  %322 = call i32 @init_device(%struct.device* %321)
  br label %323

323:                                              ; preds = %320, %283
  ret void
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @report_eu_error(%struct.device*, i32, i32) #1

declare dso_local i32 @current_desc_hdr(%struct.device*, i32) #1

declare dso_local i32 @flush_channel(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @reset_channel(%struct.device*, i32) #1

declare dso_local i32 @setbits32(i64, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @init_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
