; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_gen8_check_mi_display_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_gen8_check_mi_display_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.mi_display_flip_command_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"cannot change stride during async flip\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot change tile during async flip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*, %struct.mi_display_flip_command_info*)* @gen8_check_mi_display_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_check_mi_display_flip(%struct.parser_exec_state* %0, %struct.mi_display_flip_command_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parser_exec_state*, align 8
  %5 = alloca %struct.mi_display_flip_command_info*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %4, align 8
  store %struct.mi_display_flip_command_info* %1, %struct.mi_display_flip_command_info** %5, align 8
  %9 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %10 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %6, align 8
  %16 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %17 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = call i32 @INTEL_GEN(%struct.drm_i915_private* %22)
  %24 = icmp sge i32 %23, 9
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %27 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %30 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vgpu_vreg_t(%struct.TYPE_4__* %28, i32 %31)
  %33 = call i32 @GENMASK(i32 9, i32 0)
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %36 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %39 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vgpu_vreg_t(%struct.TYPE_4__* %37, i32 %40)
  %42 = call i32 @GENMASK(i32 12, i32 10)
  %43 = and i32 %41, %42
  %44 = ashr i32 %43, 10
  store i32 %44, i32* %8, align 4
  br label %65

45:                                               ; preds = %21
  %46 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %47 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %50 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @vgpu_vreg_t(%struct.TYPE_4__* %48, i32 %51)
  %53 = call i32 @GENMASK(i32 15, i32 6)
  %54 = and i32 %52, %53
  %55 = ashr i32 %54, 6
  store i32 %55, i32* %7, align 4
  %56 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %57 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %60 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @vgpu_vreg_t(%struct.TYPE_4__* %58, i32 %61)
  %63 = and i32 %62, 1024
  %64 = ashr i32 %63, 10
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %45, %25
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %68 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @gvt_dbg_cmd(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %65
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %76 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 @gvt_dbg_cmd(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %73
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @vgpu_vreg_t(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @gvt_dbg_cmd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
