; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table_helper.c_dal_cmd_table_helper_controller_id_to_atom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table_helper.c_dal_cmd_table_helper_controller_id_to_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATOM_CRTC1 = common dso_local global i32 0, align 4
@ATOM_CRTC2 = common dso_local global i32 0, align 4
@ATOM_CRTC3 = common dso_local global i32 0, align 4
@ATOM_CRTC4 = common dso_local global i32 0, align 4
@ATOM_CRTC5 = common dso_local global i32 0, align 4
@ATOM_CRTC6 = common dso_local global i32 0, align 4
@ATOM_UNDERLAY_PIPE0 = common dso_local global i32 0, align 4
@ATOM_CRTC_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_cmd_table_helper_controller_id_to_atom(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %3, align 4
  br label %38

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %36 [
    i32 135, label %12
    i32 134, label %15
    i32 133, label %18
    i32 132, label %21
    i32 131, label %24
    i32 130, label %27
    i32 128, label %30
    i32 129, label %33
  ]

12:                                               ; preds = %10
  %13 = load i32, i32* @ATOM_CRTC1, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  store i32 1, i32* %3, align 4
  br label %38

15:                                               ; preds = %10
  %16 = load i32, i32* @ATOM_CRTC2, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  store i32 1, i32* %3, align 4
  br label %38

18:                                               ; preds = %10
  %19 = load i32, i32* @ATOM_CRTC3, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  store i32 1, i32* %3, align 4
  br label %38

21:                                               ; preds = %10
  %22 = load i32, i32* @ATOM_CRTC4, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  store i32 1, i32* %3, align 4
  br label %38

24:                                               ; preds = %10
  %25 = load i32, i32* @ATOM_CRTC5, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  store i32 1, i32* %3, align 4
  br label %38

27:                                               ; preds = %10
  %28 = load i32, i32* @ATOM_CRTC6, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 1, i32* %3, align 4
  br label %38

30:                                               ; preds = %10
  %31 = load i32, i32* @ATOM_UNDERLAY_PIPE0, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  store i32 1, i32* %3, align 4
  br label %38

33:                                               ; preds = %10
  %34 = load i32, i32* @ATOM_CRTC_INVALID, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  store i32 1, i32* %3, align 4
  br label %38

36:                                               ; preds = %10
  %37 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %33, %30, %27, %24, %21, %18, %15, %12, %8
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
