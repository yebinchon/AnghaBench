; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gddr3.c_nvkm_gddr3_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gddr3.c_nvkm_gddr3_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ramgddr3_cl_hi = common dso_local global i32 0, align 4
@ramgddr3_cl_lo = common dso_local global i32 0, align 4
@ramgddr3_wr_lo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_gddr3_calc(%struct.nvkm_ram* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_ram*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %107 [
    i32 16, label %17
    i32 32, label %57
  ]

17:                                               ; preds = %1
  %18 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  %30 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %46 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  %51 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %52 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  br label %110

57:                                               ; preds = %1
  %58 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %59 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 3968
  %67 = ashr i32 %66, 7
  store i32 %67, i32* %6, align 4
  %68 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %69 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 31
  %77 = ashr i32 %76, 0
  store i32 %77, i32* %4, align 4
  %78 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %79 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 8323072
  %87 = ashr i32 %86, 16
  store i32 %87, i32* %5, align 4
  %88 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %89 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %7, align 4
  %97 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %98 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 768
  %103 = ashr i32 %102, 8
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %9, align 4
  br label %110

107:                                              ; preds = %1
  %108 = load i32, i32* @ENOSYS, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %255

110:                                              ; preds = %57, %17
  %111 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %112 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 32
  br i1 %117, label %126, label %118

118:                                              ; preds = %110
  %119 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %120 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 255
  br i1 %125, label %126, label %134

126:                                              ; preds = %118, %110
  %127 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %128 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 12
  %133 = ashr i32 %132, 2
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %126, %118
  %135 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %136 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 1
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i32, i32* @ramgddr3_cl_hi, align 4
  br label %147

145:                                              ; preds = %134
  %146 = load i32, i32* @ramgddr3_cl_lo, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @ramxlat(i32 %148, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* @ramgddr3_wr_lo, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @ramxlat(i32 %151, i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %165, label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %6, align 4
  %158 = icmp slt i32 %157, 1
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %6, align 4
  %161 = icmp sgt i32 %160, 7
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %5, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162, %159, %156, %147
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %255

168:                                              ; preds = %162
  %169 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %170 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, -3957
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* %6, align 4
  %176 = and i32 %175, 7
  %177 = shl i32 %176, 9
  %178 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %179 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %177
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %4, align 4
  %185 = and i32 %184, 7
  %186 = shl i32 %185, 4
  %187 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %188 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %186
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* %4, align 4
  %194 = and i32 %193, 8
  %195 = ashr i32 %194, 1
  %196 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %197 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %195
  store i32 %201, i32* %199, align 4
  %202 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %203 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, -1021
  store i32 %207, i32* %205, align 4
  %208 = load i32, i32* %8, align 4
  %209 = and i32 %208, 3
  %210 = shl i32 %209, 2
  %211 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %212 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %210
  store i32 %216, i32* %214, align 4
  %217 = load i32, i32* %9, align 4
  %218 = and i32 %217, 3
  %219 = shl i32 %218, 8
  %220 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %221 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %219
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* %5, align 4
  %227 = and i32 %226, 3
  %228 = shl i32 %227, 4
  %229 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %230 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %228
  store i32 %234, i32* %232, align 4
  %235 = load i32, i32* %5, align 4
  %236 = and i32 %235, 4
  %237 = shl i32 %236, 5
  %238 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %239 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %237
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* %7, align 4
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = shl i32 %247, 6
  %249 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %250 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %248
  store i32 %254, i32* %252, align 4
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %168, %165, %107
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local i32 @ramxlat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
