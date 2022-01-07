; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_util.c_dpu_hw_csc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_util.c_dpu_hw_csc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_csc_cfg = type { i32*, i32*, i32*, i32*, i32* }

@dpu_hw_csc_setup.matrix_shift = internal constant i32 7, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_hw_csc_setup(%struct.dpu_hw_blk_reg_map* %0, i32 %1, %struct.dpu_csc_cfg* %2, i32 %3) #0 {
  %5 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_csc_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dpu_hw_blk_reg_map* %0, %struct.dpu_hw_blk_reg_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dpu_csc_cfg* %2, %struct.dpu_csc_cfg** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 16, i32 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %16 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 7
  %21 = and i32 %20, 8191
  %22 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %23 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 7
  %28 = and i32 %27, 8191
  %29 = shl i32 %28, 16
  %30 = or i32 %21, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %31, i32 %32, i32 %33)
  %35 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %36 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 7
  %41 = and i32 %40, 8191
  %42 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %43 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 7
  %48 = and i32 %47, 8191
  %49 = shl i32 %48, 16
  %50 = or i32 %41, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %51, i32 %53, i32 %54)
  %56 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %57 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 7
  %62 = and i32 %61, 8191
  %63 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %64 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 7
  %69 = and i32 %68, 8191
  %70 = shl i32 %69, 16
  %71 = or i32 %62, %70
  store i32 %71, i32* %10, align 4
  %72 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %72, i32 %74, i32 %75)
  %77 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %78 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 6
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 7
  %83 = and i32 %82, 8191
  %84 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %85 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 7
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 7
  %90 = and i32 %89, 8191
  %91 = shl i32 %90, 16
  %92 = or i32 %83, %91
  store i32 %92, i32* %10, align 4
  %93 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 12
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %93, i32 %95, i32 %96)
  %98 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %99 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 7
  %104 = and i32 %103, 8191
  store i32 %104, i32* %10, align 4
  %105 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 16
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %105, i32 %107, i32 %108)
  %110 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %111 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = shl i32 %114, %115
  %117 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %118 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %116, %121
  store i32 %122, i32* %10, align 4
  %123 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 20
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %123, i32 %125, i32 %126)
  %128 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %129 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = shl i32 %132, %133
  %135 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %136 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %134, %139
  store i32 %140, i32* %10, align 4
  %141 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 24
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %141, i32 %143, i32 %144)
  %146 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %147 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 4
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %9, align 4
  %152 = shl i32 %150, %151
  %153 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %154 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 5
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %152, %157
  store i32 %158, i32* %10, align 4
  %159 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 28
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %159, i32 %161, i32 %162)
  %164 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %165 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %9, align 4
  %170 = shl i32 %168, %169
  %171 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %172 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %170, %175
  store i32 %176, i32* %10, align 4
  %177 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 32
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %177, i32 %179, i32 %180)
  %182 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %183 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %9, align 4
  %188 = shl i32 %186, %187
  %189 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %190 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %188, %193
  store i32 %194, i32* %10, align 4
  %195 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 36
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %195, i32 %197, i32 %198)
  %200 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %201 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 4
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %9, align 4
  %206 = shl i32 %204, %205
  %207 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %208 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 5
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %206, %211
  store i32 %212, i32* %10, align 4
  %213 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 40
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %213, i32 %215, i32 %216)
  %218 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, 44
  %221 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %222 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %218, i32 %220, i32 %225)
  %227 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, 48
  %230 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %231 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %227, i32 %229, i32 %234)
  %236 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 52
  %239 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %240 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %236, i32 %238, i32 %243)
  %245 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %246 = load i32, i32* %6, align 4
  %247 = add nsw i32 %246, 56
  %248 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %249 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %245, i32 %247, i32 %252)
  %254 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 60
  %257 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %258 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %257, i32 0, i32 4
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %254, i32 %256, i32 %261)
  %263 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %264 = load i32, i32* %6, align 4
  %265 = add nsw i32 %264, 64
  %266 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %7, align 8
  %267 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %266, i32 0, i32 4
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %263, i32 %265, i32 %270)
  ret void
}

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
