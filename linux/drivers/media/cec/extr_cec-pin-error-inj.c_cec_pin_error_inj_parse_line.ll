; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin-error-inj.c_cec_pin_error_inj_parse_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin-error-inj.c_cec_pin_error_inj_parse_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.cec_adapter = type { %struct.cec_pin* }
%struct.cec_pin = type { i32*, i32, i32, i32, i32, i32, i32, i32** }

@cec_pin_error_inj_parse_line.delims = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [4 x i8] c" \09\0D\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@CEC_TIM_CUSTOM_DEFAULT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"rx-clear\00", align 1
@CEC_ERROR_INJ_OP_ANY = common dso_local global i32 0, align 4
@CEC_ERROR_INJ_RX_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"tx-clear\00", align 1
@CEC_ERROR_INJ_TX_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"tx-ignore-nack-until-eom\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"tx-custom-pulse\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"tx-custom-low-usecs\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"tx-custom-high-usecs\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@CEC_ERROR_INJ_MODE_ONCE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@CEC_ERROR_INJ_MODE_OFF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@CEC_ERROR_INJ_MODE_ALWAYS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@CEC_ERROR_INJ_MODE_TOGGLE = common dso_local global i32 0, align 4
@cec_error_inj_cmds = common dso_local global %struct.TYPE_2__* null, align 8
@CEC_ERROR_INJ_MODE_MASK = common dso_local global i32 0, align 4
@CEC_ERROR_INJ_RX_ARB_LOST_OFFSET = common dso_local global i32 0, align 4
@CEC_ERROR_INJ_TX_ADD_BYTES_OFFSET = common dso_local global i32 0, align 4
@CEC_ERROR_INJ_TX_SHORT_BIT_OFFSET = common dso_local global i32 0, align 4
@CEC_ERROR_INJ_TX_LONG_BIT_OFFSET = common dso_local global i32 0, align 4
@CEC_ERROR_INJ_TX_CUSTOM_BIT_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cec_pin_error_inj_parse_line(%struct.cec_adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cec_pin*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  %25 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %25, i32 0, i32 0
  %27 = load %struct.cec_pin*, %struct.cec_pin** %26, align 8
  store %struct.cec_pin* %27, %struct.cec_pin** %6, align 8
  store i32 0, i32* %8, align 4
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i8* @skip_spaces(i8* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** @cec_pin_error_inj_parse_line.delims, align 8
  %32 = call i8* @strsep(i8** %9, i8* %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %2
  %37 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %38 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @memset(i32* %39, i32 0, i32 8)
  %41 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %42 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %41, i32 0, i32 2
  store i32 0, i32* %42, align 4
  %43 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %44 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %46 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %45, i32 0, i32 3
  store i32 0, i32* %46, align 8
  %47 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %48 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %47, i32 0, i32 4
  store i32 0, i32* %48, align 4
  %49 = load i8*, i8** @CEC_TIM_CUSTOM_DEFAULT, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %52 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @CEC_TIM_CUSTOM_DEFAULT, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %56 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  store i32 1, i32* %3, align 4
  br label %418

57:                                               ; preds = %2
  %58 = load i8*, i8** %10, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @CEC_ERROR_INJ_OP_ANY, align 4
  %65 = icmp ule i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i32, i32* @CEC_ERROR_INJ_RX_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %70 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %68
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %82 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %81, i32 0, i32 1
  store i32 0, i32* %82, align 8
  store i32 1, i32* %3, align 4
  br label %418

83:                                               ; preds = %57
  %84 = load i8*, i8** %10, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %103, %87
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @CEC_ERROR_INJ_OP_ANY, align 4
  %91 = icmp ule i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i32, i32* @CEC_ERROR_INJ_TX_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %96 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %94
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %88

106:                                              ; preds = %88
  %107 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %108 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %107, i32 0, i32 2
  store i32 0, i32* %108, align 4
  %109 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %110 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %109, i32 0, i32 3
  store i32 0, i32* %110, align 8
  %111 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %112 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %111, i32 0, i32 4
  store i32 0, i32* %112, align 4
  %113 = load i8*, i8** @CEC_TIM_CUSTOM_DEFAULT, align 8
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %116 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load i8*, i8** @CEC_TIM_CUSTOM_DEFAULT, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %120 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 4
  store i32 1, i32* %3, align 4
  br label %418

121:                                              ; preds = %83
  %122 = load i8*, i8** %10, align 8
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %127 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %126, i32 0, i32 3
  store i32 1, i32* %127, align 8
  store i32 1, i32* %3, align 4
  br label %418

128:                                              ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %134 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %133, i32 0, i32 4
  store i32 1, i32* %134, align 4
  %135 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %136 = call i32 @cec_pin_start_timer(%struct.cec_pin* %135)
  store i32 1, i32* %3, align 4
  br label %418

137:                                              ; preds = %128
  %138 = load i8*, i8** %9, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %418

141:                                              ; preds = %137
  %142 = load i8*, i8** %9, align 8
  %143 = call i8* @skip_spaces(i8* %142)
  store i8* %143, i8** %9, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %141
  %148 = load i8*, i8** %9, align 8
  %149 = call i64 @kstrtou32(i8* %148, i32 0, i32* %18)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %18, align 4
  %153 = icmp sgt i32 %152, 10000000
  br i1 %153, label %154, label %155

154:                                              ; preds = %151, %147
  store i32 0, i32* %3, align 4
  br label %418

155:                                              ; preds = %151
  %156 = load i32, i32* %18, align 4
  %157 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %158 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 8
  store i32 1, i32* %3, align 4
  br label %418

159:                                              ; preds = %141
  %160 = load i8*, i8** %10, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %159
  %164 = load i8*, i8** %9, align 8
  %165 = call i64 @kstrtou32(i8* %164, i32 0, i32* %19)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %19, align 4
  %169 = icmp sgt i32 %168, 10000000
  br i1 %169, label %170, label %171

170:                                              ; preds = %167, %163
  store i32 0, i32* %3, align 4
  br label %418

171:                                              ; preds = %167
  %172 = load i32, i32* %19, align 4
  %173 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %174 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 4
  store i32 1, i32* %3, align 4
  br label %418

175:                                              ; preds = %159
  %176 = load i8*, i8** %10, align 8
  %177 = call i8* @strchr(i8* %176, i8 signext 44)
  store i8* %177, i8** %11, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i8*, i8** %11, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %11, align 8
  store i8 0, i8* %181, align 1
  br label %183

183:                                              ; preds = %180, %175
  %184 = load i8*, i8** %10, align 8
  %185 = call i64 @strcmp(i8* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %201, label %187

187:                                              ; preds = %183
  store i32 0, i32* %14, align 4
  %188 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %189 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* @CEC_ERROR_INJ_OP_ANY, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32* %193, i32** %12, align 8
  %194 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %195 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %194, i32 0, i32 7
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* @CEC_ERROR_INJ_OP_ANY, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  %200 = load i32*, i32** %199, align 8
  store i32* %200, i32** %13, align 8
  br label %221

201:                                              ; preds = %183
  %202 = load i8*, i8** %10, align 8
  %203 = call i32 @kstrtou8(i8* %202, i32 0, i32* %15)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %219, label %205

205:                                              ; preds = %201
  store i32 1, i32* %14, align 4
  %206 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %207 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32* %211, i32** %12, align 8
  %212 = load %struct.cec_pin*, %struct.cec_pin** %6, align 8
  %213 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %212, i32 0, i32 7
  %214 = load i32**, i32*** %213, align 8
  %215 = load i32, i32* %15, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32*, i32** %214, i64 %216
  %218 = load i32*, i32** %217, align 8
  store i32* %218, i32** %13, align 8
  br label %220

219:                                              ; preds = %201
  store i32 0, i32* %3, align 4
  br label %418

220:                                              ; preds = %205
  br label %221

221:                                              ; preds = %220, %187
  %222 = load i32, i32* @CEC_ERROR_INJ_MODE_ONCE, align 4
  store i32 %222, i32* %16, align 4
  %223 = load i8*, i8** %11, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %254

225:                                              ; preds = %221
  %226 = load i8*, i8** %11, align 8
  %227 = call i64 @strcmp(i8* %226, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* @CEC_ERROR_INJ_MODE_OFF, align 4
  store i32 %230, i32* %16, align 4
  br label %253

231:                                              ; preds = %225
  %232 = load i8*, i8** %11, align 8
  %233 = call i64 @strcmp(i8* %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %231
  %236 = load i32, i32* @CEC_ERROR_INJ_MODE_ONCE, align 4
  store i32 %236, i32* %16, align 4
  br label %252

237:                                              ; preds = %231
  %238 = load i8*, i8** %11, align 8
  %239 = call i64 @strcmp(i8* %238, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* @CEC_ERROR_INJ_MODE_ALWAYS, align 4
  store i32 %242, i32* %16, align 4
  br label %251

243:                                              ; preds = %237
  %244 = load i8*, i8** %11, align 8
  %245 = call i64 @strcmp(i8* %244, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %243
  %248 = load i32, i32* @CEC_ERROR_INJ_MODE_TOGGLE, align 4
  store i32 %248, i32* %16, align 4
  br label %250

249:                                              ; preds = %243
  store i32 0, i32* %3, align 4
  br label %418

250:                                              ; preds = %247
  br label %251

251:                                              ; preds = %250, %241
  br label %252

252:                                              ; preds = %251, %235
  br label %253

253:                                              ; preds = %252, %229
  br label %254

254:                                              ; preds = %253, %221
  %255 = load i8*, i8** @cec_pin_error_inj_parse_line.delims, align 8
  %256 = call i8* @strsep(i8** %9, i8* %255)
  store i8* %256, i8** %10, align 8
  %257 = load i8*, i8** %9, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %267

259:                                              ; preds = %254
  %260 = load i8*, i8** %9, align 8
  %261 = call i8* @skip_spaces(i8* %260)
  store i8* %261, i8** %9, align 8
  %262 = load i8*, i8** %9, align 8
  %263 = call i32 @kstrtou8(i8* %262, i32 0, i32* %17)
  %264 = icmp ne i32 %263, 0
  %265 = xor i1 %264, true
  %266 = zext i1 %265 to i32
  store i32 %266, i32* %8, align 4
  br label %267

267:                                              ; preds = %259, %254
  %268 = load i8*, i8** %10, align 8
  %269 = call i64 @strcmp(i8* %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %267
  %272 = load i32*, i32** %12, align 8
  store i32 0, i32* %272, align 4
  store i32 1, i32* %3, align 4
  br label %418

273:                                              ; preds = %267
  %274 = load i8*, i8** %10, align 8
  %275 = call i64 @strcmp(i8* %274, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %273
  %278 = load i32, i32* @CEC_ERROR_INJ_RX_MASK, align 4
  %279 = xor i32 %278, -1
  %280 = load i32*, i32** %12, align 8
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, %279
  store i32 %282, i32* %280, align 4
  store i32 1, i32* %3, align 4
  br label %418

283:                                              ; preds = %273
  %284 = load i8*, i8** %10, align 8
  %285 = call i64 @strcmp(i8* %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %283
  %288 = load i32, i32* @CEC_ERROR_INJ_TX_MASK, align 4
  %289 = xor i32 %288, -1
  %290 = load i32*, i32** %12, align 8
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, %289
  store i32 %292, i32* %290, align 4
  store i32 1, i32* %3, align 4
  br label %418

293:                                              ; preds = %283
  store i32 0, i32* %7, align 4
  br label %294

294:                                              ; preds = %414, %293
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cec_error_inj_cmds, align 8
  %296 = load i32, i32* %7, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %417

302:                                              ; preds = %294
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cec_error_inj_cmds, align 8
  %304 = load i32, i32* %7, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  store i8* %308, i8** %20, align 8
  store i32 1, i32* %24, align 4
  %309 = load i8*, i8** %10, align 8
  %310 = load i8*, i8** %20, align 8
  %311 = call i64 @strcmp(i8* %309, i8* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %302
  br label %414

314:                                              ; preds = %302
  %315 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cec_error_inj_cmds, align 8
  %316 = load i32, i32* %7, align 4
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  store i32 %320, i32* %21, align 4
  %321 = load i32, i32* @CEC_ERROR_INJ_MODE_MASK, align 4
  %322 = load i32, i32* %21, align 4
  %323 = shl i32 %321, %322
  store i32 %323, i32* %22, align 4
  %324 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cec_error_inj_cmds, align 8
  %325 = load i32, i32* %7, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %23, align 4
  %330 = load i32, i32* %21, align 4
  %331 = load i32, i32* @CEC_ERROR_INJ_RX_ARB_LOST_OFFSET, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %342

333:                                              ; preds = %314
  %334 = load i32, i32* %14, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  store i32 0, i32* %3, align 4
  br label %418

337:                                              ; preds = %333
  %338 = load i32, i32* %8, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %337
  store i32 15, i32* %17, align 4
  br label %341

341:                                              ; preds = %340, %337
  store i32 0, i32* %24, align 4
  br label %355

342:                                              ; preds = %314
  %343 = load i32, i32* %21, align 4
  %344 = load i32, i32* @CEC_ERROR_INJ_TX_ADD_BYTES_OFFSET, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %354

346:                                              ; preds = %342
  %347 = load i32, i32* %8, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i32, i32* %17, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %353, label %352

352:                                              ; preds = %349, %346
  store i32 0, i32* %3, align 4
  br label %418

353:                                              ; preds = %349
  store i32 0, i32* %24, align 4
  br label %354

354:                                              ; preds = %353, %342
  br label %355

355:                                              ; preds = %354, %341
  %356 = load i32, i32* %23, align 4
  %357 = icmp sge i32 %356, 0
  br i1 %357, label %358, label %393

358:                                              ; preds = %355
  %359 = load i32, i32* %24, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %393

361:                                              ; preds = %358
  %362 = load i32, i32* %8, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %361
  %365 = load i32, i32* %17, align 4
  %366 = icmp sge i32 %365, 160
  br i1 %366, label %367, label %368

367:                                              ; preds = %364, %361
  store i32 0, i32* %3, align 4
  br label %418

368:                                              ; preds = %364
  %369 = load i32, i32* %14, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %368
  %372 = load i32, i32* %17, align 4
  %373 = icmp slt i32 %372, 18
  br i1 %373, label %374, label %375

374:                                              ; preds = %371
  store i32 0, i32* %3, align 4
  br label %418

375:                                              ; preds = %371, %368
  %376 = load i32, i32* %21, align 4
  %377 = load i32, i32* @CEC_ERROR_INJ_TX_SHORT_BIT_OFFSET, align 4
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %387, label %379

379:                                              ; preds = %375
  %380 = load i32, i32* %21, align 4
  %381 = load i32, i32* @CEC_ERROR_INJ_TX_LONG_BIT_OFFSET, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %387, label %383

383:                                              ; preds = %379
  %384 = load i32, i32* %21, align 4
  %385 = load i32, i32* @CEC_ERROR_INJ_TX_CUSTOM_BIT_OFFSET, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %392

387:                                              ; preds = %383, %379, %375
  %388 = load i32, i32* %17, align 4
  %389 = srem i32 %388, 10
  %390 = icmp eq i32 %389, 9
  br i1 %390, label %391, label %392

391:                                              ; preds = %387
  store i32 0, i32* %3, align 4
  br label %418

392:                                              ; preds = %387, %383
  br label %393

393:                                              ; preds = %392, %358, %355
  %394 = load i32, i32* %22, align 4
  %395 = xor i32 %394, -1
  %396 = load i32*, i32** %12, align 8
  %397 = load i32, i32* %396, align 4
  %398 = and i32 %397, %395
  store i32 %398, i32* %396, align 4
  %399 = load i32, i32* %16, align 4
  %400 = load i32, i32* %21, align 4
  %401 = shl i32 %399, %400
  %402 = load i32*, i32** %12, align 8
  %403 = load i32, i32* %402, align 4
  %404 = or i32 %403, %401
  store i32 %404, i32* %402, align 4
  %405 = load i32, i32* %23, align 4
  %406 = icmp sge i32 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %393
  %408 = load i32, i32* %17, align 4
  %409 = load i32*, i32** %13, align 8
  %410 = load i32, i32* %23, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  store i32 %408, i32* %412, align 4
  br label %413

413:                                              ; preds = %407, %393
  store i32 1, i32* %3, align 4
  br label %418

414:                                              ; preds = %313
  %415 = load i32, i32* %7, align 4
  %416 = add i32 %415, 1
  store i32 %416, i32* %7, align 4
  br label %294

417:                                              ; preds = %294
  store i32 0, i32* %3, align 4
  br label %418

418:                                              ; preds = %417, %413, %391, %374, %367, %352, %336, %287, %277, %271, %249, %219, %171, %170, %155, %154, %140, %132, %125, %106, %80, %36
  %419 = load i32, i32* %3, align 4
  ret i32 %419
}

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cec_pin_start_timer(%struct.cec_pin*) #1

declare dso_local i64 @kstrtou32(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @kstrtou8(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
