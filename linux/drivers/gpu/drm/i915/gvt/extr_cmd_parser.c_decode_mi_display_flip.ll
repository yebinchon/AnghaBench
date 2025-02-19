; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_decode_mi_display_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_decode_mi_display_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.mi_display_flip_command_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*, %struct.mi_display_flip_command_info*)* @decode_mi_display_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_mi_display_flip(%struct.parser_exec_state* %0, %struct.mi_display_flip_command_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parser_exec_state*, align 8
  %5 = alloca %struct.mi_display_flip_command_info*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %4, align 8
  store %struct.mi_display_flip_command_info* %1, %struct.mi_display_flip_command_info** %5, align 8
  %7 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %8 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %15 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %19 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %20 = call i32 @gen8_decode_mi_display_flip(%struct.parser_exec_state* %18, %struct.mi_display_flip_command_info* %19)
  store i32 %20, i32* %3, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = call i32 @INTEL_GEN(%struct.drm_i915_private* %22)
  %24 = icmp sge i32 %23, 9
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %27 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %28 = call i32 @skl_decode_mi_display_flip(%struct.parser_exec_state* %26, %struct.mi_display_flip_command_info* %27)
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %25, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @gen8_decode_mi_display_flip(%struct.parser_exec_state*, %struct.mi_display_flip_command_info*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_decode_mi_display_flip(%struct.parser_exec_state*, %struct.mi_display_flip_command_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
