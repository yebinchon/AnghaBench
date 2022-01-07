; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table_helper2.c_dal_cmd_table_helper_encoder_mode_bp_to_atom2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table_helper2.c_dal_cmd_table_helper_encoder_mode_bp_to_atom2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATOM_ENCODER_MODE_DVI = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_LVDS = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_DP_AUDIO = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_DP = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_CRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_cmd_table_helper_encoder_mode_bp_to_atom2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %22 [
    i32 133, label %7
    i32 134, label %7
    i32 131, label %9
    i32 130, label %11
    i32 132, label %13
    i32 135, label %13
    i32 136, label %13
    i32 128, label %13
    i32 129, label %20
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* @ATOM_ENCODER_MODE_DVI, align 4
  store i32 %8, i32* %3, align 4
  br label %24

9:                                                ; preds = %2
  %10 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  store i32 %10, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i32, i32* @ATOM_ENCODER_MODE_LVDS, align 4
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %2, %2, %2, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @ATOM_ENCODER_MODE_DP_AUDIO, align 4
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %13
  %19 = load i32, i32* @ATOM_ENCODER_MODE_DP, align 4
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @ATOM_ENCODER_MODE_CRT, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @ATOM_ENCODER_MODE_CRT, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %20, %18, %16, %11, %9, %7
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
