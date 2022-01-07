; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_util.c__dpu_hw_setup_scaler3_de.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_util.c__dpu_hw_setup_scaler3_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_hw_scaler3_de_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32 }

@QSEED3_DE_SHARPEN = common dso_local global i32 0, align 4
@QSEED3_DE_SHARPEN_CTL = common dso_local global i32 0, align 4
@QSEED3_DE_SHAPE_CTL = common dso_local global i32 0, align 4
@QSEED3_DE_THRESHOLD = common dso_local global i32 0, align 4
@QSEED3_DE_ADJUST_DATA_0 = common dso_local global i32 0, align 4
@QSEED3_DE_ADJUST_DATA_1 = common dso_local global i32 0, align 4
@QSEED3_DE_ADJUST_DATA_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_scaler3_de_cfg*, i32)* @_dpu_hw_setup_scaler3_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_hw_setup_scaler3_de(%struct.dpu_hw_blk_reg_map* %0, %struct.dpu_hw_scaler3_de_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %5 = alloca %struct.dpu_hw_scaler3_de_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dpu_hw_blk_reg_map* %0, %struct.dpu_hw_blk_reg_map** %4, align 8
  store %struct.dpu_hw_scaler3_de_cfg* %1, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %15 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %175

19:                                               ; preds = %3
  %20 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 511
  %24 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 511
  %28 = shl i32 %27, 16
  %29 = or i32 %23, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 15
  %34 = shl i32 %33, 9
  %35 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 7
  %39 = shl i32 %38, 13
  %40 = or i32 %34, %39
  %41 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 7
  %45 = shl i32 %44, 16
  %46 = or i32 %40, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 255
  %51 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %52 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 1023
  %55 = shl i32 %54, 16
  %56 = or i32 %50, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %58 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 1023
  %61 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %62 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 1023
  %65 = shl i32 %64, 16
  %66 = or i32 %60, %65
  store i32 %66, i32* %10, align 4
  %67 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %68 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %67, i32 0, i32 9
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 1023
  %73 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %74 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %73, i32 0, i32 9
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 1023
  %79 = shl i32 %78, 10
  %80 = or i32 %72, %79
  %81 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %82 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %81, i32 0, i32 9
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 1023
  %87 = shl i32 %86, 20
  %88 = or i32 %80, %87
  store i32 %88, i32* %11, align 4
  %89 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %90 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %89, i32 0, i32 10
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 1023
  %95 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %96 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %95, i32 0, i32 10
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 1023
  %101 = shl i32 %100, 10
  %102 = or i32 %94, %101
  %103 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %104 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %103, i32 0, i32 10
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 1023
  %109 = shl i32 %108, 20
  %110 = or i32 %102, %109
  store i32 %110, i32* %12, align 4
  %111 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %112 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %111, i32 0, i32 11
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 1023
  %117 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %118 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %117, i32 0, i32 11
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 1023
  %123 = shl i32 %122, 10
  %124 = or i32 %116, %123
  %125 = load %struct.dpu_hw_scaler3_de_cfg*, %struct.dpu_hw_scaler3_de_cfg** %5, align 8
  %126 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, %struct.dpu_hw_scaler3_de_cfg* %125, i32 0, i32 11
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 1023
  %131 = shl i32 %130, 20
  %132 = or i32 %124, %131
  store i32 %132, i32* %13, align 4
  %133 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %134 = load i32, i32* @QSEED3_DE_SHARPEN, align 4
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %133, i32 %136, i32 %137)
  %139 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %140 = load i32, i32* @QSEED3_DE_SHARPEN_CTL, align 4
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %139, i32 %142, i32 %143)
  %145 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %146 = load i32, i32* @QSEED3_DE_SHAPE_CTL, align 4
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %145, i32 %148, i32 %149)
  %151 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %152 = load i32, i32* @QSEED3_DE_THRESHOLD, align 4
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %151, i32 %154, i32 %155)
  %157 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %158 = load i32, i32* @QSEED3_DE_ADJUST_DATA_0, align 4
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %157, i32 %160, i32 %161)
  %163 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %164 = load i32, i32* @QSEED3_DE_ADJUST_DATA_1, align 4
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %163, i32 %166, i32 %167)
  %169 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %170 = load i32, i32* @QSEED3_DE_ADJUST_DATA_2, align 4
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %170, %171
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %169, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %19, %18
  ret void
}

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
