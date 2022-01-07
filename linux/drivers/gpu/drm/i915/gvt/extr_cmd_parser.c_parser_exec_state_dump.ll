; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_parser_exec_state_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_parser_exec_state_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i64, i64, i32*, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [86 x i8] c"  vgpu%d RING%d: ring_start(%08lx) ring_end(%08lx) ring_head(%08lx) ring_tail(%08lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"  %s %s ip_gma(%08lx) \00", align 1
@RING_BUFFER_INSTRUCTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"RING_BUFFER\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"BATCH_BUFFER\00", align 1
@GTT_BUFFER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"GTT\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"PPGTT\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" ip_va(NULL)\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"  ip_va=%p: %08x %08x %08x %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ip_va=%p: \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parser_exec_state*)* @parser_exec_state_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parser_exec_state_dump(%struct.parser_exec_state* %0) #0 {
  %2 = alloca %struct.parser_exec_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %6 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %5, i32 0, i32 9
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %11 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %14 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %17 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %20 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %24 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %27 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @gvt_dbg_cmd(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i64 %15, i64 %22, i32 %25, i32 %28)
  %30 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %31 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RING_BUFFER_INSTRUCTION, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %37 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %38 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @GTT_BUFFER, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %44 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %45 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @gvt_dbg_cmd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %43, i32 %46)
  %48 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %49 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = call i32 (i8*, ...) @gvt_dbg_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %110

54:                                               ; preds = %1
  %55 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %56 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %59 = call i32 @cmd_val(%struct.parser_exec_state* %58, i32 0)
  %60 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %61 = call i32 @cmd_val(%struct.parser_exec_state* %60, i32 1)
  %62 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %63 = call i32 @cmd_val(%struct.parser_exec_state* %62, i32 2)
  %64 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %65 = call i32 @cmd_val(%struct.parser_exec_state* %64, i32 3)
  %66 = call i32 (i8*, ...) @gvt_dbg_cmd(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32* %57, i32 %59, i32 %61, i32 %63, i32 %65)
  %67 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %68 = call i32 @cmd_val(%struct.parser_exec_state* %67, i32 0)
  %69 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %70 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @print_opcode(i32 %68, i32 %71)
  %73 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %74 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = ptrtoint i32* %75 to i32
  %77 = ashr i32 %76, 12
  %78 = shl i32 %77, 12
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i32*
  %81 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %82 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %81, i32 0, i32 2
  store i32* %80, i32** %82, align 8
  br label %83

83:                                               ; preds = %102, %54
  %84 = load i32, i32* %3, align 4
  %85 = icmp slt i32 %84, 1024
  br i1 %85, label %86, label %110

86:                                               ; preds = %83
  %87 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %88 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 (i8*, ...) @gvt_dbg_cmd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %99, %86
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @cmd_val(%struct.parser_exec_state* %95, i32 %96)
  %98 = call i32 (i8*, ...) @gvt_dbg_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %91

102:                                              ; preds = %91
  %103 = call i32 (i8*, ...) @gvt_dbg_cmd(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %104 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %105 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 32
  store i32* %107, i32** %105, align 8
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 8
  store i32 %109, i32* %3, align 4
  br label %83

110:                                              ; preds = %52, %83
  ret void
}

declare dso_local i32 @gvt_dbg_cmd(i8*, ...) #1

declare dso_local i32 @cmd_val(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @print_opcode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
