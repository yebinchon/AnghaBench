; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_audit_bb_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_audit_bb_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i64, i32, i32, %struct.intel_vgpu* }
%struct.intel_vgpu = type { i32 }
%struct.cmd_info = type { i64 }

@.str = private unnamed_addr constant [67 x i8] c"unknown cmd 0x%x, opcode=0x%x, addr_type=%s, ring %d, workload=%p\0A\00", align 1
@PPGTT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"ppgtt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ggtt\00", align 1
@EBADRQC = common dso_local global i32 0, align 4
@OP_MI_BATCH_BUFFER_END = common dso_local global i64 0, align 8
@OP_MI_BATCH_BUFFER_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*, i8*)* @audit_bb_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_bb_end(%struct.parser_exec_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parser_exec_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmd_info*, align 8
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %10 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %9, i32 0, i32 3
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %10, align 8
  store %struct.intel_vgpu* %11, %struct.intel_vgpu** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %16 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %15, i32 0, i32 3
  %17 = load %struct.intel_vgpu*, %struct.intel_vgpu** %16, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %22 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cmd_info* @get_cmd_info(i32 %19, i32 %20, i32 %23)
  store %struct.cmd_info* %24, %struct.cmd_info** %8, align 8
  %25 = load %struct.cmd_info*, %struct.cmd_info** %8, align 8
  %26 = icmp eq %struct.cmd_info* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %31 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @get_opcode(i32 %29, i32 %32)
  %34 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %35 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PPGTT_BUFFER, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %41 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %42 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %45 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %33, i8* %40, i32 %43, i32 %46)
  %48 = load i32, i32* @EBADRQC, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %70

50:                                               ; preds = %2
  %51 = load %struct.cmd_info*, %struct.cmd_info** %8, align 8
  %52 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OP_MI_BATCH_BUFFER_END, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %50
  %57 = load %struct.cmd_info*, %struct.cmd_info** %8, align 8
  %58 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OP_MI_BATCH_BUFFER_START, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @BATCH_BUFFER_2ND_LEVEL_BIT(i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %50
  store i32 0, i32* %3, align 4
  br label %70

67:                                               ; preds = %62, %56
  %68 = load i32, i32* @EBADRQC, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %66, %27
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.cmd_info* @get_cmd_info(i32, i32, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @get_opcode(i32, i32) #1

declare dso_local i64 @BATCH_BUFFER_2ND_LEVEL_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
