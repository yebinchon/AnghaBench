; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_lri.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_lri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_gvt* }
%struct.intel_gvt = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"len is not valid:  len=%u  valid_len=%u\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@RCS0 = common dso_local global i64 0, align 8
@BCS0 = common dso_local global i64 0, align 8
@DERRMR = common dso_local global i32 0, align 4
@EBADRQC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"lri\00", align 1
@MAX_VALID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_lri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_lri(%struct.parser_exec_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parser_exec_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_gvt*, align 8
  %8 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %10 = call i32 @cmd_length(%struct.parser_exec_state* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %12 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.intel_gvt*, %struct.intel_gvt** %14, align 8
  store %struct.intel_gvt* %15, %struct.intel_gvt** %7, align 8
  %16 = call i32 @CMD_LEN(i32 1)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 127
  br i1 %22, label %23, label %29

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @gvt_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %97

29:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %92, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %95

34:                                               ; preds = %30
  %35 = load %struct.intel_gvt*, %struct.intel_gvt** %7, align 8
  %36 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_BROADWELL(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %34
  %41 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %42 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RCS0, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %48 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BCS0, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @cmd_reg(%struct.parser_exec_state* %53, i32 %54)
  %56 = load i32, i32* @DERRMR, align 4
  %57 = call i64 @i915_mmio_reg_offset(i32 %56)
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %5, align 4
  br label %74

61:                                               ; preds = %52, %46
  %62 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @cmd_reg_inhibit(%struct.parser_exec_state* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EBADRQC, align 4
  %68 = sub nsw i32 0, %67
  br label %70

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 0, %69 ]
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %59
  br label %75

75:                                               ; preds = %74, %40, %34
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %95

79:                                               ; preds = %75
  %80 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %81 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @cmd_reg(%struct.parser_exec_state* %81, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @cmd_reg_handler(%struct.parser_exec_state* %80, i64 %83, i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %95

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %4, align 4
  br label %30

95:                                               ; preds = %90, %78, %30
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %23
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @cmd_length(%struct.parser_exec_state*) #1

declare dso_local i32 @CMD_LEN(i32) #1

declare dso_local i32 @gvt_err(i8*, i32, i32) #1

declare dso_local i64 @IS_BROADWELL(i32) #1

declare dso_local i64 @cmd_reg(%struct.parser_exec_state*, i32) #1

declare dso_local i64 @i915_mmio_reg_offset(i32) #1

declare dso_local i64 @cmd_reg_inhibit(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @cmd_reg_handler(%struct.parser_exec_state*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
