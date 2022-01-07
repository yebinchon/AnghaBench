; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_pe_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_sspp.c_dpu_hw_sspp_setup_pe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pipe = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_hw_pixel_ext = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@DPU_SSPP_SRC = common dso_local global i32 0, align 4
@DPU_MAX_PLANES = common dso_local global i32 0, align 4
@SSPP_SW_PIX_EXT_C0_LR = common dso_local global i32 0, align 4
@SSPP_SW_PIX_EXT_C0_TB = common dso_local global i32 0, align 4
@SSPP_SW_PIX_EXT_C0_REQ_PIXELS = common dso_local global i32 0, align 4
@SSPP_SW_PIX_EXT_C1C2_LR = common dso_local global i32 0, align 4
@SSPP_SW_PIX_EXT_C1C2_TB = common dso_local global i32 0, align 4
@SSPP_SW_PIX_EXT_C1C2_REQ_PIXELS = common dso_local global i32 0, align 4
@SSPP_SW_PIX_EXT_C3_LR = common dso_local global i32 0, align 4
@SSPP_SW_PIX_EXT_C3_TB = common dso_local global i32 0, align 4
@SSPP_SW_PIX_EXT_C3_REQ_PIXELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pipe*, %struct.dpu_hw_pixel_ext*)* @dpu_hw_sspp_setup_pe_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_sspp_setup_pe_config(%struct.dpu_hw_pipe* %0, %struct.dpu_hw_pixel_ext* %1) #0 {
  %3 = alloca %struct.dpu_hw_pipe*, align 8
  %4 = alloca %struct.dpu_hw_pixel_ext*, align 8
  %5 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dpu_hw_pipe* %0, %struct.dpu_hw_pipe** %3, align 8
  store %struct.dpu_hw_pixel_ext* %1, %struct.dpu_hw_pixel_ext** %4, align 8
  store i32 255, i32* %10, align 4
  store i32 65535, i32* %11, align 4
  %13 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %14 = load i32, i32* @DPU_SSPP_SRC, align 4
  %15 = call i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe* %13, i32 %14, i32* %12)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %19 = icmp ne %struct.dpu_hw_pixel_ext* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %2
  br label %235

21:                                               ; preds = %17
  %22 = load %struct.dpu_hw_pipe*, %struct.dpu_hw_pipe** %3, align 8
  %23 = getelementptr inbounds %struct.dpu_hw_pipe, %struct.dpu_hw_pipe* %22, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %23, %struct.dpu_hw_blk_reg_map** %5, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %168, %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DPU_MAX_PLANES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %171

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %168

32:                                               ; preds = %28
  %33 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %34 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 255
  %41 = shl i32 %40, 24
  %42 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %43 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 255
  %50 = shl i32 %49, 16
  %51 = or i32 %41, %50
  %52 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %53 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 255
  %60 = shl i32 %59, 8
  %61 = or i32 %51, %60
  %62 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %63 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 255
  %70 = or i32 %61, %69
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %75 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 255
  %82 = shl i32 %81, 24
  %83 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %84 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 255
  %91 = shl i32 %90, 16
  %92 = or i32 %82, %91
  %93 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %94 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 255
  %101 = shl i32 %100, 8
  %102 = or i32 %92, %101
  %103 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %104 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %103, i32 0, i32 7
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 255
  %111 = or i32 %102, %110
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %113
  store i32 %111, i32* %114, align 4
  %115 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %116 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %115, i32 0, i32 8
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %123 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %122, i32 0, i32 9
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %121, %128
  %130 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %131 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %130, i32 0, i32 10
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %129, %136
  %138 = and i32 %137, 65535
  %139 = shl i32 %138, 16
  %140 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %141 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %140, i32 0, i32 11
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %148 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %147, i32 0, i32 12
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %146, %153
  %155 = load %struct.dpu_hw_pixel_ext*, %struct.dpu_hw_pixel_ext** %4, align 8
  %156 = getelementptr inbounds %struct.dpu_hw_pixel_ext, %struct.dpu_hw_pixel_ext* %155, i32 0, i32 13
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %154, %161
  %163 = and i32 %162, 65535
  %164 = or i32 %139, %163
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %166
  store i32 %164, i32* %167, align 4
  br label %168

168:                                              ; preds = %32, %31
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %24

171:                                              ; preds = %24
  %172 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %173 = load i32, i32* @SSPP_SW_PIX_EXT_C0_LR, align 4
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %173, %174
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %177 = load i32, i32* %176, align 16
  %178 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %172, i32 %175, i32 %177)
  %179 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %180 = load i32, i32* @SSPP_SW_PIX_EXT_C0_TB, align 4
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %180, %181
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %184 = load i32, i32* %183, align 16
  %185 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %179, i32 %182, i32 %184)
  %186 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %187 = load i32, i32* @SSPP_SW_PIX_EXT_C0_REQ_PIXELS, align 4
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %187, %188
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %191 = load i32, i32* %190, align 16
  %192 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %186, i32 %189, i32 %191)
  %193 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %194 = load i32, i32* @SSPP_SW_PIX_EXT_C1C2_LR, align 4
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %194, %195
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %193, i32 %196, i32 %198)
  %200 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %201 = load i32, i32* @SSPP_SW_PIX_EXT_C1C2_TB, align 4
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %201, %202
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %200, i32 %203, i32 %205)
  %207 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %208 = load i32, i32* @SSPP_SW_PIX_EXT_C1C2_REQ_PIXELS, align 4
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %208, %209
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %207, i32 %210, i32 %212)
  %214 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %215 = load i32, i32* @SSPP_SW_PIX_EXT_C3_LR, align 4
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %215, %216
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %214, i32 %217, i32 %219)
  %221 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %222 = load i32, i32* @SSPP_SW_PIX_EXT_C3_TB, align 4
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %222, %223
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %221, i32 %224, i32 %226)
  %228 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %229 = load i32, i32* @SSPP_SW_PIX_EXT_C3_REQ_PIXELS, align 4
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %229, %230
  %232 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %228, i32 %231, i32 %233)
  br label %235

235:                                              ; preds = %171, %20
  ret void
}

declare dso_local i64 @_sspp_subblk_offset(%struct.dpu_hw_pipe*, i32, i32*) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
