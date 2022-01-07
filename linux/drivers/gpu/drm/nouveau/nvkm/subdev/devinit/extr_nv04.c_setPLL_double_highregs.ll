; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_setPLL_double_highregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_setPLL_double_highregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nvkm_pll_vals = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setPLL_double_highregs(%struct.nvkm_devinit* %0, i32 %1, %struct.nvkm_pll_vals* %2) #0 {
  %4 = alloca %struct.nvkm_devinit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_pll_vals*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_pll_vals* %2, %struct.nvkm_pll_vals** %6, align 8
  %22 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %4, align 8
  %23 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %24, align 8
  store %struct.nvkm_device* %25, %struct.nvkm_device** %7, align 8
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %27 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 48
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 53
  br label %37

37:                                               ; preds = %34, %3
  %38 = phi i1 [ true, %3 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 6817056
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 92, i32 112
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @nvkm_rd32(%struct.nvkm_device* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %37
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @nvkm_rd32(%struct.nvkm_device* %52, i32 %53)
  br label %56

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ 0, %55 ]
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, -524288
  %60 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %61 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 16
  %64 = or i32 %59, %63
  %65 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %66 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %64, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, 2147418112
  %71 = or i32 %70, -2147483648
  %72 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %73 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  store i32 %75, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %76 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %77 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %56
  %81 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %82 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %85 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %83, %86
  br label %88

88:                                               ; preds = %80, %56
  %89 = phi i1 [ true, %56 ], [ %87, %80 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @powerctrl_1_shift(i32 %91, i32 %92)
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %88
  %97 = load i32, i32* %13, align 4
  %98 = and i32 %97, -54001665
  %99 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %100 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 24
  %103 = shl i32 %102, 21
  %104 = or i32 %98, %103
  %105 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %106 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 7
  %109 = shl i32 %108, 19
  %110 = or i32 %104, %109
  %111 = or i32 %110, 128
  %112 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %113 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 7
  %116 = shl i32 %115, 4
  %117 = or i32 %111, %116
  store i32 %117, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %96, %88
  %119 = load i32, i32* %8, align 4
  %120 = icmp sgt i32 %119, 64
  br i1 %120, label %121, label %142

121:                                              ; preds = %118
  %122 = load i32, i32* %5, align 4
  %123 = icmp sge i32 %122, 6817032
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %126 = call i32 @nvkm_rd32(%struct.nvkm_device* %125, i32 6817152)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @new_ramdac580(i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  store i32 -1, i32* %11, align 4
  br label %135

135:                                              ; preds = %134, %124
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %14, align 4
  %140 = or i32 %139, 287
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %121, %118
  %143 = load i32, i32* %8, align 4
  %144 = icmp sgt i32 %143, 112
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = and i32 %146, 2147483647
  %148 = load i32, i32* %17, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 4, i32 12
  %152 = shl i32 %151, 28
  %153 = or i32 %147, %152
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %145, %142
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %244

163:                                              ; preds = %158, %154
  %164 = load i32, i32* %20, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %168 = call i32 @nvkm_rd32(%struct.nvkm_device* %167, i32 5508)
  store i32 %168, i32* %18, align 4
  %169 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %20, align 4
  %172 = shl i32 15, %171
  %173 = xor i32 %172, -1
  %174 = and i32 %170, %173
  %175 = load i32, i32* %20, align 4
  %176 = shl i32 1, %175
  %177 = or i32 %174, %176
  %178 = call i32 @nvkm_wr32(%struct.nvkm_device* %169, i32 5508, i32 %177)
  br label %179

179:                                              ; preds = %166, %163
  %180 = load i32, i32* %8, align 4
  %181 = icmp sge i32 %180, 64
  br i1 %181, label %182, label %210

182:                                              ; preds = %179
  store i32 14, i32* %21, align 4
  %183 = load i32, i32* %5, align 4
  switch i32 %183, label %196 [
    i32 6817028, label %184
    i32 6817024, label %187
    i32 6817056, label %190
    i32 6817032, label %193
  ]

184:                                              ; preds = %182
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %185, 2
  store i32 %186, i32* %21, align 4
  br label %187

187:                                              ; preds = %182, %184
  %188 = load i32, i32* %21, align 4
  %189 = add nsw i32 %188, 2
  store i32 %189, i32* %21, align 4
  br label %190

190:                                              ; preds = %182, %187
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %191, 2
  store i32 %192, i32* %21, align 4
  br label %193

193:                                              ; preds = %182, %190
  %194 = load i32, i32* %21, align 4
  %195 = add nsw i32 %194, 2
  store i32 %195, i32* %21, align 4
  br label %196

196:                                              ; preds = %193, %182
  %197 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %198 = call i32 @nvkm_rd32(%struct.nvkm_device* %197, i32 49216)
  store i32 %198, i32* %19, align 4
  %199 = load i32, i32* %21, align 4
  %200 = icmp ne i32 %199, 14
  br i1 %200, label %201, label %209

201:                                              ; preds = %196
  %202 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %21, align 4
  %205 = shl i32 3, %204
  %206 = xor i32 %205, -1
  %207 = and i32 %203, %206
  %208 = call i32 @nvkm_wr32(%struct.nvkm_device* %202, i32 49216, i32 %207)
  br label %209

209:                                              ; preds = %201, %196
  br label %210

210:                                              ; preds = %209, %179
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %16, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %216 = load i32, i32* %16, align 4
  %217 = call i32 @nvkm_wr32(%struct.nvkm_device* %215, i32 6817152, i32 %216)
  br label %218

218:                                              ; preds = %214, %210
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %218
  %222 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %14, align 4
  %225 = call i32 @nvkm_wr32(%struct.nvkm_device* %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %221, %218
  %227 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* %13, align 4
  %230 = call i32 @nvkm_wr32(%struct.nvkm_device* %227, i32 %228, i32 %229)
  %231 = load i32, i32* %20, align 4
  %232 = icmp sge i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %226
  %234 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %235 = load i32, i32* %18, align 4
  %236 = call i32 @nvkm_wr32(%struct.nvkm_device* %234, i32 5508, i32 %235)
  br label %237

237:                                              ; preds = %233, %226
  %238 = load i32, i32* %8, align 4
  %239 = icmp sge i32 %238, 64
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %242 = load i32, i32* %19, align 4
  %243 = call i32 @nvkm_wr32(%struct.nvkm_device* %241, i32 49216, i32 %242)
  br label %244

244:                                              ; preds = %162, %240, %237
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @powerctrl_1_shift(i32, i32) #1

declare dso_local i32 @new_ramdac580(i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
