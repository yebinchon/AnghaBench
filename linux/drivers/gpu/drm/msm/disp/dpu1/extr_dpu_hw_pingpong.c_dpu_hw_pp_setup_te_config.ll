; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_pingpong.c_dpu_hw_pp_setup_te_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_pingpong.c_dpu_hw_pp_setup_te_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_hw_tear_check = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PP_SYNC_CONFIG_VSYNC = common dso_local global i32 0, align 4
@PP_SYNC_CONFIG_HEIGHT = common dso_local global i32 0, align 4
@PP_VSYNC_INIT_VAL = common dso_local global i32 0, align 4
@PP_RD_PTR_IRQ = common dso_local global i32 0, align 4
@PP_START_POS = common dso_local global i32 0, align 4
@PP_SYNC_THRESH = common dso_local global i32 0, align 4
@PP_SYNC_WRCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_pingpong*, %struct.dpu_hw_tear_check*)* @dpu_hw_pp_setup_te_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_pp_setup_te_config(%struct.dpu_hw_pingpong* %0, %struct.dpu_hw_tear_check* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_hw_pingpong*, align 8
  %5 = alloca %struct.dpu_hw_tear_check*, align 8
  %6 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %7 = alloca i32, align 4
  store %struct.dpu_hw_pingpong* %0, %struct.dpu_hw_pingpong** %4, align 8
  store %struct.dpu_hw_tear_check* %1, %struct.dpu_hw_tear_check** %5, align 8
  %8 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %4, align 8
  %9 = icmp ne %struct.dpu_hw_pingpong* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.dpu_hw_tear_check*, %struct.dpu_hw_tear_check** %5, align 8
  %12 = icmp ne %struct.dpu_hw_tear_check* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %84

16:                                               ; preds = %10
  %17 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %4, align 8
  %18 = getelementptr inbounds %struct.dpu_hw_pingpong, %struct.dpu_hw_pingpong* %17, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %18, %struct.dpu_hw_blk_reg_map** %6, align 8
  %19 = call i32 @BIT(i32 19)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dpu_hw_tear_check*, %struct.dpu_hw_tear_check** %5, align 8
  %21 = getelementptr inbounds %struct.dpu_hw_tear_check, %struct.dpu_hw_tear_check* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = call i32 @BIT(i32 20)
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %16
  %29 = load %struct.dpu_hw_tear_check*, %struct.dpu_hw_tear_check** %5, align 8
  %30 = getelementptr inbounds %struct.dpu_hw_tear_check, %struct.dpu_hw_tear_check* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %35 = load i32, i32* @PP_SYNC_CONFIG_VSYNC, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %34, i32 %35, i32 %36)
  %38 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %39 = load i32, i32* @PP_SYNC_CONFIG_HEIGHT, align 4
  %40 = load %struct.dpu_hw_tear_check*, %struct.dpu_hw_tear_check** %5, align 8
  %41 = getelementptr inbounds %struct.dpu_hw_tear_check, %struct.dpu_hw_tear_check* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %38, i32 %39, i32 %42)
  %44 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %45 = load i32, i32* @PP_VSYNC_INIT_VAL, align 4
  %46 = load %struct.dpu_hw_tear_check*, %struct.dpu_hw_tear_check** %5, align 8
  %47 = getelementptr inbounds %struct.dpu_hw_tear_check, %struct.dpu_hw_tear_check* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %44, i32 %45, i32 %48)
  %50 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %51 = load i32, i32* @PP_RD_PTR_IRQ, align 4
  %52 = load %struct.dpu_hw_tear_check*, %struct.dpu_hw_tear_check** %5, align 8
  %53 = getelementptr inbounds %struct.dpu_hw_tear_check, %struct.dpu_hw_tear_check* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %50, i32 %51, i32 %54)
  %56 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %57 = load i32, i32* @PP_START_POS, align 4
  %58 = load %struct.dpu_hw_tear_check*, %struct.dpu_hw_tear_check** %5, align 8
  %59 = getelementptr inbounds %struct.dpu_hw_tear_check, %struct.dpu_hw_tear_check* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %56, i32 %57, i32 %60)
  %62 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %63 = load i32, i32* @PP_SYNC_THRESH, align 4
  %64 = load %struct.dpu_hw_tear_check*, %struct.dpu_hw_tear_check** %5, align 8
  %65 = getelementptr inbounds %struct.dpu_hw_tear_check, %struct.dpu_hw_tear_check* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 16
  %68 = load %struct.dpu_hw_tear_check*, %struct.dpu_hw_tear_check** %5, align 8
  %69 = getelementptr inbounds %struct.dpu_hw_tear_check, %struct.dpu_hw_tear_check* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %67, %70
  %72 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %62, i32 %63, i32 %71)
  %73 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %74 = load i32, i32* @PP_SYNC_WRCOUNT, align 4
  %75 = load %struct.dpu_hw_tear_check*, %struct.dpu_hw_tear_check** %5, align 8
  %76 = getelementptr inbounds %struct.dpu_hw_tear_check, %struct.dpu_hw_tear_check* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.dpu_hw_tear_check*, %struct.dpu_hw_tear_check** %5, align 8
  %79 = getelementptr inbounds %struct.dpu_hw_tear_check, %struct.dpu_hw_tear_check* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %77, %80
  %82 = add nsw i32 %81, 1
  %83 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %73, i32 %74, i32 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %28, %13
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
