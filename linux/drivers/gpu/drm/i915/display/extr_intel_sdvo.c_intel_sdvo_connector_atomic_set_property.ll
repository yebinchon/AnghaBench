; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_connector_atomic_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_connector_atomic_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }
%struct.drm_property = type { i32 }
%struct.intel_sdvo_connector = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, i64, %struct.drm_property*, %struct.drm_property*, i64, %struct.drm_property*, %struct.drm_property*, i32*, %struct.drm_property* }
%struct.intel_sdvo_connector_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.drm_crtc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_property*, i64)* @intel_sdvo_connector_atomic_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_connector_atomic_set_property(%struct.drm_connector* %0, %struct.drm_connector_state* %1, %struct.drm_property* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.intel_sdvo_connector*, align 8
  %11 = alloca %struct.intel_sdvo_connector_state*, align 8
  %12 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %6, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %14 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector* %13)
  store %struct.intel_sdvo_connector* %14, %struct.intel_sdvo_connector** %10, align 8
  %15 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %16 = call %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(%struct.drm_connector_state* %15)
  store %struct.intel_sdvo_connector_state* %16, %struct.intel_sdvo_connector_state** %11, align 8
  %17 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %18 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %19 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %18, i32 0, i32 20
  %20 = load %struct.drm_property*, %struct.drm_property** %19, align 8
  %21 = icmp eq %struct.drm_property* %17, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %4
  %23 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %24 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %23, i32 0, i32 19
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %30 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 8
  %32 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %33 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %22
  %37 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %38 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %41 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32 %39, i64 %42)
  store %struct.drm_crtc_state* %43, %struct.drm_crtc_state** %12, align 8
  %44 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %12, align 8
  %45 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %36, %22
  br label %253

47:                                               ; preds = %4
  %48 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %49 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %50 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %49, i32 0, i32 18
  %51 = load %struct.drm_property*, %struct.drm_property** %50, align 8
  %52 = icmp eq %struct.drm_property* %48, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %55 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %56 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %55, i32 0, i32 17
  %57 = load %struct.drm_property*, %struct.drm_property** %56, align 8
  %58 = icmp eq %struct.drm_property* %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53, %47
  %60 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %61 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %60, i32 0, i32 16
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = sub i64 %62, %63
  %65 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %66 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 10
  store i64 %64, i64* %67, align 8
  br label %252

68:                                               ; preds = %53
  %69 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %70 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %71 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %70, i32 0, i32 15
  %72 = load %struct.drm_property*, %struct.drm_property** %71, align 8
  %73 = icmp eq %struct.drm_property* %69, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %76 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %77 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %76, i32 0, i32 14
  %78 = load %struct.drm_property*, %struct.drm_property** %77, align 8
  %79 = icmp eq %struct.drm_property* %75, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74, %68
  %81 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %82 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %81, i32 0, i32 13
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = sub i64 %83, %84
  %86 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %87 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 9
  store i64 %85, i64* %88, align 8
  br label %251

89:                                               ; preds = %74
  %90 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %91 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %92 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %91, i32 0, i32 12
  %93 = load %struct.drm_property*, %struct.drm_property** %92, align 8
  %94 = icmp eq %struct.drm_property* %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %98 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  br label %250

100:                                              ; preds = %89
  %101 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %102 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %103 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %102, i32 0, i32 11
  %104 = load %struct.drm_property*, %struct.drm_property** %103, align 8
  %105 = icmp eq %struct.drm_property* %101, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %109 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i64 %107, i64* %110, align 8
  br label %249

111:                                              ; preds = %100
  %112 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %113 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %114 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %113, i32 0, i32 10
  %115 = load %struct.drm_property*, %struct.drm_property** %114, align 8
  %116 = icmp eq %struct.drm_property* %112, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %120 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  br label %248

122:                                              ; preds = %111
  %123 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %124 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %125 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %124, i32 0, i32 9
  %126 = load %struct.drm_property*, %struct.drm_property** %125, align 8
  %127 = icmp eq %struct.drm_property* %123, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load i64, i64* %9, align 8
  %130 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %131 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i64 %129, i64* %132, align 8
  br label %247

133:                                              ; preds = %122
  %134 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %135 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %136 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %135, i32 0, i32 8
  %137 = load %struct.drm_property*, %struct.drm_property** %136, align 8
  %138 = icmp eq %struct.drm_property* %134, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %142 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  store i64 %140, i64* %143, align 8
  br label %246

