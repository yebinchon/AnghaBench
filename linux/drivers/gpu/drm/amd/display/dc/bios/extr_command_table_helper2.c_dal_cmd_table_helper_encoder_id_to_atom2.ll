; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table_helper2.c_dal_cmd_table_helper_encoder_id_to_atom2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table_helper2.c_dal_cmd_table_helper_encoder_id_to_atom2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENCODER_OBJECT_ID_INTERNAL_LVDS = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_TMDS1 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_TMDS2 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_DAC1 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_DAC2 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_LVTM1 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_HDMI_INTERNAL = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_TRAVIS = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NUTMEG = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_MVPU_FPGA = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_DDI = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_UNIPHY = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_LVTMA = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_UNIPHY1 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_UNIPHY2 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_UNIPHY3 = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_VCE = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_cmd_table_helper_encoder_id_to_atom2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %49 [
    i32 138, label %5
    i32 136, label %7
    i32 135, label %9
    i32 146, label %11
    i32 145, label %13
    i32 137, label %15
    i32 143, label %17
    i32 147, label %19
    i32 148, label %21
    i32 139, label %23
    i32 142, label %25
    i32 141, label %27
    i32 149, label %29
    i32 144, label %31
    i32 134, label %33
    i32 140, label %35
    i32 133, label %37
    i32 132, label %39
    i32 131, label %41
    i32 129, label %43
    i32 130, label %45
    i32 128, label %47
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_LVDS, align 4
  store i32 %6, i32* %2, align 4
  br label %52

7:                                                ; preds = %1
  %8 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_TMDS1, align 4
  store i32 %8, i32* %2, align 4
  br label %52

9:                                                ; preds = %1
  %10 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_TMDS2, align 4
  store i32 %10, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_DAC1, align 4
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_DAC2, align 4
  store i32 %14, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_LVTM1, align 4
  store i32 %16, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load i32, i32* @ENCODER_OBJECT_ID_HDMI_INTERNAL, align 4
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %1
  %20 = load i32, i32* @ENCODER_OBJECT_ID_TRAVIS, align 4
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %1
  %22 = load i32, i32* @ENCODER_OBJECT_ID_NUTMEG, align 4
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %1
  %24 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1, align 4
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %1
  %26 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1, align 4
  store i32 %26, i32* %2, align 4
  br label %52

27:                                               ; preds = %1
  %28 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2, align 4
  store i32 %28, i32* %2, align 4
  br label %52

29:                                               ; preds = %1
  %30 = load i32, i32* @ENCODER_OBJECT_ID_MVPU_FPGA, align 4
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %1
  %32 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_DDI, align 4
  store i32 %32, i32* %2, align 4
  br label %52

33:                                               ; preds = %1
  %34 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_UNIPHY, align 4
  store i32 %34, i32* %2, align 4
  br label %52

35:                                               ; preds = %1
  %36 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_LVTMA, align 4
  store i32 %36, i32* %2, align 4
  br label %52

37:                                               ; preds = %1
  %38 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_UNIPHY1, align 4
  store i32 %38, i32* %2, align 4
  br label %52

39:                                               ; preds = %1
  %40 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_UNIPHY2, align 4
  store i32 %40, i32* %2, align 4
  br label %52

41:                                               ; preds = %1
  %42 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_UNIPHY3, align 4
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %1
  %44 = load i32, i32* @ENCODER_OBJECT_ID_INTERNAL_VCE, align 4
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %1
  %46 = load i32, i32* @ENCODER_OBJECT_ID_NONE, align 4
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %1
  %48 = load i32, i32* @ENCODER_OBJECT_ID_NONE, align 4
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %1
  %50 = call i32 (...) @BREAK_TO_DEBUGGER()
  %51 = load i32, i32* @ENCODER_OBJECT_ID_NONE, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
