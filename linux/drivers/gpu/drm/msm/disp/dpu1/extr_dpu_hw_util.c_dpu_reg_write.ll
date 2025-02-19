; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_util.c_dpu_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_util.c_dpu_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_blk_reg_map = type { i32, i64, i64 }

@dpu_hw_util_log_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"[%s:0x%X] <= 0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_reg_write(%struct.dpu_hw_blk_reg_map* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.dpu_hw_blk_reg_map* %0, %struct.dpu_hw_blk_reg_map** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %10 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, %struct.dpu_hw_blk_reg_map* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @dpu_hw_util_log_mask, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %18 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, %struct.dpu_hw_blk_reg_map* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @DPU_DEBUG_DRIVER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %16, i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %15, %4
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %27 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, %struct.dpu_hw_blk_reg_map* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %30 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, %struct.dpu_hw_blk_reg_map* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel_relaxed(i64 %25, i64 %34)
  ret void
}

declare dso_local i32 @DPU_DEBUG_DRIVER(i8*, i8*, i64, i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
