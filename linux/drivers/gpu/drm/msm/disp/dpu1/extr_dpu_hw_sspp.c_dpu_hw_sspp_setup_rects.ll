; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_rects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_rects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_hw_pipe_cfg = type { %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32 }

@DPU_SSPP_SRC = common dso_local global i32 0, align 4
@DPU_SSPP_RECT_SOLO = common dso_local global i32 0, align 4
@DPU_SSPP_RECT_0 = common dso_local global i32 0, align 4
@SSPP_SRC_SIZE = common dso_local global i32 0, align 4
@SSPP_SRC_XY = common dso_local global i32 0, align 4
@SSPP_OUT_SIZE = common dso_local global i32 0, align 4
@SSPP_OUT_XY = common dso_local global i32 0, align 4
@SSPP_SRC_SIZE_REC1 = common dso_local global i32 0, align 4
@SSPP_SRC_XY_REC1 = common dso_local global i32 0, align 4
@SSPP_OUT_SIZE_REC1 = common dso_local global i32 0, align 4
@SSPP_OUT_XY_REC1 = common dso_local global i32 0, align 4
@SSPP_SRC_YSTRIDE0 = common dso_local global i32 0, align 4
@SSPP_SRC_YSTRIDE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, %struct.dpu_hw_pipe_cfg*, i32)* @dpu_hw_sspp_setup_rects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_sspp_setup_rects(%struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.dpu_hw_pipe*, align 8
  %5 = alloca %struct.dpu_hw_pipe_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_hw_blk_reg_map*, align 8
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
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %4, align 8
  store %struct.dpu_hw_pipe_cfg* %1, %struct.dpu_hw_pipe_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %20 = load i32, i32* @DPU_SSPP_SRC, align 4
  %21 = call i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %19, i32 %20, i32* %18)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %25 = icmp ne %struct.dpu_hw_pipe_cfg* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %3
  br label %212

27:                                               ; preds = %23
  %28 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %4, align 8
  %29 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %28, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %29, %struct.dpu_hw_blk_reg_map** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DPU_SSPP_RECT_SOLO, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @DPU_SSPP_RECT_0, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33, %27
  %38 = load i32, i32* @SSPP_SRC_SIZE, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @SSPP_SRC_XY, align 4
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* @SSPP_OUT_SIZE, align 4
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* @SSPP_OUT_XY, align 4
  store i32 %41, i32* %17, align 4
  br label %47

42:                                               ; preds = %33
  %43 = load i32, i32* @SSPP_SRC_SIZE_REC1, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* @SSPP_SRC_XY_REC1, align 4
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* @SSPP_OUT_SIZE_REC1, align 4
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* @SSPP_OUT_XY_REC1, align 4
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %49 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %51, 16
  %53 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %54 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %52, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %59 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %58, i32 0, i32 2
  %60 = call i32 @drm_rect_height(%struct.TYPE_5__* %59)
  %61 = shl i32 %60, 16
  %62 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %63 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %62, i32 0, i32 2
  %64 = call i32 @drm_rect_width(%struct.TYPE_5__* %63)
  %65 = or i32 %61, %64
  store i32 %65, i32* %8, align 4
  %66 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %67 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 %69, 16
  %71 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %72 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %70, %74
  store i32 %75, i32* %11, align 4
  %76 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %77 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %76, i32 0, i32 1
  %78 = call i32 @drm_rect_height(%struct.TYPE_5__* %77)
  %79 = shl i32 %78, 16
  %80 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %81 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %80, i32 0, i32 1
  %82 = call i32 @drm_rect_width(%struct.TYPE_5__* %81)
  %83 = or i32 %79, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @DPU_SSPP_RECT_SOLO, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %47
  %88 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %89 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %95 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 16
  %101 = or i32 %93, %100
  store i32 %101, i32* %12, align 4
  %102 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %103 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %109 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 16
  %115 = or i32 %107, %114
  store i32 %115, i32* %13, align 4
  br label %175

116:                                              ; preds = %47
  %117 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %118 = load i32, i32* @SSPP_SRC_YSTRIDE0, align 4
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %117, i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %123 = load i32, i32* @SSPP_SRC_YSTRIDE1, align 4
  %124 = load i32, i32* %18, align 4
  %125 = add nsw i32 %123, %124
  %126 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %122, i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @DPU_SSPP_RECT_0, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %116
  %131 = load i32, i32* %12, align 4
  %132 = and i32 %131, -65536
  %133 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %134 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 65535
  %140 = or i32 %132, %139
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = and i32 %141, -65536
  %143 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %144 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 65535
  %150 = or i32 %142, %149
  store i32 %150, i32* %13, align 4
  br label %174

151:                                              ; preds = %116
  %152 = load i32, i32* %12, align 4
  %153 = and i32 %152, 65535
  %154 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %155 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 16
  %161 = and i32 %160, -65536
  %162 = or i32 %153, %161
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %13, align 4
  %164 = and i32 %163, 65535
  %165 = load %struct.dpu_hw_pipe_cfg*, %struct.dpu_hw_pipe_cfg** %5, align 8
  %166 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, %struct.dpu_hw_pipe_cfg* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 %170, 16
  %172 = and i32 %171, -65536
  %173 = or i32 %164, %172
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %151, %130
  br label %175

175:                                              ; preds = %174, %87
  %176 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %176, i32 %179, i32 %180)
  %182 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %182, i32 %185, i32 %186)
  %188 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %189, %190
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %188, i32 %191, i32 %192)
  %194 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %18, align 4
  %197 = add nsw i32 %195, %196
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %194, i32 %197, i32 %198)
  %200 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %201 = load i32, i32* @SSPP_SRC_YSTRIDE0, align 4
  %202 = load i32, i32* %18, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %200, i32 %203, i32 %204)
  %206 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %207 = load i32, i32* @SSPP_SRC_YSTRIDE1, align 4
  %208 = load i32, i32* %18, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %206, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %175, %26
  ret void
}

declare dso_local i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe*, i32, i32*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_5__*) #1

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
