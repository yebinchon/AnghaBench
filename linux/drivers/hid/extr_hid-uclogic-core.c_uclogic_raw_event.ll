; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-core.c_uclogic_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-core.c_uclogic_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i64, i32 }
%struct.uclogic_drvdata = type { i32, i32, %struct.uclogic_params }
%struct.uclogic_params = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }

@HID_INPUT_REPORT = common dso_local global i64 0, align 8
@UCLOGIC_PARAMS_PEN_INRANGE_INVERTED = common dso_local global i64 0, align 8
@UCLOGIC_PARAMS_PEN_INRANGE_NONE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @uclogic_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclogic_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uclogic_drvdata*, align 8
  %11 = alloca %struct.uclogic_params*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %20 = call %struct.uclogic_drvdata* @hid_get_drvdata(%struct.hid_device* %19)
  store %struct.uclogic_drvdata* %20, %struct.uclogic_drvdata** %10, align 8
  %21 = load %struct.uclogic_drvdata*, %struct.uclogic_drvdata** %10, align 8
  %22 = getelementptr inbounds %struct.uclogic_drvdata, %struct.uclogic_drvdata* %21, i32 0, i32 2
  store %struct.uclogic_params* %22, %struct.uclogic_params** %11, align 8
  %23 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %24 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %140, label %27

27:                                               ; preds = %4
  %28 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %29 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HID_INPUT_REPORT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %140

33:                                               ; preds = %27
  %34 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %35 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %38 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %140

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %43, 2
  br i1 %44, label %45, label %140

45:                                               ; preds = %42
  %46 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %47 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %56 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %62 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %262

67:                                               ; preds = %51, %45
  %68 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %69 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @UCLOGIC_PARAMS_PEN_INRANGE_INVERTED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %77, 64
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %67
  %80 = load i32, i32* %9, align 4
  %81 = icmp sge i32 %80, 10
  br i1 %81, label %82, label %121

82:                                               ; preds = %79
  %83 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %84 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %82
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 7
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %13, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 6
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 5
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 9
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 7
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 8
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 9
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %88, %82, %79
  %122 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %123 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @UCLOGIC_PARAMS_PEN_INRANGE_NONE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %121
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, 64
  store i32 %132, i32* %130, align 4
  %133 = load %struct.uclogic_drvdata*, %struct.uclogic_drvdata** %10, align 8
  %134 = getelementptr inbounds %struct.uclogic_drvdata, %struct.uclogic_drvdata* %133, i32 0, i32 1
  %135 = load i64, i64* @jiffies, align 8
  %136 = call i64 @msecs_to_jiffies(i32 100)
  %137 = add nsw i64 %135, %136
  %138 = call i32 @mod_timer(i32* %134, i64 %137)
  br label %139

139:                                              ; preds = %128, %121
  br label %140

140:                                              ; preds = %139, %42, %33, %27, %4
  %141 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %142 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @HID_INPUT_REPORT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %261

146:                                              ; preds = %140
  %147 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %148 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %151 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %149, %153
  br i1 %154, label %155, label %261

155:                                              ; preds = %146
  %156 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %157 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %155
  %162 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %163 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %161
  %169 = load i32*, i32** %8, align 8
  %170 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %171 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %169, i64 %174
  store i32 15, i32* %175, align 4
  br label %176

176:                                              ; preds = %168, %161, %155
  %177 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %178 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %260

182:                                              ; preds = %176
  %183 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %184 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = sdiv i32 %186, 8
  %188 = load i32, i32* %9, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %260

190:                                              ; preds = %182
  %191 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %192 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = sdiv i32 %194, 8
  store i32 %195, i32* %14, align 4
  %196 = load %struct.uclogic_params*, %struct.uclogic_params** %11, align 8
  %197 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = srem i32 %199, 8
  store i32 %200, i32* %15, align 4
  %201 = load %struct.uclogic_drvdata*, %struct.uclogic_drvdata** %10, align 8
  %202 = getelementptr inbounds %struct.uclogic_drvdata, %struct.uclogic_drvdata* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %17, align 4
  %204 = load i32*, i32** %8, align 8
  %205 = load i32, i32* %14, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %15, align 4
  %210 = ashr i32 %208, %209
  %211 = and i32 %210, 3
  store i32 %211, i32* %18, align 4
  %212 = load i32, i32* %17, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %217

214:                                              ; preds = %190
  %215 = load i32, i32* %18, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %214, %190
  %218 = load i32, i32* %17, align 4
  %219 = icmp eq i32 %218, 2
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load i32, i32* %18, align 4
  %222 = icmp eq i32 %221, 3
  br i1 %222, label %223, label %224

223:                                              ; preds = %220, %214
  store i32 1, i32* %16, align 4
  br label %239

224:                                              ; preds = %220, %217
  %225 = load i32, i32* %17, align 4
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, i32* %18, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* %17, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i32, i32* %18, align 4
  %235 = icmp eq i32 %234, 3
  br i1 %235, label %236, label %237

236:                                              ; preds = %233, %227
  store i32 3, i32* %16, align 4
  br label %238

237:                                              ; preds = %233, %230
  store i32 0, i32* %16, align 4
  br label %238

238:                                              ; preds = %237, %236
  br label %239

239:                                              ; preds = %238, %223
  %240 = load i32*, i32** %8, align 8
  %241 = load i32, i32* %14, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %15, align 4
  %246 = shl i32 3, %245
  %247 = xor i32 %246, -1
  %248 = and i32 %244, %247
  %249 = load i32, i32* %16, align 4
  %250 = load i32, i32* %15, align 4
  %251 = shl i32 %249, %250
  %252 = or i32 %248, %251
  %253 = load i32*, i32** %8, align 8
  %254 = load i32, i32* %14, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 %252, i32* %256, align 4
  %257 = load i32, i32* %18, align 4
  %258 = load %struct.uclogic_drvdata*, %struct.uclogic_drvdata** %10, align 8
  %259 = getelementptr inbounds %struct.uclogic_drvdata, %struct.uclogic_drvdata* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %239, %182, %176
  br label %261

261:                                              ; preds = %260, %146, %140
  store i32 0, i32* %5, align 4
  br label %262

262:                                              ; preds = %261, %60
  %263 = load i32, i32* %5, align 4
  ret i32 %263
}

declare dso_local %struct.uclogic_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
