; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_batch_buffer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_batch_buffer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i64, i64, i64, i64, i64, i64, i32, i32, %struct.intel_vgpu* }
%struct.intel_vgpu = type { i32 }

@BATCH_BUFFER_2ND_LEVEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Found MI_BATCH_BUFFER_START in 2nd level BB\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@BATCH_BUFFER_INSTRUCTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Jumping to 2nd level BB from RB is not allowed\0A\00", align 1
@RING_BUFFER_INSTRUCTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid shadow batch buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_mi_batch_buffer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_mi_batch_buffer_start(%struct.parser_exec_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parser_exec_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %8 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 8
  %9 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  store %struct.intel_vgpu* %9, %struct.intel_vgpu** %6, align 8
  %10 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %11 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BATCH_BUFFER_2ND_LEVEL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %114

19:                                               ; preds = %1
  %20 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %21 = call i32 @cmd_val(%struct.parser_exec_state* %20, i32 0)
  %22 = call i32 @BATCH_BUFFER_2ND_LEVEL_BIT(i32 %21)
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %29 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BATCH_BUFFER_INSTRUCTION, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EFAULT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %114

37:                                               ; preds = %27, %19
  %38 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %39 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %42 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %44 = call i32 @addr_type_update_snb(%struct.parser_exec_state* %43)
  %45 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %46 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RING_BUFFER_INSTRUCTION, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %37
  %51 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %52 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %55 = call i32 @cmd_length(%struct.parser_exec_state* %54)
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = add i64 %53, %57
  %59 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %60 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %59, i32 0, i32 5
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* @BATCH_BUFFER_INSTRUCTION, align 8
  %62 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %63 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %92

64:                                               ; preds = %37
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %64
  %68 = load i64, i64* @BATCH_BUFFER_2ND_LEVEL, align 8
  %69 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %70 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %72 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %75 = call i32 @cmd_length(%struct.parser_exec_state* %74)
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = add i64 %73, %77
  %79 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %80 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  %81 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %82 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %85 = call i32 @cmd_length(%struct.parser_exec_state* %84)
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = add i64 %83, %87
  %89 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %90 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %67, %64
  br label %92

92:                                               ; preds = %91, %50
  %93 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %94 = call i64 @batch_buffer_needs_scan(%struct.parser_exec_state* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %98 = call i32 @perform_bb_shadow(%struct.parser_exec_state* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %96
  br label %112

104:                                              ; preds = %92
  %105 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %106 = call i32 @cmd_handler_mi_batch_buffer_end(%struct.parser_exec_state* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %114

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %103
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %109, %33, %15
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @BATCH_BUFFER_2ND_LEVEL_BIT(i32) #1

declare dso_local i32 @cmd_val(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @addr_type_update_snb(%struct.parser_exec_state*) #1

declare dso_local i32 @cmd_length(%struct.parser_exec_state*) #1

declare dso_local i64 @batch_buffer_needs_scan(%struct.parser_exec_state*) #1

declare dso_local i32 @perform_bb_shadow(%struct.parser_exec_state*) #1

declare dso_local i32 @cmd_handler_mi_batch_buffer_end(%struct.parser_exec_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
