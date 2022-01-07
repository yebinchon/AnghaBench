; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_connector_atomic_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_connector_atomic_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }
%struct.drm_property = type { i32 }
%struct.intel_sdvo_connector = type { i32, i64*, i32, i32, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.intel_sdvo_connector_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_property*, i32*)* @intel_sdvo_connector_atomic_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_connector_atomic_get_property(%struct.drm_connector* %0, %struct.drm_connector_state* %1, %struct.drm_property* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.intel_sdvo_connector*, align 8
  %11 = alloca %struct.intel_sdvo_connector_state*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %6, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %14 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector* %13)
  store %struct.intel_sdvo_connector* %14, %struct.intel_sdvo_connector** %10, align 8
  %15 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %16 = bitcast %struct.drm_connector_state* %15 to i8*
  %17 = call %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(i8* %16)
  store %struct.intel_sdvo_connector_state* %17, %struct.intel_sdvo_connector_state** %11, align 8
  %18 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %19 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %20 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %19, i32 0, i32 21
  %21 = load %struct.drm_property*, %struct.drm_property** %20, align 8
  %22 = icmp eq %struct.drm_property* %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %27 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %32 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %36 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %34, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %275

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %24

50:                                               ; preds = %24
  %51 = call i32 @WARN_ON(i32 1)
  %52 = load i32*, i32** %9, align 8
  store i32 0, i32* %52, align 4
  br label %274

53:                                               ; preds = %4
  %54 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %55 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %56 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %55, i32 0, i32 20
  %57 = load %struct.drm_property*, %struct.drm_property** %56, align 8
  %58 = icmp eq %struct.drm_property* %54, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %61 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %62 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %61, i32 0, i32 19
  %63 = load %struct.drm_property*, %struct.drm_property** %62, align 8
  %64 = icmp eq %struct.drm_property* %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59, %53
  %66 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %67 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %70 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %68, %72
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  br label %273

75:                                               ; preds = %59
  %76 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %77 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %78 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %77, i32 0, i32 18
  %79 = load %struct.drm_property*, %struct.drm_property** %78, align 8
  %80 = icmp eq %struct.drm_property* %76, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %83 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %84 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %83, i32 0, i32 17
  %85 = load %struct.drm_property*, %struct.drm_property** %84, align 8
  %86 = icmp eq %struct.drm_property* %82, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81, %75
  %88 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %89 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %92 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %90, %94
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  br label %272

97:                                               ; preds = %81
  %98 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %99 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %100 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %99, i32 0, i32 16
  %101 = load %struct.drm_property*, %struct.drm_property** %100, align 8
  %102 = icmp eq %struct.drm_property* %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %105 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  br label %271

109:                                              ; preds = %97
  %110 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %111 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %112 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %111, i32 0, i32 15
  %113 = load %struct.drm_property*, %struct.drm_property** %112, align 8
  %114 = icmp eq %struct.drm_property* %110, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %117 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  br label %270

121:                                              ; preds = %109
  %122 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %123 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %124 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %123, i32 0, i32 14
  %125 = load %struct.drm_property*, %struct.drm_property** %124, align 8
  %126 = icmp eq %struct.drm_property* %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %129 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %9, align 8
  store i32 %131, i32* %132, align 4
  br label %269

133:                                              ; preds = %121
  %134 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %135 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %136 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %135, i32 0, i32 13
  %137 = load %struct.drm_property*, %struct.drm_property** %136, align 8
  %138 = icmp eq %struct.drm_property* %134, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %141 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %9, align 8
  store i32 %143, i32* %144, align 4
  br label %268

145:                                              ; preds = %133
  %146 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %147 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %148 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %147, i32 0, i32 12
  %149 = load %struct.drm_property*, %struct.drm_property** %148, align 8
  %150 = icmp eq %struct.drm_property* %146, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %153 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32*, i32** %9, align 8
  store i32 %155, i32* %156, align 4
  br label %267

