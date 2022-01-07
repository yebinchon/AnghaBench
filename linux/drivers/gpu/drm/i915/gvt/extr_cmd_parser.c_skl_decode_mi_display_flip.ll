; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_skl_decode_mi_display_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_skl_decode_mi_display_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { %struct.intel_vgpu* }
%struct.intel_vgpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.mi_display_flip_command_info = type { i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i32 }

@PRIMARY_PLANE = common dso_local global i8* null, align 8
@PIPE_A = common dso_local global i8* null, align 8
@PRIMARY_A_FLIP_DONE = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i8* null, align 8
@PRIMARY_B_FLIP_DONE = common dso_local global i32 0, align 4
@PIPE_C = common dso_local global i8* null, align 8
@PRIMARY_C_FLIP_DONE = common dso_local global i32 0, align 4
@SPRITE_A_FLIP_DONE = common dso_local global i32 0, align 4
@SPRITE_PLANE = common dso_local global i8* null, align 8
@SPRITE_B_FLIP_DONE = common dso_local global i32 0, align 4
@SPRITE_C_FLIP_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown plane code %d\0A\00", align 1
@EBADRQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*, %struct.mi_display_flip_command_info*)* @skl_decode_mi_display_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_decode_mi_display_flip(%struct.parser_exec_state* %0, %struct.mi_display_flip_command_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parser_exec_state*, align 8
  %5 = alloca %struct.mi_display_flip_command_info*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_vgpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %4, align 8
  store %struct.mi_display_flip_command_info* %1, %struct.mi_display_flip_command_info** %5, align 8
  %12 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %13 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %12, i32 0, i32 0
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %13, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %6, align 8
  %19 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %20 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %19, i32 0, i32 0
  %21 = load %struct.intel_vgpu*, %struct.intel_vgpu** %20, align 8
  store %struct.intel_vgpu* %21, %struct.intel_vgpu** %7, align 8
  %22 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %23 = call i32 @cmd_val(%struct.parser_exec_state* %22, i32 0)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %25 = call i32 @cmd_val(%struct.parser_exec_state* %24, i32 1)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %27 = call i32 @cmd_val(%struct.parser_exec_state* %26, i32 2)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @GENMASK(i32 12, i32 8)
  %30 = and i32 %28, %29
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %11, align 4
  %32 = load i8*, i8** @PRIMARY_PLANE, align 8
  %33 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %34 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %87 [
    i32 133, label %36
    i32 132, label %43
    i32 131, label %50
    i32 130, label %57
    i32 129, label %67
    i32 128, label %77
  ]

36:                                               ; preds = %2
  %37 = load i8*, i8** @PIPE_A, align 8
  %38 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %39 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @PRIMARY_A_FLIP_DONE, align 4
  %41 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %42 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  br label %92

43:                                               ; preds = %2
  %44 = load i8*, i8** @PIPE_B, align 8
  %45 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %46 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @PRIMARY_B_FLIP_DONE, align 4
  %48 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %49 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 8
  br label %92

50:                                               ; preds = %2
  %51 = load i8*, i8** @PIPE_C, align 8
  %52 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %53 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @PRIMARY_C_FLIP_DONE, align 4
  %55 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %56 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 8
  br label %92

57:                                               ; preds = %2
  %58 = load i8*, i8** @PIPE_A, align 8
  %59 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %60 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @SPRITE_A_FLIP_DONE, align 4
  %62 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %63 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** @SPRITE_PLANE, align 8
  %65 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %66 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %65, i32 0, i32 8
  store i8* %64, i8** %66, align 8
  br label %92

67:                                               ; preds = %2
  %68 = load i8*, i8** @PIPE_B, align 8
  %69 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %70 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @SPRITE_B_FLIP_DONE, align 4
  %72 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %73 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %72, i32 0, i32 9
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** @SPRITE_PLANE, align 8
  %75 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %76 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %75, i32 0, i32 8
  store i8* %74, i8** %76, align 8
  br label %92

77:                                               ; preds = %2
  %78 = load i8*, i8** @PIPE_C, align 8
  %79 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %80 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @SPRITE_C_FLIP_DONE, align 4
  %82 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %83 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** @SPRITE_PLANE, align 8
  %85 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %86 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %85, i32 0, i32 8
  store i8* %84, i8** %86, align 8
  br label %92

87:                                               ; preds = %2
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EBADRQC, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %135

92:                                               ; preds = %77, %67, %57, %50, %43, %36
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @GENMASK(i32 15, i32 6)
  %95 = and i32 %93, %94
  %96 = ashr i32 %95, 6
  %97 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %98 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @GENMASK(i32 2, i32 0)
  %101 = and i32 %99, %100
  %102 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %103 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @GENMASK(i32 31, i32 12)
  %106 = and i32 %104, %105
  %107 = ashr i32 %106, 12
  %108 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %109 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @GENMASK(i32 1, i32 0)
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 1
  %114 = zext i1 %113 to i32
  %115 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %116 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %118 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @DSPCNTR(i8* %119)
  %121 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %122 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 8
  %123 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %124 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @DSPSTRIDE(i8* %125)
  %127 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %128 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 4
  %129 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %130 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @DSPSURF(i8* %131)
  %133 = load %struct.mi_display_flip_command_info*, %struct.mi_display_flip_command_info** %5, align 8
  %134 = getelementptr inbounds %struct.mi_display_flip_command_info, %struct.mi_display_flip_command_info* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %92, %87
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @cmd_val(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32) #1

declare dso_local i32 @DSPCNTR(i8*) #1

declare dso_local i32 @DSPSTRIDE(i8*) #1

declare dso_local i32 @DSPSURF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
