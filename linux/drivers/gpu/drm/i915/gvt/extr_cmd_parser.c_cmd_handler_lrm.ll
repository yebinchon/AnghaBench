; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_lrm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_lrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.intel_gvt* }
%struct.intel_gvt = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EBADRQC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lrm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_lrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_lrm(%struct.parser_exec_state* %0) #0 {
  %2 = alloca %struct.parser_exec_state*, align 8
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %2, align 8
  %9 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %10 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.intel_gvt*, %struct.intel_gvt** %12, align 8
  store %struct.intel_gvt* %13, %struct.intel_gvt** %3, align 8
  %14 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %15 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %19 = call i32 @cmd_length(%struct.parser_exec_state* %18)
  store i32 %19, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %90, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %98

24:                                               ; preds = %20
  %25 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %26 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_BROADWELL(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @cmd_reg_inhibit(%struct.parser_exec_state* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EBADRQC, align 4
  %37 = sub nsw i32 0, %36
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 0, %38 ]
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %24
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %98

47:                                               ; preds = %43
  %48 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %49 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @cmd_reg(%struct.parser_exec_state* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @cmd_reg_handler(%struct.parser_exec_state* %48, i32 %51, i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %98

59:                                               ; preds = %47
  %60 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %61 = call i32 @cmd_val(%struct.parser_exec_state* %60, i32 0)
  %62 = and i32 %61, 4194304
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i64 @cmd_gma(%struct.parser_exec_state* %65, i32 %67)
  store i64 %68, i64* %5, align 8
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 2
  %75 = call i32 @cmd_gma_hi(%struct.parser_exec_state* %72, i32 %74)
  %76 = shl i32 %75, 32
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %5, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %71, %64
  %81 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @cmd_address_audit(%struct.parser_exec_state* %81, i64 %82, i32 4, i32 0)
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %98

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %59
  %91 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %92 = call i64 @gmadr_dw_number(%struct.parser_exec_state* %91)
  %93 = add nsw i64 %92, 1
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %6, align 4
  br label %20

98:                                               ; preds = %88, %58, %46, %20
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @cmd_length(%struct.parser_exec_state*) #1

declare dso_local i64 @IS_BROADWELL(i32) #1

declare dso_local i64 @cmd_reg_inhibit(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @cmd_reg_handler(%struct.parser_exec_state*, i32, i32, i8*) #1

declare dso_local i32 @cmd_reg(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @cmd_val(%struct.parser_exec_state*, i32) #1

declare dso_local i64 @cmd_gma(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @cmd_gma_hi(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @cmd_address_audit(%struct.parser_exec_state*, i64, i32, i32) #1

declare dso_local i64 @gmadr_dw_number(%struct.parser_exec_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
