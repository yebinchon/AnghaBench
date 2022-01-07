; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_program_nbp_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_program_nbp_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { i32 }

@DPG_PIPE_NB_PSTATE_CHANGE_CONTROL = common dso_local global i32 0, align 4
@DPG_WATERMARK_MASK_CONTROL = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_WATERMARK_MASK = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_ENABLE = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_URGENT_DURING_REQUEST = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_WATERMARK = common dso_local global i32 0, align 4
@DPG_PIPE_LOW_POWER_CONTROL = common dso_local global i32 0, align 4
@PSTATE_CHANGE_WATERMARK_MASK = common dso_local global i32 0, align 4
@PSTATE_CHANGE_ENABLE = common dso_local global i32 0, align 4
@PSTATE_CHANGE_URGENT_DURING_REQUEST = common dso_local global i32 0, align 4
@PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST = common dso_local global i32 0, align 4
@PSTATE_CHANGE_WATERMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, i32, i32)* @program_nbp_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_nbp_watermark(%struct.dce_mem_input* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dce_mem_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @DPG_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  %8 = call i64 @REG(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load i32, i32* @DPG_WATERMARK_MASK_CONTROL, align 4
  %12 = load i32, i32* @NB_PSTATE_CHANGE_WATERMARK_MASK, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @REG_UPDATE(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @DPG_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  %16 = load i32, i32* @NB_PSTATE_CHANGE_ENABLE, align 4
  %17 = load i32, i32* @NB_PSTATE_CHANGE_URGENT_DURING_REQUEST, align 4
  %18 = load i32, i32* @NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST, align 4
  %19 = call i32 @REG_UPDATE_3(i32 %15, i32 %16, i32 1, i32 %17, i32 1, i32 %18, i32 1)
  %20 = load i32, i32* @DPG_PIPE_NB_PSTATE_CHANGE_CONTROL, align 4
  %21 = load i32, i32* @NB_PSTATE_CHANGE_WATERMARK, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %10, %3
  %25 = load i32, i32* @DPG_PIPE_LOW_POWER_CONTROL, align 4
  %26 = call i64 @REG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32, i32* @DPG_WATERMARK_MASK_CONTROL, align 4
  %30 = load i32, i32* @PSTATE_CHANGE_WATERMARK_MASK, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @REG_UPDATE(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @DPG_PIPE_LOW_POWER_CONTROL, align 4
  %34 = load i32, i32* @PSTATE_CHANGE_ENABLE, align 4
  %35 = load i32, i32* @PSTATE_CHANGE_URGENT_DURING_REQUEST, align 4
  %36 = load i32, i32* @PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST, align 4
  %37 = call i32 @REG_UPDATE_3(i32 %33, i32 %34, i32 1, i32 %35, i32 1, i32 %36, i32 1)
  %38 = load i32, i32* @DPG_PIPE_LOW_POWER_CONTROL, align 4
  %39 = load i32, i32* @PSTATE_CHANGE_WATERMARK, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @REG_UPDATE(i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %28, %24
  ret void
}

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
