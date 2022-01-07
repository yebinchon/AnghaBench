; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_command_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_command_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i64, i64, %struct.intel_vgpu* }
%struct.intel_vgpu = type { i32 }

@RING_BUFFER_INSTRUCTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"ip_gma %lx out of ring scope.(base:0x%lx, bottom: 0x%lx)\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"ip_gma %lx out of range.base 0x%lx head 0x%lx tail 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cmd parser error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*, i64, i64, i64, i64)* @command_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_scan(%struct.parser_exec_state* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.parser_exec_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.intel_vgpu*, align 8
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %18 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %17, i32 0, i32 2
  %19 = load %struct.intel_vgpu*, %struct.intel_vgpu** %18, align 8
  store %struct.intel_vgpu* %19, %struct.intel_vgpu** %16, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %14, align 8
  br label %29

29:                                               ; preds = %92, %5
  %30 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %31 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %93

35:                                               ; preds = %29
  %36 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %37 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RING_BUFFER_INSTRUCTION, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %35
  %42 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %43 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %49 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %64, label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %55 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %57, i64 %58)
  %60 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %61 = call i32 @parser_exec_state_dump(%struct.parser_exec_state* %60)
  %62 = load i32, i32* @EFAULT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %95

64:                                               ; preds = %47
  %65 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %66 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i64 @gma_out_of_range(i64 %67, i64 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %74 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %75, i64 %76, i64 %77, i64 %78)
  %80 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %81 = call i32 @parser_exec_state_dump(%struct.parser_exec_state* %80)
  br label %93

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %35
  %84 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %85 = call i32 @cmd_parser_exec(%struct.parser_exec_state* %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.parser_exec_state*, %struct.parser_exec_state** %7, align 8
  %91 = call i32 @parser_exec_state_dump(%struct.parser_exec_state* %90)
  br label %93

92:                                               ; preds = %83
  br label %29

93:                                               ; preds = %88, %72, %29
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %53
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @gvt_vgpu_err(i8*, ...) #1

declare dso_local i32 @parser_exec_state_dump(%struct.parser_exec_state*) #1

declare dso_local i64 @gma_out_of_range(i64, i64, i64) #1

declare dso_local i32 @cmd_parser_exec(%struct.parser_exec_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
