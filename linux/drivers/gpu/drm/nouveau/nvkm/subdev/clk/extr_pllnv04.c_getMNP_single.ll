; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_pllnv04.c_getMNP_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_pllnv04.c_getMNP_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nvbios_pll = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*, %struct.nvbios_pll*, i32, i32*, i32*, i32*)* @getMNP_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getMNP_single(%struct.nvkm_subdev* %0, %struct.nvbios_pll* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvbios_pll*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nvkm_bios*, align 8
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
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %8, align 8
  store %struct.nvbios_pll* %1, %struct.nvbios_pll** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %36 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %37 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.nvkm_bios*, %struct.nvkm_bios** %39, align 8
  store %struct.nvkm_bios* %40, %struct.nvkm_bios** %14, align 8
  %41 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %42 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  %45 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %46 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %16, align 4
  %49 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %50 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %17, align 4
  %53 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %54 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %18, align 4
  %57 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %58 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %19, align 4
  %61 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %62 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %20, align 4
  %65 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %66 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %21, align 4
  %69 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %70 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %22, align 4
  %73 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %74 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %23, align 4
  %76 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %77 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %24, align 4
  %79 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %80 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %25, align 4
  %82 = load i32, i32* @INT_MAX, align 4
  store i32 %82, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %83 = load %struct.nvkm_bios*, %struct.nvkm_bios** %14, align 8
  %84 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 96
  br i1 %87, label %88, label %128

88:                                               ; preds = %6
  %89 = load %struct.nvkm_bios*, %struct.nvkm_bios** %14, align 8
  %90 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %35, align 4
  %93 = load i32, i32* %35, align 4
  %94 = icmp slt i32 %93, 23
  br i1 %94, label %101, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %35, align 4
  %97 = icmp eq i32 %96, 26
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %35, align 4
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %101, label %110

101:                                              ; preds = %98, %95, %88
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %102, 250000
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 6, i32* %18, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %106, 340000
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 2, i32* %18, align 4
  br label %109

109:                                              ; preds = %108, %105
  br label %127

110:                                              ; preds = %98
  %111 = load i32, i32* %35, align 4
  %112 = icmp slt i32 %111, 64
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4
  %115 = icmp sgt i32 %114, 150000
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 6, i32* %18, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, i32* %10, align 4
  %119 = icmp sgt i32 %118, 200000
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 4, i32* %18, align 4
  br label %121

121:                                              ; preds = %120, %117
  %122 = load i32, i32* %10, align 4
  %123 = icmp sgt i32 %122, 340000
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 2, i32* %18, align 4
  br label %125

125:                                              ; preds = %124, %121
  br label %126

126:                                              ; preds = %125, %110
  br label %127

127:                                              ; preds = %126, %109
  br label %128

128:                                              ; preds = %127, %6
  %129 = load i32, i32* %24, align 4
  %130 = shl i32 1, %129
  store i32 %130, i32* %29, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %29, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %15, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %24, align 4
  %139 = mul nsw i32 %137, %138
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = mul nsw i32 %140, 2
  store i32 %141, i32* %16, align 4
  br label %142

142:                                              ; preds = %136, %128
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = sdiv i32 %144, 200
  %146 = add nsw i32 %143, %145
  %147 = load i32, i32* %16, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = sdiv i32 %151, 200
  %153 = add nsw i32 %150, %152
  store i32 %153, i32* %16, align 4
  br label %154

154:                                              ; preds = %149, %142
  %155 = load i32, i32* %23, align 4
  store i32 %155, i32* %28, align 4
  br label %156

156:                                              ; preds = %255, %154
  %157 = load i32, i32* %28, align 4
  %158 = load i32, i32* %24, align 4
  %159 = icmp sle i32 %157, %158
  br i1 %159, label %160, label %258

160:                                              ; preds = %156
  %161 = load i32, i32* %28, align 4
  %162 = shl i32 1, %161
  store i32 %162, i32* %29, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %29, align 4
  %165 = mul nsw i32 %163, %164
  store i32 %165, i32* %30, align 4
  %166 = load i32, i32* %30, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %160
  br label %255

170:                                              ; preds = %160
  %171 = load i32, i32* %30, align 4
  %172 = load i32, i32* %16, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* %34, align 4
  store i32 %175, i32* %7, align 4
  br label %260

176:                                              ; preds = %170
  %177 = load i32, i32* %17, align 4
  store i32 %177, i32* %26, align 4
  br label %178

178:                                              ; preds = %251, %176
  %179 = load i32, i32* %26, align 4
  %180 = load i32, i32* %18, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %182, label %254

182:                                              ; preds = %178
  %183 = load i32, i32* %25, align 4
  %184 = load i32, i32* %26, align 4
  %185 = sdiv i32 %183, %184
  %186 = load i32, i32* %21, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i32, i32* %34, align 4
  store i32 %189, i32* %7, align 4
  br label %260

190:                                              ; preds = %182
  %191 = load i32, i32* %25, align 4
  %192 = load i32, i32* %26, align 4
  %193 = sdiv i32 %191, %192
  %194 = load i32, i32* %22, align 4
  %195 = icmp sgt i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %251

197:                                              ; preds = %190
  %198 = load i32, i32* %30, align 4
  %199 = load i32, i32* %26, align 4
  %200 = mul nsw i32 %198, %199
  %201 = load i32, i32* %25, align 4
  %202 = sdiv i32 %201, 2
  %203 = add nsw i32 %200, %202
  %204 = load i32, i32* %25, align 4
  %205 = sdiv i32 %203, %204
  store i32 %205, i32* %27, align 4
  %206 = load i32, i32* %27, align 4
  %207 = load i32, i32* %19, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %197
  br label %251

210:                                              ; preds = %197
  %211 = load i32, i32* %27, align 4
  %212 = load i32, i32* %20, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  br label %254

215:                                              ; preds = %210
  %216 = load i32, i32* %27, align 4
  %217 = load i32, i32* %25, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load i32, i32* %29, align 4
  %220 = sdiv i32 %219, 2
  %221 = add nsw i32 %218, %220
  %222 = load i32, i32* %29, align 4
  %223 = sdiv i32 %221, %222
  %224 = load i32, i32* %26, align 4
  %225 = sdiv i32 %224, 2
  %226 = add nsw i32 %223, %225
  %227 = load i32, i32* %26, align 4
  %228 = sdiv i32 %226, %227
  store i32 %228, i32* %31, align 4
  %229 = load i32, i32* %31, align 4
  %230 = load i32, i32* %10, align 4
  %231 = sub nsw i32 %229, %230
  %232 = call i32 @abs(i32 %231) #2
  store i32 %232, i32* %32, align 4
  %233 = load i32, i32* %32, align 4
  %234 = load i32, i32* %33, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %215
  %237 = load i32, i32* %32, align 4
  store i32 %237, i32* %33, align 4
  %238 = load i32, i32* %31, align 4
  store i32 %238, i32* %34, align 4
  %239 = load i32, i32* %27, align 4
  %240 = load i32*, i32** %11, align 8
  store i32 %239, i32* %240, align 4
  %241 = load i32, i32* %26, align 4
  %242 = load i32*, i32** %12, align 8
  store i32 %241, i32* %242, align 4
  %243 = load i32, i32* %28, align 4
  %244 = load i32*, i32** %13, align 8
  store i32 %243, i32* %244, align 4
  %245 = load i32, i32* %32, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %236
  %248 = load i32, i32* %34, align 4
  store i32 %248, i32* %7, align 4
  br label %260

249:                                              ; preds = %236
  br label %250

250:                                              ; preds = %249, %215
  br label %251

251:                                              ; preds = %250, %209, %196
  %252 = load i32, i32* %26, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %26, align 4
  br label %178

254:                                              ; preds = %214, %178
  br label %255

255:                                              ; preds = %254, %169
  %256 = load i32, i32* %28, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %28, align 4
  br label %156

258:                                              ; preds = %156
  %259 = load i32, i32* %34, align 4
  store i32 %259, i32* %7, align 4
  br label %260

260:                                              ; preds = %258, %247, %188, %174
  %261 = load i32, i32* %7, align 4
  ret i32 %261
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