157:                                              ; preds = %145
  %158 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %159 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %160 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %159, i32 0, i32 11
  %161 = load %struct.drm_property*, %struct.drm_property** %160, align 8
  %162 = icmp eq %struct.drm_property* %158, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %165 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %9, align 8
  store i32 %167, i32* %168, align 4
  br label %266

169:                                              ; preds = %157
  %170 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %171 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %172 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %171, i32 0, i32 10
  %173 = load %struct.drm_property*, %struct.drm_property** %172, align 8
  %174 = icmp eq %struct.drm_property* %170, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %177 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %9, align 8
  store i32 %179, i32* %180, align 4
  br label %265

181:                                              ; preds = %169
  %182 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %183 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %184 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %183, i32 0, i32 9
  %185 = load %struct.drm_property*, %struct.drm_property** %184, align 8
  %186 = icmp eq %struct.drm_property* %182, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %189 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %9, align 8
  store i32 %191, i32* %192, align 4
  br label %264

193:                                              ; preds = %181
  %194 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %195 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %196 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %195, i32 0, i32 8
  %197 = load %struct.drm_property*, %struct.drm_property** %196, align 8
  %198 = icmp eq %struct.drm_property* %194, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %201 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %9, align 8
  store i32 %203, i32* %204, align 4
  br label %263

205:                                              ; preds = %193
  %206 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %207 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %208 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %207, i32 0, i32 7
  %209 = load %struct.drm_property*, %struct.drm_property** %208, align 8
  %210 = icmp eq %struct.drm_property* %206, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %213 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %9, align 8
  store i32 %215, i32* %216, align 4
  br label %262

217:                                              ; preds = %205
  %218 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %219 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %220 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %219, i32 0, i32 6
  %221 = load %struct.drm_property*, %struct.drm_property** %220, align 8
  %222 = icmp eq %struct.drm_property* %218, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %217
  %224 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %225 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %9, align 8
  store i32 %227, i32* %228, align 4
  br label %261

229:                                              ; preds = %217
  %230 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %231 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %232 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %231, i32 0, i32 5
  %233 = load %struct.drm_property*, %struct.drm_property** %232, align 8
  %234 = icmp eq %struct.drm_property* %230, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %237 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %9, align 8
  store i32 %239, i32* %240, align 4
  br label %260

241:                                              ; preds = %229
  %242 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %243 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %244 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %243, i32 0, i32 4
  %245 = load %struct.drm_property*, %struct.drm_property** %244, align 8
  %246 = icmp eq %struct.drm_property* %242, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %241
  %248 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %249 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 10
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %9, align 8
  store i32 %251, i32* %252, align 4
  br label %259

253:                                              ; preds = %241
  %254 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %255 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %256 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %257 = load i32*, i32** %9, align 8
  %258 = call i32 @intel_digital_connector_atomic_get_property(%struct.drm_connector* %254, %struct.drm_connector_state* %255, %struct.drm_property* %256, i32* %257)
  store i32 %258, i32* %5, align 4
  br label %275

259:                                              ; preds = %247
  br label %260

260:                                              ; preds = %259, %235
  br label %261

261:                                              ; preds = %260, %223
  br label %262

262:                                              ; preds = %261, %211
  br label %263

263:                                              ; preds = %262, %199
  br label %264

264:                                              ; preds = %263, %187
  br label %265

265:                                              ; preds = %264, %175
  br label %266

266:                                              ; preds = %265, %163
  br label %267

267:                                              ; preds = %266, %151
  br label %268

268:                                              ; preds = %267, %139
  br label %269

269:                                              ; preds = %268, %127
  br label %270

270:                                              ; preds = %269, %115
  br label %271

271:                                              ; preds = %270, %103
  br label %272

272:                                              ; preds = %271, %87
  br label %273

273:                                              ; preds = %272, %65
  br label %274

274:                                              ; preds = %273, %50
  store i32 0, i32* %5, align 4
  br label %275

275:                                              ; preds = %274, %253, %43
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_digital_connector_atomic_get_property(%struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_property*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
