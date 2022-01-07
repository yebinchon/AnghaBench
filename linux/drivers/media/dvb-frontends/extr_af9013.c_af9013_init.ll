; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.af9013_reg_mask_val = type { i32, i32, i32 }
%struct.dvb_frontend = type { %struct.af9013_state* }
%struct.af9013_state = type { i32*, i32, i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"load demod core settings\0A\00", align 1
@demod_init_tab = common dso_local global %struct.af9013_reg_mask_val* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"load tuner specific settings\0A\00", align 1
@tuner_init_tab_mxl5003d = common dso_local global %struct.af9013_reg_mask_val* null, align 8
@tuner_init_tab_mxl5005 = common dso_local global %struct.af9013_reg_mask_val* null, align 8
@tuner_init_tab_env77h11d5 = common dso_local global %struct.af9013_reg_mask_val* null, align 8
@tuner_init_tab_mt2060 = common dso_local global %struct.af9013_reg_mask_val* null, align 8
@tuner_init_tab_mc44s803 = common dso_local global %struct.af9013_reg_mask_val* null, align 8
@tuner_init_tab_qt1010 = common dso_local global %struct.af9013_reg_mask_val* null, align 8
@tuner_init_tab_mt2060_2 = common dso_local global %struct.af9013_reg_mask_val* null, align 8
@tuner_init_tab_tda18271 = common dso_local global %struct.af9013_reg_mask_val* null, align 8
@tuner_init_tab_unknown = common dso_local global %struct.af9013_reg_mask_val* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @af9013_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.af9013_state*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca %struct.af9013_reg_mask_val*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.af9013_state*, %struct.af9013_state** %13, align 8
  store %struct.af9013_state* %14, %struct.af9013_state** %4, align 8
  %15 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %16 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %15, i32 0, i32 7
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %5, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %22 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regmap_update_bits(i32 %23, i32 55098, i32 8, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %258

28:                                               ; preds = %1
  %29 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %30 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_update_bits(i32 %31, i32 54295, i32 2, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %258

36:                                               ; preds = %28
  %37 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %38 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regmap_update_bits(i32 %39, i32 54295, i32 16, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %258

44:                                               ; preds = %36
  %45 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %46 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %49 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @regmap_bulk_write(i32 %47, i32 39922, i32* %50, i32 4)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %258

55:                                               ; preds = %44
  %56 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %57 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %63 [
    i32 28800000, label %59
    i32 20480000, label %60
    i32 28000000, label %61
    i32 25000000, label %62
  ]

59:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %66

60:                                               ; preds = %55
  store i32 1, i32* %9, align 4
  br label %66

61:                                               ; preds = %55
  store i32 2, i32* %9, align 4
  br label %66

62:                                               ; preds = %55
  store i32 3, i32* %9, align 4
  br label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %258

66:                                               ; preds = %62, %61, %60, %59
  %67 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %68 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @regmap_update_bits(i32 %69, i32 39890, i32 15, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %258

75:                                               ; preds = %66
  %76 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %77 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %78, 524288
  %80 = call i32 @div_u64(i32 %79, i32 1000000)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = lshr i32 %81, 0
  %83 = and i32 %82, 255
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = lshr i32 %85, 8
  %87 = and i32 %86, 255
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %91, i32* %92, align 4
  %93 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %94 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %97 = call i32 @regmap_bulk_write(i32 %95, i32 53632, i32* %96, i32 3)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %75
  br label %258

101:                                              ; preds = %75
  %102 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @demod_init_tab, align 8
  %106 = call i32 @ARRAY_SIZE(%struct.af9013_reg_mask_val* %105)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @demod_init_tab, align 8
  store %struct.af9013_reg_mask_val* %107, %struct.af9013_reg_mask_val** %11, align 8
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %139, %101
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %108
  %113 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %114 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** %11, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %116, i64 %118
  %120 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** %11, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %122, i64 %124
  %126 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** %11, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %128, i64 %130
  %132 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @regmap_update_bits(i32 %115, i32 %121, i32 %127, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %112
  br label %258

138:                                              ; preds = %112
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %108

142:                                              ; preds = %108
  %143 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %144 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %143, i32 0, i32 0
  %145 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %146 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %147 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  switch i32 %148, label %182 [
    i32 136, label %149
    i32 135, label %153
    i32 134, label %153
    i32 133, label %153
    i32 140, label %157
    i32 138, label %161
    i32 139, label %165
    i32 132, label %169
    i32 131, label %169
    i32 137, label %173
    i32 129, label %177
    i32 130, label %177
    i32 128, label %181
  ]

149:                                              ; preds = %142
  %150 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_mxl5003d, align 8
  %151 = call i32 @ARRAY_SIZE(%struct.af9013_reg_mask_val* %150)
  store i32 %151, i32* %8, align 4
  %152 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_mxl5003d, align 8
  store %struct.af9013_reg_mask_val* %152, %struct.af9013_reg_mask_val** %11, align 8
  br label %186

153:                                              ; preds = %142, %142, %142
  %154 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_mxl5005, align 8
  %155 = call i32 @ARRAY_SIZE(%struct.af9013_reg_mask_val* %154)
  store i32 %155, i32* %8, align 4
  %156 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_mxl5005, align 8
  store %struct.af9013_reg_mask_val* %156, %struct.af9013_reg_mask_val** %11, align 8
  br label %186

157:                                              ; preds = %142
  %158 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_env77h11d5, align 8
  %159 = call i32 @ARRAY_SIZE(%struct.af9013_reg_mask_val* %158)
  store i32 %159, i32* %8, align 4
  %160 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_env77h11d5, align 8
  store %struct.af9013_reg_mask_val* %160, %struct.af9013_reg_mask_val** %11, align 8
  br label %186

161:                                              ; preds = %142
  %162 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_mt2060, align 8
  %163 = call i32 @ARRAY_SIZE(%struct.af9013_reg_mask_val* %162)
  store i32 %163, i32* %8, align 4
  %164 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_mt2060, align 8
  store %struct.af9013_reg_mask_val* %164, %struct.af9013_reg_mask_val** %11, align 8
  br label %186

165:                                              ; preds = %142
  %166 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_mc44s803, align 8
  %167 = call i32 @ARRAY_SIZE(%struct.af9013_reg_mask_val* %166)
  store i32 %167, i32* %8, align 4
  %168 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_mc44s803, align 8
  store %struct.af9013_reg_mask_val* %168, %struct.af9013_reg_mask_val** %11, align 8
  br label %186

169:                                              ; preds = %142, %142
  %170 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_qt1010, align 8
  %171 = call i32 @ARRAY_SIZE(%struct.af9013_reg_mask_val* %170)
  store i32 %171, i32* %8, align 4
  %172 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_qt1010, align 8
  store %struct.af9013_reg_mask_val* %172, %struct.af9013_reg_mask_val** %11, align 8
  br label %186

173:                                              ; preds = %142
  %174 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_mt2060_2, align 8
  %175 = call i32 @ARRAY_SIZE(%struct.af9013_reg_mask_val* %174)
  store i32 %175, i32* %8, align 4
  %176 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_mt2060_2, align 8
  store %struct.af9013_reg_mask_val* %176, %struct.af9013_reg_mask_val** %11, align 8
  br label %186

177:                                              ; preds = %142, %142
  %178 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_tda18271, align 8
  %179 = call i32 @ARRAY_SIZE(%struct.af9013_reg_mask_val* %178)
  store i32 %179, i32* %8, align 4
  %180 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_tda18271, align 8
  store %struct.af9013_reg_mask_val* %180, %struct.af9013_reg_mask_val** %11, align 8
  br label %186

181:                                              ; preds = %142
  br label %182

182:                                              ; preds = %142, %181
  %183 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_unknown, align 8
  %184 = call i32 @ARRAY_SIZE(%struct.af9013_reg_mask_val* %183)
  store i32 %184, i32* %8, align 4
  %185 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** @tuner_init_tab_unknown, align 8
  store %struct.af9013_reg_mask_val* %185, %struct.af9013_reg_mask_val** %11, align 8
  br label %186

186:                                              ; preds = %182, %177, %173, %169, %165, %161, %157, %153, %149
  store i32 0, i32* %7, align 4
  br label %187

187:                                              ; preds = %218, %186
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %221

191:                                              ; preds = %187
  %192 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %193 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** %11, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %195, i64 %197
  %199 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** %11, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %201, i64 %203
  %205 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.af9013_reg_mask_val*, %struct.af9013_reg_mask_val** %11, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %207, i64 %209
  %211 = getelementptr inbounds %struct.af9013_reg_mask_val, %struct.af9013_reg_mask_val* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @regmap_update_bits(i32 %194, i32 %200, i32 %206, i32 %212)
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %191
  br label %258

217:                                              ; preds = %191
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %7, align 4
  br label %187

221:                                              ; preds = %187
  %222 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %223 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 7
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %228 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = shl i32 %229, 1
  %231 = or i32 8, %230
  store i32 %231, i32* %9, align 4
  br label %238

232:                                              ; preds = %221
  %233 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %234 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 1
  %237 = or i32 0, %236
  store i32 %237, i32* %9, align 4
  br label %238

238:                                              ; preds = %232, %226
  %239 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %240 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %9, align 4
  %243 = call i32 @regmap_update_bits(i32 %241, i32 54528, i32 14, i32 %242)
  store i32 %243, i32* %6, align 4
  %244 = load i32, i32* %6, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  br label %258

247:                                              ; preds = %238
  %248 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %249 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @regmap_update_bits(i32 %250, i32 55088, i32 1, i32 1)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  br label %258

255:                                              ; preds = %247
  %256 = load %struct.af9013_state*, %struct.af9013_state** %4, align 8
  %257 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %256, i32 0, i32 5
  store i32 1, i32* %257, align 8
  store i32 0, i32* %2, align 4
  br label %264

258:                                              ; preds = %254, %246, %216, %137, %100, %74, %63, %54, %43, %35, %27
  %259 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %260 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %259, i32 0, i32 0
  %261 = load i32, i32* %6, align 4
  %262 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %260, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* %6, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %258, %255
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.af9013_reg_mask_val*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
