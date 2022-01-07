; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_intf.c_dpu_hw_intf_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_intf.c_dpu_hw_intf_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_intf = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.intf_status = type { i8*, i8*, i8* }

@INTF_TIMING_ENGINE_EN = common dso_local global i32 0, align 4
@INTF_FRAME_COUNT = common dso_local global i32 0, align 4
@INTF_LINE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_intf*, %struct.intf_status*)* @dpu_hw_intf_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_intf_get_status(%struct.dpu_hw_intf* %0, %struct.intf_status* %1) #0 {
  %3 = alloca %struct.dpu_hw_intf*, align 8
  %4 = alloca %struct.intf_status*, align 8
  %5 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  store %struct.dpu_hw_intf* %0, %struct.dpu_hw_intf** %3, align 8
  store %struct.intf_status* %1, %struct.intf_status** %4, align 8
  %6 = load %struct.dpu_hw_intf*, %struct.dpu_hw_intf** %3, align 8
  %7 = getelementptr inbounds %struct.dpu_hw_intf, %struct.dpu_hw_intf* %6, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %7, %struct.dpu_hw_blk_reg_map** %5, align 8
  %8 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %9 = load i32, i32* @INTF_TIMING_ENGINE_EN, align 4
  %10 = call i8* @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %8, i32 %9)
  %11 = load %struct.intf_status*, %struct.intf_status** %4, align 8
  %12 = getelementptr inbounds %struct.intf_status, %struct.intf_status* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load %struct.intf_status*, %struct.intf_status** %4, align 8
  %14 = getelementptr inbounds %struct.intf_status, %struct.intf_status* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %19 = load i32, i32* @INTF_FRAME_COUNT, align 4
  %20 = call i8* @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %18, i32 %19)
  %21 = load %struct.intf_status*, %struct.intf_status** %4, align 8
  %22 = getelementptr inbounds %struct.intf_status, %struct.intf_status* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %24 = load i32, i32* @INTF_LINE_COUNT, align 4
  %25 = call i8* @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %23, i32 %24)
  %26 = load %struct.intf_status*, %struct.intf_status** %4, align 8
  %27 = getelementptr inbounds %struct.intf_status, %struct.intf_status* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.intf_status*, %struct.intf_status** %4, align 8
  %30 = getelementptr inbounds %struct.intf_status, %struct.intf_status* %29, i32 0, i32 1
  store i8* null, i8** %30, align 8
  %31 = load %struct.intf_status*, %struct.intf_status** %4, align 8
  %32 = getelementptr inbounds %struct.intf_status, %struct.intf_status* %31, i32 0, i32 0
  store i8* null, i8** %32, align 8
  br label %33

33:                                               ; preds = %28, %17
  ret void
}

declare dso_local i8* @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
