; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_display_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_display_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { %struct.intel_vgpu* }
%struct.intel_vgpu = type { i32 }
%struct.mi_display_flip_command_info = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"fail to decode MI display flip command\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid MI display flip command\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"fail to update plane mmio\0A\00", align 1
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_mi_display_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_mi_display_flip(%struct.parser_exec_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parser_exec_state*, align 8
  %4 = alloca %struct.mi_display_flip_command_info, align 4
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %3, align 8
  %10 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %11 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %10, i32 0, i32 0
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %11, align 8
  store %struct.intel_vgpu* %12, %struct.intel_vgpu** %5, align 8
  %13 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %14 = call i32 @cmd_length(%struct.parser_exec_state* %13)
  store i32 %14, i32* %8, align 4
  %15 = call i32 @CMD_LEN(i32 1)
  store i32 %15, i32* %9, align 4
  %16 = call i32 @DWORD_FIELD(i32 2, i32 1, i32 0)
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %23 = call i32 @cmd_length(%struct.parser_exec_state* %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @gvt_check_valid_cmd_length(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %70

30:                                               ; preds = %21
  %31 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %32 = call i32 @decode_mi_display_flip(%struct.parser_exec_state* %31, %struct.mi_display_flip_command_info* %4)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %70

38:                                               ; preds = %30
  %39 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %40 = call i32 @check_mi_display_flip(%struct.parser_exec_state* %39, %struct.mi_display_flip_command_info* %4)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %70

46:                                               ; preds = %38
  %47 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %48 = call i32 @update_plane_mmio_from_mi_display_flip(%struct.parser_exec_state* %47, %struct.mi_display_flip_command_info* %4)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %70

54:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %61 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @cmd_ptr(%struct.parser_exec_state* %61, i32 %62)
  %64 = load i32, i32* @MI_NOOP, align 4
  %65 = call i32 @patch_value(%struct.parser_exec_state* %60, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %55

69:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %51, %43, %35, %28
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @cmd_length(%struct.parser_exec_state*) #1

declare dso_local i32 @CMD_LEN(i32) #1

declare dso_local i32 @DWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @gvt_check_valid_cmd_length(i32, i32) #1

declare dso_local i32 @decode_mi_display_flip(%struct.parser_exec_state*, %struct.mi_display_flip_command_info*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @check_mi_display_flip(%struct.parser_exec_state*, %struct.mi_display_flip_command_info*) #1

declare dso_local i32 @update_plane_mmio_from_mi_display_flip(%struct.parser_exec_state*, %struct.mi_display_flip_command_info*) #1

declare dso_local i32 @patch_value(%struct.parser_exec_state*, i32, i32) #1

declare dso_local i32 @cmd_ptr(%struct.parser_exec_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