144:                                              ; preds = %133
  %145 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %146 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %147 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %146, i32 0, i32 7
  %148 = load %struct.drm_property*, %struct.drm_property** %147, align 8
  %149 = icmp eq %struct.drm_property* %145, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = load i64, i64* %9, align 8
  %152 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %153 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  store i64 %151, i64* %154, align 8
  br label %245

155:                                              ; preds = %144
  %156 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %157 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %158 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %157, i32 0, i32 6
  %159 = load %struct.drm_property*, %struct.drm_property** %158, align 8
  %160 = icmp eq %struct.drm_property* %156, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load i64, i64* %9, align 8
  %163 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %164 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  store i64 %162, i64* %165, align 8
  br label %244

166:                                              ; preds = %155
  %167 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %168 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %169 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %168, i32 0, i32 5
  %170 = load %struct.drm_property*, %struct.drm_property** %169, align 8
  %171 = icmp eq %struct.drm_property* %167, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = load i64, i64* %9, align 8
  %174 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %175 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  store i64 %173, i64* %176, align 8
  br label %243

177:                                              ; preds = %166
  %178 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %179 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %180 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %179, i32 0, i32 4
  %181 = load %struct.drm_property*, %struct.drm_property** %180, align 8
  %182 = icmp eq %struct.drm_property* %178, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load i64, i64* %9, align 8
  %185 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %186 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  store i64 %184, i64* %187, align 8
  br label %242

188:                                              ; preds = %177
  %189 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %190 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %191 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %190, i32 0, i32 3
  %192 = load %struct.drm_property*, %struct.drm_property** %191, align 8
  %193 = icmp eq %struct.drm_property* %189, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load i64, i64* %9, align 8
  %196 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %197 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 5
  store i64 %195, i64* %198, align 8
  br label %241

199:                                              ; preds = %188
  %200 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %201 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %202 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %201, i32 0, i32 2
  %203 = load %struct.drm_property*, %struct.drm_property** %202, align 8
  %204 = icmp eq %struct.drm_property* %200, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = load i64, i64* %9, align 8
  %207 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %208 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 6
  store i64 %206, i64* %209, align 8
  br label %240

210:                                              ; preds = %199
  %211 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %212 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %213 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %212, i32 0, i32 1
  %214 = load %struct.drm_property*, %struct.drm_property** %213, align 8
  %215 = icmp eq %struct.drm_property* %211, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %210
  %217 = load i64, i64* %9, align 8
  %218 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %219 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 7
  store i64 %217, i64* %220, align 8
  br label %239

221:                                              ; preds = %210
  %222 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %223 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %10, align 8
  %224 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %223, i32 0, i32 0
  %225 = load %struct.drm_property*, %struct.drm_property** %224, align 8
  %226 = icmp eq %struct.drm_property* %222, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %221
  %228 = load i64, i64* %9, align 8
  %229 = load %struct.intel_sdvo_connector_state*, %struct.intel_sdvo_connector_state** %11, align 8
  %230 = getelementptr inbounds %struct.intel_sdvo_connector_state, %struct.intel_sdvo_connector_state* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 8
  store i64 %228, i64* %231, align 8
  br label %238

232:                                              ; preds = %221
  %233 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %234 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %235 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %236 = load i64, i64* %9, align 8
  %237 = call i32 @intel_digital_connector_atomic_set_property(%struct.drm_connector* %233, %struct.drm_connector_state* %234, %struct.drm_property* %235, i64 %236)
  store i32 %237, i32* %5, align 4
  br label %254

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %238, %216
  br label %240

240:                                              ; preds = %239, %205
  br label %241

241:                                              ; preds = %240, %194
  br label %242

242:                                              ; preds = %241, %183
  br label %243

243:                                              ; preds = %242, %172
  br label %244

244:                                              ; preds = %243, %161
  br label %245

245:                                              ; preds = %244, %150
  br label %246

246:                                              ; preds = %245, %139
  br label %247

247:                                              ; preds = %246, %128
  br label %248

248:                                              ; preds = %247, %117
  br label %249

249:                                              ; preds = %248, %106
  br label %250

250:                                              ; preds = %249, %95
  br label %251

251:                                              ; preds = %250, %80
  br label %252

252:                                              ; preds = %251, %59
  br label %253

253:                                              ; preds = %252, %46
  store i32 0, i32* %5, align 4
  br label %254

254:                                              ; preds = %253, %232
  %255 = load i32, i32* %5, align 4
  ret i32 %255
}

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local %struct.intel_sdvo_connector_state* @to_intel_sdvo_connector_state(%struct.drm_connector_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(i32, i64) #1

declare dso_local i32 @intel_digital_connector_atomic_set_property(%struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_property*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
