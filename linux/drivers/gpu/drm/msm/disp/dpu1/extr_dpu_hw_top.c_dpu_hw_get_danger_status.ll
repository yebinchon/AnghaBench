; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_top.c_dpu_hw_get_danger_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_top.c_dpu_hw_get_danger_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_mdp = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_danger_safe_status = type { i32, i32* }

@DANGER_STATUS = common dso_local global i32 0, align 4
@SSPP_VIG0 = common dso_local global i64 0, align 8
@SSPP_VIG1 = common dso_local global i64 0, align 8
@SSPP_VIG2 = common dso_local global i64 0, align 8
@SSPP_VIG3 = common dso_local global i64 0, align 8
@SSPP_RGB0 = common dso_local global i64 0, align 8
@SSPP_RGB1 = common dso_local global i64 0, align 8
@SSPP_RGB2 = common dso_local global i64 0, align 8
@SSPP_RGB3 = common dso_local global i64 0, align 8
@SSPP_DMA0 = common dso_local global i64 0, align 8
@SSPP_DMA1 = common dso_local global i64 0, align 8
@SSPP_DMA2 = common dso_local global i64 0, align 8
@SSPP_DMA3 = common dso_local global i64 0, align 8
@SSPP_CURSOR0 = common dso_local global i64 0, align 8
@SSPP_CURSOR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_mdp*, %struct.dpu_danger_safe_status*)* @dpu_hw_get_danger_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_get_danger_status(%struct.dpu_hw_mdp* %0, %struct.dpu_danger_safe_status* %1) #0 {
  %3 = alloca %struct.dpu_hw_mdp*, align 8
  %4 = alloca %struct.dpu_danger_safe_status*, align 8
  %5 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %6 = alloca i32, align 4
  store %struct.dpu_hw_mdp* %0, %struct.dpu_hw_mdp** %3, align 8
  store %struct.dpu_danger_safe_status* %1, %struct.dpu_danger_safe_status** %4, align 8
  %7 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %3, align 8
  %8 = icmp ne %struct.dpu_hw_mdp* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %11 = icmp ne %struct.dpu_danger_safe_status* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %136

13:                                               ; preds = %9
  %14 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %3, align 8
  %15 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %14, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %15, %struct.dpu_hw_blk_reg_map** %5, align 8
  %16 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %17 = load i32, i32* @DANGER_STATUS, align 4
  %18 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 0
  %21 = and i32 %20, 3
  %22 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %23 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 4
  %26 = and i32 %25, 3
  %27 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %28 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @SSPP_VIG0, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 6
  %34 = and i32 %33, 3
  %35 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %36 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @SSPP_VIG1, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 3
  %43 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %44 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @SSPP_VIG2, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 10
  %50 = and i32 %49, 3
  %51 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %52 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @SSPP_VIG3, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 12
  %58 = and i32 %57, 3
  %59 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %60 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @SSPP_RGB0, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, 14
  %66 = and i32 %65, 3
  %67 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %68 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @SSPP_RGB1, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = ashr i32 %72, 16
  %74 = and i32 %73, 3
  %75 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %76 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @SSPP_RGB2, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  %81 = ashr i32 %80, 18
  %82 = and i32 %81, 3
  %83 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %84 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @SSPP_RGB3, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  %89 = ashr i32 %88, 20
  %90 = and i32 %89, 3
  %91 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %92 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @SSPP_DMA0, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %90, i32* %95, align 4
  %96 = load i32, i32* %6, align 4
  %97 = ashr i32 %96, 22
  %98 = and i32 %97, 3
  %99 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %100 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @SSPP_DMA1, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* %6, align 4
  %105 = ashr i32 %104, 28
  %106 = and i32 %105, 3
  %107 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %108 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @SSPP_DMA2, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %106, i32* %111, align 4
  %112 = load i32, i32* %6, align 4
  %113 = ashr i32 %112, 30
  %114 = and i32 %113, 3
  %115 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %116 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @SSPP_DMA3, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %6, align 4
  %121 = ashr i32 %120, 24
  %122 = and i32 %121, 3
  %123 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %124 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @SSPP_CURSOR0, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %122, i32* %127, align 4
  %128 = load i32, i32* %6, align 4
  %129 = ashr i32 %128, 26
  %130 = and i32 %129, 3
  %131 = load %struct.dpu_danger_safe_status*, %struct.dpu_danger_safe_status** %4, align 8
  %132 = getelementptr inbounds %struct.dpu_danger_safe_status, %struct.dpu_danger_safe_status* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @SSPP_CURSOR1, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %130, i32* %135, align 4
  br label %136

136:                                              ; preds = %13, %12
  ret void
}

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
