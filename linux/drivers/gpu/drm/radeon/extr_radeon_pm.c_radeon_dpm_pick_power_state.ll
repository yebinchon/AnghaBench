; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_dpm_pick_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_dpm_pick_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_ps = type { i32, i32, i32 }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.radeon_ps*, %struct.radeon_ps*, %struct.radeon_ps* }

@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_BATTERY = common dso_local global i32 0, align 4
@ATOM_PPLIB_SINGLE_DISPLAY_ONLY = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_BALANCED = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_SDSTATE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_HDSTATE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_HD2STATE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_MVC = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_THERMAL = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_ACPI = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_ULV = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radeon_ps* (%struct.radeon_device*, i32)* @radeon_dpm_pick_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radeon_ps* @radeon_dpm_pick_power_state(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_ps*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_ps*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = call i32 @radeon_dpm_single_display(%struct.radeon_device* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 138, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 140
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 128, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %231, %230, %229, %228, %214, %19
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %209, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %212

29:                                               ; preds = %21
  %30 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load %struct.radeon_ps*, %struct.radeon_ps** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %34, i64 %36
  store %struct.radeon_ps* %37, %struct.radeon_ps** %7, align 8
  %38 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %39 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %207 [
    i32 139, label %44
    i32 140, label %65
    i32 128, label %86
    i32 133, label %107
    i32 129, label %121
    i32 132, label %131
    i32 131, label %141
    i32 130, label %151
    i32 136, label %161
    i32 135, label %167
    i32 137, label %177
    i32 134, label %187
    i32 138, label %197
  ]

44:                                               ; preds = %29
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_BATTERY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %50 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ATOM_PPLIB_SINGLE_DISPLAY_ONLY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %59, %struct.radeon_ps** %3, align 8
  br label %234

60:                                               ; preds = %55
  br label %63

61:                                               ; preds = %48
  %62 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %62, %struct.radeon_ps** %3, align 8
  br label %234

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %44
  br label %208

65:                                               ; preds = %29
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_BALANCED, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %71 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATOM_PPLIB_SINGLE_DISPLAY_ONLY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %80, %struct.radeon_ps** %3, align 8
  br label %234

81:                                               ; preds = %76
  br label %84

82:                                               ; preds = %69
  %83 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %83, %struct.radeon_ps** %3, align 8
  br label %234

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %65
  br label %208

86:                                               ; preds = %29
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %92 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ATOM_PPLIB_SINGLE_DISPLAY_ONLY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %101, %struct.radeon_ps** %3, align 8
  br label %234

102:                                              ; preds = %97
  br label %105

103:                                              ; preds = %90
  %104 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %104, %struct.radeon_ps** %3, align 8
  br label %234

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %105, %86
  br label %208

107:                                              ; preds = %29
  %108 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load %struct.radeon_ps*, %struct.radeon_ps** %111, align 8
  %113 = icmp ne %struct.radeon_ps* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load %struct.radeon_ps*, %struct.radeon_ps** %118, align 8
  store %struct.radeon_ps* %119, %struct.radeon_ps** %3, align 8
  br label %234

120:                                              ; preds = %107
  br label %208

121:                                              ; preds = %29
  %122 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %123 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_SDSTATE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %129, %struct.radeon_ps** %3, align 8
  br label %234

130:                                              ; preds = %121
  br label %208

131:                                              ; preds = %29
  %132 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %133 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HDSTATE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %139, %struct.radeon_ps** %3, align 8
  br label %234

140:                                              ; preds = %131
  br label %208

141:                                              ; preds = %29
  %142 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %143 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HD2STATE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %149, %struct.radeon_ps** %3, align 8
  br label %234

150:                                              ; preds = %141
  br label %208

151:                                              ; preds = %29
  %152 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %153 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_MVC, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %159, %struct.radeon_ps** %3, align 8
  br label %234

160:                                              ; preds = %151
  br label %208

161:                                              ; preds = %29
  %162 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  %166 = load %struct.radeon_ps*, %struct.radeon_ps** %165, align 8
  store %struct.radeon_ps* %166, %struct.radeon_ps** %3, align 8
  br label %234

167:                                              ; preds = %29
  %168 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %169 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_THERMAL, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %175, %struct.radeon_ps** %3, align 8
  br label %234

176:                                              ; preds = %167
  br label %208

177:                                              ; preds = %29
  %178 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %179 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_ACPI, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %185, %struct.radeon_ps** %3, align 8
  br label %234

186:                                              ; preds = %177
  br label %208

187:                                              ; preds = %29
  %188 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %189 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_ULV, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %195, %struct.radeon_ps** %3, align 8
  br label %234

196:                                              ; preds = %187
  br label %208

197:                                              ; preds = %29
  %198 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %199 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  store %struct.radeon_ps* %205, %struct.radeon_ps** %3, align 8
  br label %234

206:                                              ; preds = %197
  br label %208

207:                                              ; preds = %29
  br label %208

208:                                              ; preds = %207, %206, %196, %186, %176, %160, %150, %140, %130, %120, %106, %85, %64
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %21

212:                                              ; preds = %21
  %213 = load i32, i32* %5, align 4
  switch i32 %213, label %232 [
    i32 129, label %214
    i32 132, label %215
    i32 131, label %215
    i32 130, label %215
    i32 135, label %229
    i32 137, label %230
    i32 139, label %231
    i32 140, label %231
    i32 138, label %231
  ]

214:                                              ; preds = %212
  store i32 132, i32* %5, align 4
  br label %20

215:                                              ; preds = %212, %212, %212
  %216 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %217 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = load %struct.radeon_ps*, %struct.radeon_ps** %219, align 8
  %221 = icmp ne %struct.radeon_ps* %220, null
  br i1 %221, label %222, label %228

222:                                              ; preds = %215
  %223 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %224 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  %227 = load %struct.radeon_ps*, %struct.radeon_ps** %226, align 8
  store %struct.radeon_ps* %227, %struct.radeon_ps** %3, align 8
  br label %234

228:                                              ; preds = %215
  store i32 128, i32* %5, align 4
  br label %20

229:                                              ; preds = %212
  store i32 137, i32* %5, align 4
  br label %20

230:                                              ; preds = %212
  store i32 139, i32* %5, align 4
  br label %20

231:                                              ; preds = %212, %212, %212
  store i32 128, i32* %5, align 4
  br label %20

232:                                              ; preds = %212
  br label %233

233:                                              ; preds = %232
  store %struct.radeon_ps* null, %struct.radeon_ps** %3, align 8
  br label %234

234:                                              ; preds = %233, %222, %204, %194, %184, %174, %161, %158, %148, %138, %128, %114, %103, %100, %82, %79, %61, %58
  %235 = load %struct.radeon_ps*, %struct.radeon_ps** %3, align 8
  ret %struct.radeon_ps* %235
}

declare dso_local i32 @radeon_dpm_single_display(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
