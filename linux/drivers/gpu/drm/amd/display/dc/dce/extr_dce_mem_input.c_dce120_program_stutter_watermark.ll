; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce120_program_stutter_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce120_program_stutter_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { i32 }

@DPG_WATERMARK_MASK_CONTROL = common dso_local global i32 0, align 4
@STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK = common dso_local global i32 0, align 4
@DPG_PIPE_STUTTER_CONTROL2 = common dso_local global i32 0, align 4
@STUTTER_EXIT_SELF_REFRESH_WATERMARK = common dso_local global i32 0, align 4
@STUTTER_ENTER_SELF_REFRESH_WATERMARK = common dso_local global i32 0, align 4
@DPG_PIPE_STUTTER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, i32, i32, i32)* @dce120_program_stutter_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce120_program_stutter_watermark(%struct.dce_mem_input* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dce_mem_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @DPG_WATERMARK_MASK_CONTROL, align 4
  %10 = load i32, i32* @STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @REG_UPDATE(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL2, align 4
  %14 = call i64 @REG(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL2, align 4
  %18 = load i32, i32* @STUTTER_EXIT_SELF_REFRESH_WATERMARK, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @STUTTER_ENTER_SELF_REFRESH_WATERMARK, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @REG_UPDATE_2(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  br label %30

23:                                               ; preds = %4
  %24 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL, align 4
  %25 = load i32, i32* @STUTTER_EXIT_SELF_REFRESH_WATERMARK, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @STUTTER_ENTER_SELF_REFRESH_WATERMARK, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @REG_UPDATE_2(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
