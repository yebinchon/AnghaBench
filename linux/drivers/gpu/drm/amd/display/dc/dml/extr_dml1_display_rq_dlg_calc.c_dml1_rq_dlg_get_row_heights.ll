; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_dml1_display_rq_dlg_calc.c_dml1_rq_dlg_get_row_heights.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_dml1_display_rq_dlg_calc.c_dml1_rq_dlg_get_row_heights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@dm_sw_linear = common dso_local global i32 0, align 4
@dm_vert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display_mode_lib*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32)* @dml1_rq_dlg_get_row_heights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dml1_rq_dlg_get_row_heights(%struct.display_mode_lib* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.display_mode_lib*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* @dm_sw_linear, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* @dm_vert, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %22, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %20, align 4
  %57 = call i32 @get_bytes_per_element(i32 %55, i32 %56)
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %23, align 4
  %59 = call i32 @dml_log2(i32 %58)
  store i32 %59, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %60 = load i32, i32* %21, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %10
  store i32 256, i32* %25, align 4
  store i32 1, i32* %26, align 4
  br label %66

63:                                               ; preds = %10
  %64 = load i32, i32* %23, align 4
  %65 = call i32 @get_blk256_size(i32* %25, i32* %26, i32 %64)
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i32, i32* %26, align 4
  %68 = uitofp i32 %67 to double
  %69 = fptoui double %68 to i32
  %70 = call i32 @dml_log2(i32 %69)
  store i32 %70, i32* %27, align 4
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @get_blk_size_bytes(i32 %75)
  br label %77

77:                                               ; preds = %74, %73
  %78 = phi i32 [ 256, %73 ], [ %76, %74 ]
  store i32 %78, i32* %28, align 4
  %79 = load i32, i32* %28, align 4
  %80 = uitofp i32 %79 to double
  %81 = fptoui double %80 to i32
  %82 = call i32 @dml_log2(i32 %81)
  store i32 %82, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @dm_sw_linear, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %77
  %87 = load i32, i32* %27, align 4
  %88 = load i32, i32* %29, align 4
  %89 = sub i32 %88, 8
  %90 = uitofp i32 %89 to double
  %91 = fdiv double %90, 2.000000e+00
  %92 = call i32 @dml_ceil(double %91, i32 1)
  %93 = add i32 %87, %92
  store i32 %93, i32* %30, align 4
  br label %95

94:                                               ; preds = %77
  store i32 0, i32* %30, align 4
  br label %95

95:                                               ; preds = %94, %86
  %96 = load i32, i32* %29, align 4
  %97 = load i32, i32* %24, align 4
  %98 = sub i32 %96, %97
  %99 = load i32, i32* %30, align 4
  %100 = sub i32 %98, %99
  store i32 %100, i32* %31, align 4
  store i32 6, i32* %32, align 4
  %101 = load i32, i32* %27, align 4
  %102 = add i32 %101, 3
  store i32 %102, i32* %33, align 4
  %103 = load i32, i32* %32, align 4
  %104 = add i32 %103, 8
  %105 = load i32, i32* %24, align 4
  %106 = sub i32 %104, %105
  %107 = load i32, i32* %33, align 4
  %108 = sub i32 %106, %107
  store i32 %108, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %109 = load i32, i32* %22, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %95
  %112 = load i32, i32* %33, align 4
  store i32 %112, i32* %35, align 4
  br label %115

113:                                              ; preds = %95
  %114 = load i32, i32* %34, align 4
  store i32 %114, i32* %35, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = load i32, i32* %35, align 4
  %117 = shl i32 1, %116
  %118 = load i32*, i32** %13, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.display_mode_lib*, %struct.display_mode_lib** %11, align 8
  %120 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dml_log2(i32 %122)
  store i32 %123, i32* %36, align 4
  %124 = load %struct.display_mode_lib*, %struct.display_mode_lib** %11, align 8
  %125 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %37, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  store i32 0, i32* %43, align 4
  store i32 0, i32* %44, align 4
  store i32 0, i32* %45, align 4
  store i32 0, i32* %46, align 4
  %128 = load i32, i32* %21, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %115
  store i32 0, i32* %38, align 4
  br label %137

131:                                              ; preds = %115
  %132 = load i32, i32* %36, align 4
  %133 = sub i32 %132, 8
  %134 = udiv i32 %133, 2
  %135 = load i32, i32* %27, align 4
  %136 = add i32 %134, %135
  store i32 %136, i32* %38, align 4
  br label %137

137:                                              ; preds = %131, %130
  %138 = load i32, i32* %36, align 4
  %139 = load i32, i32* %24, align 4
  %140 = sub i32 %138, %139
  %141 = load i32, i32* %38, align 4
  %142 = sub i32 %140, %141
  store i32 %142, i32* %39, align 4
  %143 = load i32, i32* %29, align 4
  %144 = load i32, i32* %36, align 4
  %145 = icmp ule i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  store i32 0, i32* %40, align 4
  br label %158

147:                                              ; preds = %137
  %148 = load i32, i32* %30, align 4
  %149 = load i32, i32* %38, align 4
  %150 = sub i32 %148, %149
  %151 = icmp uge i32 %150, 2
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i32 2, i32* %40, align 4
  br label %157

153:                                              ; preds = %147
  %154 = load i32, i32* %30, align 4
  %155 = load i32, i32* %38, align 4
  %156 = sub i32 %154, %155
  store i32 %156, i32* %40, align 4
  br label %157

157:                                              ; preds = %153, %152
  br label %158

158:                                              ; preds = %157, %146
  %159 = load i32, i32* %40, align 4
  %160 = sub i32 3, %159
  store i32 %160, i32* %41, align 4
  %161 = load i32, i32* %41, align 4
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* %40, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %180, label %166

166:                                              ; preds = %163, %158
  %167 = load i32, i32* %41, align 4
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* %40, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %180, label %172

172:                                              ; preds = %169, %166
  %173 = load i32, i32* %41, align 4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* %40, align 4
  %177 = icmp eq i32 %176, 2
  br label %178

178:                                              ; preds = %175, %172
  %179 = phi i1 [ false, %172 ], [ %177, %175 ]
  br label %180

180:                                              ; preds = %178, %169, %163
  %181 = phi i1 [ true, %169 ], [ true, %163 ], [ %179, %178 ]
  %182 = zext i1 %181 to i32
  %183 = call i32 @ASSERT(i32 %182)
  %184 = load i32, i32* %38, align 4
  %185 = load i32, i32* %40, align 4
  %186 = add i32 %184, %185
  store i32 %186, i32* %42, align 4
  %187 = load i32, i32* %39, align 4
  %188 = load i32, i32* %41, align 4
  %189 = add i32 %187, %188
  store i32 %189, i32* %43, align 4
  %190 = load i32, i32* %43, align 4
  %191 = shl i32 1, %190
  store i32 %191, i32* %46, align 4
  %192 = load i32, i32* %21, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %180
  %195 = load i32, i32* %37, align 4
  %196 = load i32, i32* %46, align 4
  %197 = mul i32 %195, %196
  %198 = load i32, i32* %15, align 4
  %199 = udiv i32 %197, %198
  %200 = call i32 @dml_log2(i32 %199)
  %201 = call i32 @dml_floor(i32 %200, i32 1)
  store i32 %201, i32* %44, align 4
  %202 = load i32, i32* %44, align 4
  %203 = icmp uge i32 %202, 3
  %204 = zext i1 %203 to i32
  %205 = call i32 @ASSERT(i32 %204)
  %206 = load i32, i32* %44, align 4
  %207 = icmp ugt i32 %206, 7
  br i1 %207, label %208, label %209

208:                                              ; preds = %194
  store i32 7, i32* %44, align 4
  br label %209

209:                                              ; preds = %208, %194
  %210 = load i32, i32* %44, align 4
  store i32 %210, i32* %45, align 4
  br label %227

211:                                              ; preds = %180
  %212 = load i32, i32* %22, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* %42, align 4
  store i32 %215, i32* %45, align 4
  br label %226

216:                                              ; preds = %211
  %217 = load i32, i32* %31, align 4
  %218 = load i32, i32* %43, align 4
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = load i32, i32* %31, align 4
  br label %224

222:                                              ; preds = %216
  %223 = load i32, i32* %43, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i32 [ %221, %220 ], [ %223, %222 ]
  store i32 %225, i32* %45, align 4
  br label %226

226:                                              ; preds = %224, %214
  br label %227

227:                                              ; preds = %226, %209
  %228 = load i32, i32* %22, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %245, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %14, align 4
  %232 = icmp ugt i32 %231, 2576
  br i1 %232, label %233, label %245

233:                                              ; preds = %230
  %234 = load i32, i32* %23, align 4
  %235 = icmp uge i32 %234, 4
  br i1 %235, label %236, label %245

236:                                              ; preds = %233
  %237 = load i32, i32* %36, align 4
  %238 = icmp eq i32 %237, 12
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = load i32, i32* %29, align 4
  %241 = icmp uge i32 %240, 16
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32, i32* %45, align 4
  %244 = sub i32 %243, 1
  store i32 %244, i32* %45, align 4
  br label %245

245:                                              ; preds = %242, %239, %236, %233, %230, %227
  %246 = load i32, i32* %45, align 4
  %247 = shl i32 1, %246
  %248 = load i32*, i32** %12, align 8
  store i32 %247, i32* %248, align 4
  ret void
}

declare dso_local i32 @get_bytes_per_element(i32, i32) #1

declare dso_local i32 @dml_log2(i32) #1

declare dso_local i32 @get_blk256_size(i32*, i32*, i32) #1

declare dso_local i32 @get_blk_size_bytes(i32) #1

declare dso_local i32 @dml_ceil(double, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dml_floor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
