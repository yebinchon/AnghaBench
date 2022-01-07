; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_conn_atomic_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_conn_atomic_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.drm_property* }
%struct.drm_connector_state = type { i32 }
%struct.drm_property = type { i32 }
%struct.nouveau_conn_atom = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.nouveau_display = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@NV50_DISP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_conn_atomic_set_property(%struct.drm_connector* %0, %struct.drm_connector_state* %1, %struct.drm_property* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.nouveau_conn_atom*, align 8
  %12 = alloca %struct.nouveau_display*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %6, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %10, align 8
  %16 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %17 = call %struct.nouveau_conn_atom* @nouveau_conn_atom(%struct.drm_connector_state* %16)
  store %struct.nouveau_conn_atom* %17, %struct.nouveau_conn_atom** %11, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %19 = call %struct.nouveau_display* @nouveau_display(%struct.drm_device* %18)
  store %struct.nouveau_display* %19, %struct.nouveau_display** %12, align 8
  %20 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.drm_property*, %struct.drm_property** %23, align 8
  %25 = icmp eq %struct.drm_property* %20, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %47 [
    i32 128, label %28
    i32 129, label %46
    i32 130, label %46
    i32 131, label %46
  ]

28:                                               ; preds = %26
  %29 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %30 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %44 [
    i32 133, label %32
    i32 132, label %32
  ]

32:                                               ; preds = %28, %28
  %33 = load %struct.nouveau_display*, %struct.nouveau_display** %12, align 8
  %34 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NV50_DISP, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %237

43:                                               ; preds = %32
  br label %45

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %26, %26, %26, %45
  br label %50

47:                                               ; preds = %26
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %237

50:                                               ; preds = %46
  %51 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %52 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %60 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %63 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %57, %50
  br label %236

66:                                               ; preds = %4
  %67 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %68 = load %struct.nouveau_display*, %struct.nouveau_display** %12, align 8
  %69 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %68, i32 0, i32 6
  %70 = load %struct.drm_property*, %struct.drm_property** %69, align 8
  %71 = icmp eq %struct.drm_property* %67, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %74 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %83 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %87 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %72
  br label %235

90:                                               ; preds = %66
  %91 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %92 = load %struct.nouveau_display*, %struct.nouveau_display** %12, align 8
  %93 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %92, i32 0, i32 5
  %94 = load %struct.drm_property*, %struct.drm_property** %93, align 8
  %95 = icmp eq %struct.drm_property* %91, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %98 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %107 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 4
  %110 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %111 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %104, %96
  br label %234

114:                                              ; preds = %90
  %115 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %116 = load %struct.nouveau_display*, %struct.nouveau_display** %12, align 8
  %117 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %116, i32 0, i32 4
  %118 = load %struct.drm_property*, %struct.drm_property** %117, align 8
  %119 = icmp eq %struct.drm_property* %115, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %114
  %121 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %122 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %120
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %131 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  store i32 %129, i32* %133, align 4
  %134 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %135 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 4
  br label %137

137:                                              ; preds = %128, %120
  br label %233

138:                                              ; preds = %114
  %139 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %140 = load %struct.nouveau_display*, %struct.nouveau_display** %12, align 8
  %141 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %140, i32 0, i32 3
  %142 = load %struct.drm_property*, %struct.drm_property** %141, align 8
  %143 = icmp eq %struct.drm_property* %139, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %138
  %145 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %146 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %154 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 4
  %156 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %157 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  br label %159

159:                                              ; preds = %151, %144
  br label %232

160:                                              ; preds = %138
  %161 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %162 = load %struct.nouveau_display*, %struct.nouveau_display** %12, align 8
  %163 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %162, i32 0, i32 2
  %164 = load %struct.drm_property*, %struct.drm_property** %163, align 8
  %165 = icmp eq %struct.drm_property* %161, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %160
  %167 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %168 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %166
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %176 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 4
  %178 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %179 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  store i32 1, i32* %180, align 4
  br label %181

181:                                              ; preds = %173, %166
  br label %231

182:                                              ; preds = %160
  %183 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %184 = load %struct.nouveau_display*, %struct.nouveau_display** %12, align 8
  %185 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %184, i32 0, i32 1
  %186 = load %struct.drm_property*, %struct.drm_property** %185, align 8
  %187 = icmp eq %struct.drm_property* %183, %186
  br i1 %187, label %188, label %204

188:                                              ; preds = %182
  %189 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %190 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %188
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %198 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  store i32 %196, i32* %199, align 4
  %200 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %201 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 2
  store i32 1, i32* %202, align 4
  br label %203

203:                                              ; preds = %195, %188
  br label %230

204:                                              ; preds = %182
  %205 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %206 = load %struct.nouveau_display*, %struct.nouveau_display** %12, align 8
  %207 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %206, i32 0, i32 0
  %208 = load %struct.drm_property*, %struct.drm_property** %207, align 8
  %209 = icmp eq %struct.drm_property* %205, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %204
  %211 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %212 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %210
  %218 = load i32, i32* %9, align 4
  %219 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %220 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 4
  %222 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %11, align 8
  %223 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 2
  store i32 1, i32* %224, align 4
  br label %225

225:                                              ; preds = %217, %210
  br label %229

226:                                              ; preds = %204
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %5, align 4
  br label %237

229:                                              ; preds = %225
  br label %230

230:                                              ; preds = %229, %203
  br label %231

231:                                              ; preds = %230, %181
  br label %232

232:                                              ; preds = %231, %159
  br label %233

233:                                              ; preds = %232, %137
  br label %234

234:                                              ; preds = %233, %113
  br label %235

235:                                              ; preds = %234, %89
  br label %236

236:                                              ; preds = %235, %65
  store i32 0, i32* %5, align 4
  br label %237

237:                                              ; preds = %236, %226, %47, %40
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local %struct.nouveau_conn_atom* @nouveau_conn_atom(%struct.drm_connector_state*) #1

declare dso_local %struct.nouveau_display* @nouveau_display(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
