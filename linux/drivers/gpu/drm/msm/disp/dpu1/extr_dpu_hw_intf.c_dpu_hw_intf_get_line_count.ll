; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_intf.c_dpu_hw_intf_get_line_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_intf.c_dpu_hw_intf_get_line_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_intf = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@INTF_LINE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_intf*)* @dpu_hw_intf_get_line_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_intf_get_line_count(%struct.dpu_hw_intf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_hw_intf*, align 8
  %4 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  store %struct.dpu_hw_intf* %0, %struct.dpu_hw_intf** %3, align 8
  %5 = load %struct.dpu_hw_intf*, %struct.dpu_hw_intf** %3, align 8
  %6 = icmp ne %struct.dpu_hw_intf* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

8:                                                ; preds = %1
  %9 = load %struct.dpu_hw_intf*, %struct.dpu_hw_intf** %3, align 8
  %10 = getelementptr inbounds %struct.dpu_hw_intf, %struct.dpu_hw_intf* %9, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %10, %struct.dpu_hw_blk_reg_map** %4, align 8
  %11 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %4, align 8
  %12 = load i32, i32* @INTF_LINE_COUNT, align 4
  %13 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %11, i32 %12)
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %8, %7
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
