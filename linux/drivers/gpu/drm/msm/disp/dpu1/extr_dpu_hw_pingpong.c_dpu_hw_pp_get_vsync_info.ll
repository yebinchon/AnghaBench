; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_pingpong.c_dpu_hw_pp_get_vsync_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_pingpong.c_dpu_hw_pp_get_vsync_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_hw_pp_vsync_info = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PP_VSYNC_INIT_VAL = common dso_local global i32 0, align 4
@PP_INT_COUNT_VAL = common dso_local global i32 0, align 4
@PP_LINE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_pingpong*, %struct.dpu_hw_pp_vsync_info*)* @dpu_hw_pp_get_vsync_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_pp_get_vsync_info(%struct.dpu_hw_pingpong* %0, %struct.dpu_hw_pp_vsync_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_hw_pingpong*, align 8
  %5 = alloca %struct.dpu_hw_pp_vsync_info*, align 8
  %6 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %7 = alloca i32, align 4
  store %struct.dpu_hw_pingpong* %0, %struct.dpu_hw_pingpong** %4, align 8
  store %struct.dpu_hw_pp_vsync_info* %1, %struct.dpu_hw_pp_vsync_info** %5, align 8
  %8 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %4, align 8
  %9 = icmp ne %struct.dpu_hw_pingpong* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.dpu_hw_pp_vsync_info*, %struct.dpu_hw_pp_vsync_info** %5, align 8
  %12 = icmp ne %struct.dpu_hw_pp_vsync_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %10
  %17 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %4, align 8
  %18 = getelementptr inbounds %struct.dpu_hw_pingpong, %struct.dpu_hw_pingpong* %17, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %18, %struct.dpu_hw_blk_reg_map** %6, align 8
  %19 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %20 = load i32, i32* @PP_VSYNC_INIT_VAL, align 4
  %21 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 65535
  %24 = load %struct.dpu_hw_pp_vsync_info*, %struct.dpu_hw_pp_vsync_info** %5, align 8
  %25 = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, %struct.dpu_hw_pp_vsync_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %27 = load i32, i32* @PP_INT_COUNT_VAL, align 4
  %28 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, -65536
  %31 = lshr i32 %30, 16
  %32 = load %struct.dpu_hw_pp_vsync_info*, %struct.dpu_hw_pp_vsync_info** %5, align 8
  %33 = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, %struct.dpu_hw_pp_vsync_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 65535
  %36 = load %struct.dpu_hw_pp_vsync_info*, %struct.dpu_hw_pp_vsync_info** %5, align 8
  %37 = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, %struct.dpu_hw_pp_vsync_info* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %39 = load i32, i32* @PP_LINE_COUNT, align 4
  %40 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 65535
  %43 = load %struct.dpu_hw_pp_vsync_info*, %struct.dpu_hw_pp_vsync_info** %5, align 8
  %44 = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, %struct.dpu_hw_pp_vsync_info* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %16, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
