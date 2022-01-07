; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_flush_dw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_flush_dw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.parser_exec_state = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@cmd_interrupt_events = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_mi_flush_dw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_mi_flush_dw(%struct.parser_exec_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parser_exec_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %3, align 8
  %11 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %12 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %19 = call i64 @CMD_LEN(i32 2)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %21 = call i32 @cmd_length(%struct.parser_exec_state* %20)
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @gvt_check_valid_cmd_length(i32 %21, i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %28 = call i32 @cmd_length(%struct.parser_exec_state* %27)
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %10, align 8
  %31 = call i32 @gvt_check_valid_cmd_length(i32 %28, i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %129

33:                                               ; preds = %1
  %34 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %35 = call i32 @cmd_val(%struct.parser_exec_state* %34, i32 0)
  %36 = ashr i32 %35, 14
  %37 = and i32 %36, 3
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %108

39:                                               ; preds = %33
  %40 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %41 = call i32 @cmd_val(%struct.parser_exec_state* %40, i32 1)
  %42 = and i32 %41, 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %108

44:                                               ; preds = %39
  %45 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %46 = call i32 @cmd_val(%struct.parser_exec_state* %45, i32 1)
  %47 = call i32 @GENMASK(i32 31, i32 3)
  %48 = and i32 %46, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %54 = call i32 @cmd_val(%struct.parser_exec_state* %53, i32 2)
  %55 = call i32 @GENMASK(i32 15, i32 0)
  %56 = and i32 %54, %55
  %57 = shl i32 %56, 32
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %5, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %52, %44
  %62 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %63 = call i32 @cmd_val(%struct.parser_exec_state* %62, i32 0)
  %64 = and i32 %63, 2097152
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @cmd_address_audit(%struct.parser_exec_state* %68, i64 %69, i32 4, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %129

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %76
  %80 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %81 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %80, i32 0, i32 2
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %86 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %90, %91
  store i64 %92, i64* %5, align 8
  %93 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %94 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %95 = call i32 @cmd_ptr(%struct.parser_exec_state* %94, i32 1)
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @patch_value(%struct.parser_exec_state* %93, i32 %95, i64 %96)
  %98 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %99 = call i32 @cmd_val(%struct.parser_exec_state* %98, i32 0)
  %100 = and i32 %99, -2097153
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %9, align 8
  %102 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %103 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %104 = call i32 @cmd_ptr(%struct.parser_exec_state* %103, i32 0)
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @patch_value(%struct.parser_exec_state* %102, i32 %104, i64 %105)
  br label %107

107:                                              ; preds = %79, %76
  br label %108

108:                                              ; preds = %107, %39, %33
  %109 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %110 = call i32 @cmd_val(%struct.parser_exec_state* %109, i32 0)
  %111 = and i32 %110, 256
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cmd_interrupt_events, align 8
  %115 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %116 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %122 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @set_bit(i32 %120, i32 %125)
  br label %127

127:                                              ; preds = %113, %108
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %74, %26
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i64 @CMD_LEN(i32) #1

declare dso_local i32 @gvt_check_valid_cmd_length(i32, i64) #1

declare dso_local i32 @cmd_length(%struct.parser_exec_state*) #1

declare dso_local i32 @cmd_val(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @cmd_address_audit(%struct.parser_exec_state*, i64, i32, i32) #1

declare dso_local i32 @patch_value(%struct.parser_exec_state*, i32, i64) #1

declare dso_local i32 @cmd_ptr(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
