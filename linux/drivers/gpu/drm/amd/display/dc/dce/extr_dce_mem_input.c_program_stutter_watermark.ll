; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_program_stutter_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_program_stutter_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { i32 }

@DPG_WATERMARK_MASK_CONTROL = common dso_local global i32 0, align 4
@STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK = common dso_local global i32 0, align 4
@DPG_PIPE_STUTTER_CONTROL2 = common dso_local global i32 0, align 4
@STUTTER_EXIT_SELF_REFRESH_WATERMARK = common dso_local global i32 0, align 4
@DPG_PIPE_STUTTER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, i32, i32)* @program_stutter_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_stutter_watermark(%struct.dce_mem_input* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dce_mem_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @DPG_WATERMARK_MASK_CONTROL, align 4
  %8 = load i32, i32* @STUTTER_EXIT_SELF_REFRESH_WATERMARK_MASK, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @REG_UPDATE(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL2, align 4
  %12 = call i64 @REG(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL2, align 4
  %16 = load i32, i32* @STUTTER_EXIT_SELF_REFRESH_WATERMARK, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @REG_UPDATE(i32 %15, i32 %16, i32 %17)
  br label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL, align 4
  %21 = load i32, i32* @STUTTER_EXIT_SELF_REFRESH_WATERMARK, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i64 @REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
