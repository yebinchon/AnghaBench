; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_reset_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_reset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etmv4_drvdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.etmv4_config }
%struct.etmv4_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, i32* }

@EINVAL = common dso_local global i64 0, align 8
@ETM_MODE_LOAD = common dso_local global i32 0, align 4
@ETM_MODE_STORE = common dso_local global i32 0, align 4
@ETM_MODE_DATA_TRACE_ADDR = common dso_local global i32 0, align 4
@ETM_MODE_DATA_TRACE_VAL = common dso_local global i32 0, align 4
@ETM_MODE_VIEWINST_STARTSTOP = common dso_local global i32 0, align 4
@ETM_ADDR_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @reset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reset_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.etmv4_drvdata*, align 8
  %13 = alloca %struct.etmv4_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %16)
  store %struct.etmv4_drvdata* %17, %struct.etmv4_drvdata** %12, align 8
  %18 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %19 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %18, i32 0, i32 11
  store %struct.etmv4_config* %19, %struct.etmv4_config** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtoul(i8* %20, i32 16, i64* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %295

26:                                               ; preds = %4
  %27 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %28 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %27, i32 0, i32 8
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %34 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* @ETM_MODE_LOAD, align 4
  %37 = load i32, i32* @ETM_MODE_STORE, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %41 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = call i32 @BIT(i32 1)
  %45 = call i32 @BIT(i32 2)
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %49 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @ETM_MODE_DATA_TRACE_ADDR, align 4
  %53 = load i32, i32* @ETM_MODE_DATA_TRACE_VAL, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %57 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = call i32 @BIT(i32 16)
  %61 = call i32 @BIT(i32 17)
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %65 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %69 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  %70 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %71 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %70, i32 0, i32 3
  store i32 0, i32* %71, align 4
  %72 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %73 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %72, i32 0, i32 4
  store i32 0, i32* %73, align 8
  %74 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %75 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %74, i32 0, i32 5
  store i32 0, i32* %75, align 4
  %76 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %77 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %35
  %81 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %82 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %81, i32 0, i32 6
  store i32 8, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %35
  %84 = call i32 @BIT(i32 0)
  %85 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %86 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %90 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %104

93:                                               ; preds = %83
  %94 = load i32, i32* @ETM_MODE_VIEWINST_STARTSTOP, align 4
  %95 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %96 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = call i32 @BIT(i32 9)
  %100 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %101 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %93, %83
  %105 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %106 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %105, i32 0, i32 8
  store i32 0, i32* %106, align 8
  %107 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %108 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %107, i32 0, i32 9
  store i32 0, i32* %108, align 4
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %123, %104
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %112 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = icmp slt i32 %110, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %118 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %117, i32 0, i32 10
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %109

126:                                              ; preds = %109
  %127 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %128 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %127, i32 0, i32 11
  store i32 0, i32* %128, align 8
  %129 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %130 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %129, i32 0, i32 12
  store i32 0, i32* %130, align 4
  %131 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %132 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %131, i32 0, i32 13
  store i32 0, i32* %132, align 8
  %133 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %134 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %133, i32 0, i32 14
  store i32 0, i32* %134, align 4
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %160, %126
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %138 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %163

141:                                              ; preds = %135
  %142 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %143 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %142, i32 0, i32 15
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 0, i32* %147, align 4
  %148 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %149 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %148, i32 0, i32 16
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 0, i32* %153, align 4
  %154 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %155 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %154, i32 0, i32 17
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %141
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %135

163:                                              ; preds = %135
  %164 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %165 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %164, i32 0, i32 18
  store i32 0, i32* %165, align 8
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %179, %163
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %169 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %174 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %173, i32 0, i32 19
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 0, i32* %178, align 4
  br label %179

179:                                              ; preds = %172
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  br label %166

182:                                              ; preds = %166
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %202, %182
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %186 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %183
  %190 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %191 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %190, i32 0, i32 20
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 0, i32* %195, align 4
  %196 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %197 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %196, i32 0, i32 21
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 0, i32* %201, align 4
  br label %202

202:                                              ; preds = %189
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  br label %183

205:                                              ; preds = %183
  %206 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %207 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %206, i32 0, i32 22
  store i32 0, i32* %207, align 8
  store i32 0, i32* %10, align 4
  br label %208

208:                                              ; preds = %235, %205
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %211 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %212, 2
  %214 = icmp slt i32 %209, %213
  br i1 %214, label %215, label %238

215:                                              ; preds = %208
  %216 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %217 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %216, i32 0, i32 23
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 0, i32* %221, align 4
  %222 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %223 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %222, i32 0, i32 24
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 0, i32* %227, align 4
  %228 = load i32, i32* @ETM_ADDR_TYPE_NONE, align 4
  %229 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %230 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %229, i32 0, i32 33
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %228, i32* %234, align 4
  br label %235

235:                                              ; preds = %215
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %10, align 4
  br label %208

238:                                              ; preds = %208
  %239 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %240 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %239, i32 0, i32 25
  store i32 0, i32* %240, align 8
  store i32 0, i32* %10, align 4
  br label %241

241:                                              ; preds = %254, %238
  %242 = load i32, i32* %10, align 4
  %243 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %244 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %241
  %248 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %249 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %248, i32 0, i32 26
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 0, i32* %253, align 4
  br label %254

254:                                              ; preds = %247
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %10, align 4
  br label %241

257:                                              ; preds = %241
  %258 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %259 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %258, i32 0, i32 27
  store i32 0, i32* %259, align 8
  %260 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %261 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %260, i32 0, i32 28
  store i32 0, i32* %261, align 4
  %262 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %263 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %262, i32 0, i32 29
  store i32 0, i32* %263, align 8
  store i32 0, i32* %10, align 4
  br label %264

264:                                              ; preds = %277, %257
  %265 = load i32, i32* %10, align 4
  %266 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %267 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %266, i32 0, i32 7
  %268 = load i32, i32* %267, align 4
  %269 = icmp slt i32 %265, %268
  br i1 %269, label %270, label %280

270:                                              ; preds = %264
  %271 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %272 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %271, i32 0, i32 30
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  store i32 0, i32* %276, align 4
  br label %277

277:                                              ; preds = %270
  %278 = load i32, i32* %10, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %10, align 4
  br label %264

280:                                              ; preds = %264
  %281 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %282 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %281, i32 0, i32 31
  store i32 0, i32* %282, align 8
  %283 = load %struct.etmv4_config*, %struct.etmv4_config** %13, align 8
  %284 = getelementptr inbounds %struct.etmv4_config, %struct.etmv4_config* %283, i32 0, i32 32
  store i32 0, i32* %284, align 4
  %285 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %286 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %285, i32 0, i32 9
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %287, 1
  %289 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %290 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %289, i32 0, i32 10
  store i64 %288, i64* %290, align 8
  %291 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %12, align 8
  %292 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %291, i32 0, i32 8
  %293 = call i32 @spin_unlock(i32* %292)
  %294 = load i64, i64* %9, align 8
  store i64 %294, i64* %5, align 8
  br label %295

295:                                              ; preds = %280, %23
  %296 = load i64, i64* %5, align 8
  ret i64 %296
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
