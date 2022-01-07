; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_pingpong.c_dpu_hw_pp_get_line_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_pingpong.c_dpu_hw_pp_get_line_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@PP_VSYNC_INIT_VAL = common dso_local global i32 0, align 4
@PP_SYNC_CONFIG_HEIGHT = common dso_local global i32 0, align 4
@PP_INT_COUNT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_pingpong*)* @dpu_hw_pp_get_line_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_pp_get_line_count(%struct.dpu_hw_pingpong* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_hw_pingpong*, align 8
  %4 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dpu_hw_pingpong* %0, %struct.dpu_hw_pingpong** %3, align 8
  %8 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %3, align 8
  %9 = getelementptr inbounds %struct.dpu_hw_pingpong, %struct.dpu_hw_pingpong* %8, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %9, %struct.dpu_hw_blk_reg_map** %4, align 8
  store i32 65535, i32* %7, align 4
  %10 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %3, align 8
  %11 = icmp ne %struct.dpu_hw_pingpong* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %3, align 8
  %15 = getelementptr inbounds %struct.dpu_hw_pingpong, %struct.dpu_hw_pingpong* %14, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %15, %struct.dpu_hw_blk_reg_map** %4, align 8
  %16 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %17 = load i32, i32* @PP_VSYNC_INIT_VAL, align 4
  %18 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %16, i32 %17)
  %19 = and i32 %18, 65535
  store i32 %19, i32* %6, align 4
  %20 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %21 = load i32, i32* @PP_SYNC_CONFIG_HEIGHT, align 4
  %22 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %20, i32 %21)
  %23 = and i32 %22, 65535
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %13
  %30 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %31 = load i32, i32* @PP_INT_COUNT_VAL, align 4
  %32 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %30, i32 %31)
  %33 = and i32 %32, 65535
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 65535, %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %46

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %27, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
