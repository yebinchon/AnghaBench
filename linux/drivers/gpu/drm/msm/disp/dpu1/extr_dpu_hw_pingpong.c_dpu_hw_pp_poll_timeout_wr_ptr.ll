; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_pingpong.c_dpu_hw_pp_poll_timeout_wr_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_pingpong.c_dpu_hw_pp_poll_timeout_wr_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PP_LINE_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_pingpong*, i32)* @dpu_hw_pp_poll_timeout_wr_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_pp_poll_timeout_wr_ptr(%struct.dpu_hw_pingpong* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_hw_pingpong*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dpu_hw_pingpong* %0, %struct.dpu_hw_pingpong** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %4, align 8
  %10 = icmp ne %struct.dpu_hw_pingpong* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.dpu_hw_pingpong*, %struct.dpu_hw_pingpong** %4, align 8
  %16 = getelementptr inbounds %struct.dpu_hw_pingpong, %struct.dpu_hw_pingpong* %15, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %16, %struct.dpu_hw_blk_reg_map** %6, align 8
  %17 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %18 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, %struct.dpu_hw_blk_reg_map* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %6, align 8
  %21 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, %struct.dpu_hw_blk_reg_map* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load i64, i64* @PP_LINE_COUNT, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 65535
  %29 = icmp sge i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @readl_poll_timeout(i64 %25, i32 %26, i32 %30, i32 10, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %14, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
