; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table_helper2.c_dal_bios_parser_init_cmd_tbl_helper2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table_helper2.c_dal_bios_parser_init_cmd_tbl_helper2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_table_helper = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_bios_parser_init_cmd_tbl_helper2(%struct.command_table_helper** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.command_table_helper**, align 8
  %5 = alloca i32, align 4
  store %struct.command_table_helper** %0, %struct.command_table_helper*** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %22 [
    i32 134, label %7
    i32 133, label %7
    i32 132, label %7
    i32 140, label %10
    i32 139, label %13
    i32 138, label %16
    i32 137, label %16
    i32 136, label %19
    i32 135, label %19
  ]

7:                                                ; preds = %2, %2, %2
  %8 = call %struct.command_table_helper* (...) @dal_cmd_tbl_helper_dce80_get_table()
  %9 = load %struct.command_table_helper**, %struct.command_table_helper*** %4, align 8
  store %struct.command_table_helper* %8, %struct.command_table_helper** %9, align 8
  store i32 1, i32* %3, align 4
  br label %24

10:                                               ; preds = %2
  %11 = call %struct.command_table_helper* (...) @dal_cmd_tbl_helper_dce110_get_table()
  %12 = load %struct.command_table_helper**, %struct.command_table_helper*** %4, align 8
  store %struct.command_table_helper* %11, %struct.command_table_helper** %12, align 8
  store i32 1, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = call %struct.command_table_helper* (...) @dal_cmd_tbl_helper_dce110_get_table()
  %15 = load %struct.command_table_helper**, %struct.command_table_helper*** %4, align 8
  store %struct.command_table_helper* %14, %struct.command_table_helper** %15, align 8
  store i32 1, i32* %3, align 4
  br label %24

16:                                               ; preds = %2, %2
  %17 = call %struct.command_table_helper* (...) @dal_cmd_tbl_helper_dce112_get_table2()
  %18 = load %struct.command_table_helper**, %struct.command_table_helper*** %4, align 8
  store %struct.command_table_helper* %17, %struct.command_table_helper** %18, align 8
  store i32 1, i32* %3, align 4
  br label %24

19:                                               ; preds = %2, %2
  %20 = call %struct.command_table_helper* (...) @dal_cmd_tbl_helper_dce112_get_table2()
  %21 = load %struct.command_table_helper**, %struct.command_table_helper*** %4, align 8
  store %struct.command_table_helper* %20, %struct.command_table_helper** %21, align 8
  store i32 1, i32* %3, align 4
  br label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %19, %16, %13, %10, %7
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.command_table_helper* @dal_cmd_tbl_helper_dce80_get_table(...) #1

declare dso_local %struct.command_table_helper* @dal_cmd_tbl_helper_dce110_get_table(...) #1

declare dso_local %struct.command_table_helper* @dal_cmd_tbl_helper_dce112_get_table2(...) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
