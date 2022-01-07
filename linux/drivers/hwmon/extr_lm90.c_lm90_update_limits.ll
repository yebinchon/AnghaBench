; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_update_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_update_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm90_data = type { i32*, i32, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@LM90_REG_R_LOCAL_CRIT = common dso_local global i32 0, align 4
@LOCAL_CRIT = common dso_local global i64 0, align 8
@LM90_REG_R_REMOTE_CRIT = common dso_local global i32 0, align 4
@REMOTE_CRIT = common dso_local global i64 0, align 8
@LM90_REG_R_TCRIT_HYST = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_LOWH = common dso_local global i32 0, align 4
@REMOTE_LOW = common dso_local global i64 0, align 8
@LM90_HAVE_REM_LIMIT_EXT = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_LOWL = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_HIGHH = common dso_local global i32 0, align 4
@REMOTE_HIGH = common dso_local global i64 0, align 8
@LM90_REG_R_REMOTE_HIGHL = common dso_local global i32 0, align 4
@LM90_HAVE_OFFSET = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_OFFSH = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_OFFSL = common dso_local global i32 0, align 4
@REMOTE_OFFSET = common dso_local global i64 0, align 8
@LM90_HAVE_EMERGENCY = common dso_local global i32 0, align 4
@MAX6659_REG_R_LOCAL_EMERG = common dso_local global i32 0, align 4
@LOCAL_EMERG = common dso_local global i64 0, align 8
@MAX6659_REG_R_REMOTE_EMERG = common dso_local global i32 0, align 4
@REMOTE_EMERG = common dso_local global i64 0, align 8
@max6696 = common dso_local global i64 0, align 8
@REMOTE2_CRIT = common dso_local global i64 0, align 8
@REMOTE2_EMERG = common dso_local global i64 0, align 8
@REMOTE2_LOW = common dso_local global i64 0, align 8
@REMOTE2_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @lm90_update_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_update_limits(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.lm90_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.lm90_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.lm90_data* %8, %struct.lm90_data** %4, align 8
  %9 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %10 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %9, i32 0, i32 5
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = load i32, i32* @LM90_REG_R_LOCAL_CRIT, align 4
  %14 = call i32 @lm90_read_reg(%struct.i2c_client* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %262

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %22 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @LOCAL_CRIT, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %20, i32* %25, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* @LM90_REG_R_REMOTE_CRIT, align 4
  %28 = call i32 @lm90_read_reg(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %262

33:                                               ; preds = %19
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %36 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @REMOTE_CRIT, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = load i32, i32* @LM90_REG_R_TCRIT_HYST, align 4
  %42 = call i32 @lm90_read_reg(%struct.i2c_client* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %262

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %50 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %52 = load i32, i32* @LM90_REG_R_REMOTE_LOWH, align 4
  %53 = call i32 @lm90_read_reg(%struct.i2c_client* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %262

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = shl i32 %59, 8
  %61 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %62 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @REMOTE_LOW, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %67 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @LM90_HAVE_REM_LIMIT_EXT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %58
  %73 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %74 = load i32, i32* @LM90_REG_R_REMOTE_LOWL, align 4
  %75 = call i32 @lm90_read_reg(%struct.i2c_client* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %262

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %83 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @REMOTE_LOW, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %81
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %80, %58
  %90 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %91 = load i32, i32* @LM90_REG_R_REMOTE_HIGHH, align 4
  %92 = call i32 @lm90_read_reg(%struct.i2c_client* %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %262

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = shl i32 %98, 8
  %100 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %101 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @REMOTE_HIGH, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %106 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @LM90_HAVE_REM_LIMIT_EXT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %97
  %112 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %113 = load i32, i32* @LM90_REG_R_REMOTE_HIGHL, align 4
  %114 = call i32 @lm90_read_reg(%struct.i2c_client* %112, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %2, align 4
  br label %262

119:                                              ; preds = %111
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %122 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @REMOTE_HIGH, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %120
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %119, %97
  %129 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %130 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @LM90_HAVE_OFFSET, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %128
  %136 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %137 = load i32, i32* @LM90_REG_R_REMOTE_OFFSH, align 4
  %138 = load i32, i32* @LM90_REG_R_REMOTE_OFFSL, align 4
  %139 = call i32 @lm90_read16(%struct.i2c_client* %136, i32 %137, i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %262

144:                                              ; preds = %135
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %147 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @REMOTE_OFFSET, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32 %145, i32* %150, align 4
  br label %151

151:                                              ; preds = %144, %128
  %152 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %153 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @LM90_HAVE_EMERGENCY, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %187

158:                                              ; preds = %151
  %159 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %160 = load i32, i32* @MAX6659_REG_R_LOCAL_EMERG, align 4
  %161 = call i32 @lm90_read_reg(%struct.i2c_client* %159, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = load i32, i32* %6, align 4
  store i32 %165, i32* %2, align 4
  br label %262

166:                                              ; preds = %158
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %169 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @LOCAL_EMERG, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %174 = load i32, i32* @MAX6659_REG_R_REMOTE_EMERG, align 4
  %175 = call i32 @lm90_read_reg(%struct.i2c_client* %173, i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %166
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %2, align 4
  br label %262

180:                                              ; preds = %166
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %183 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @REMOTE_EMERG, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32 %181, i32* %186, align 4
  br label %187

187:                                              ; preds = %180, %151
  %188 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %189 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @max6696, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %261

193:                                              ; preds = %187
  %194 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %195 = call i32 @lm90_select_remote_channel(%struct.lm90_data* %194, i32 1)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %2, align 4
  br label %262

200:                                              ; preds = %193
  %201 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %202 = load i32, i32* @LM90_REG_R_REMOTE_CRIT, align 4
  %203 = call i32 @lm90_read_reg(%struct.i2c_client* %201, i32 %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %200
  %207 = load i32, i32* %6, align 4
  store i32 %207, i32* %2, align 4
  br label %262

208:                                              ; preds = %200
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %211 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* @REMOTE2_CRIT, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  store i32 %209, i32* %214, align 4
  %215 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %216 = load i32, i32* @MAX6659_REG_R_REMOTE_EMERG, align 4
  %217 = call i32 @lm90_read_reg(%struct.i2c_client* %215, i32 %216)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %208
  %221 = load i32, i32* %6, align 4
  store i32 %221, i32* %2, align 4
  br label %262

222:                                              ; preds = %208
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %225 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* @REMOTE2_EMERG, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32 %223, i32* %228, align 4
  %229 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %230 = load i32, i32* @LM90_REG_R_REMOTE_LOWH, align 4
  %231 = call i32 @lm90_read_reg(%struct.i2c_client* %229, i32 %230)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %222
  %235 = load i32, i32* %6, align 4
  store i32 %235, i32* %2, align 4
  br label %262

236:                                              ; preds = %222
  %237 = load i32, i32* %6, align 4
  %238 = shl i32 %237, 8
  %239 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %240 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* @REMOTE2_LOW, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32 %238, i32* %243, align 4
  %244 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %245 = load i32, i32* @LM90_REG_R_REMOTE_HIGHH, align 4
  %246 = call i32 @lm90_read_reg(%struct.i2c_client* %244, i32 %245)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %236
  %250 = load i32, i32* %6, align 4
  store i32 %250, i32* %2, align 4
  br label %262

251:                                              ; preds = %236
  %252 = load i32, i32* %6, align 4
  %253 = shl i32 %252, 8
  %254 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %255 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* @REMOTE2_HIGH, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32 %253, i32* %258, align 4
  %259 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %260 = call i32 @lm90_select_remote_channel(%struct.lm90_data* %259, i32 0)
  br label %261

261:                                              ; preds = %251, %187
  store i32 0, i32* %2, align 4
  br label %262

262:                                              ; preds = %261, %249, %234, %220, %206, %198, %178, %164, %142, %117, %95, %78, %56, %45, %31, %17
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.lm90_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @lm90_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm90_read16(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @lm90_select_remote_channel(%struct.lm90_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
