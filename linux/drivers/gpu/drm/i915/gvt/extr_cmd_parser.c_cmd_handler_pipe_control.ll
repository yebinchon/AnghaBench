; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_pipe_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_pipe_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.parser_exec_state = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@PIPE_CONTROL_POST_SYNC_OP_MASK = common dso_local global i32 0, align 4
@PIPE_CONTROL_MMIO_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pipe_ctrl\00", align 1
@PIPE_CONTROL_GLOBAL_GTT_IVB = common dso_local global i32 0, align 4
@PIPE_CONTROL_NOTIFY = common dso_local global i32 0, align 4
@cmd_interrupt_events = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_pipe_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_pipe_control(%struct.parser_exec_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parser_exec_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  store i32 0, i32* %8, align 4
  %19 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %20 = call i32 @cmd_val(%struct.parser_exec_state* %19, i32 1)
  %21 = load i32, i32* @PIPE_CONTROL_POST_SYNC_OP_MASK, align 4
  %22 = and i32 %20, %21
  %23 = ashr i32 %22, 14
  store i32 %23, i32* %7, align 4
  %24 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %25 = call i32 @cmd_val(%struct.parser_exec_state* %24, i32 1)
  %26 = load i32, i32* @PIPE_CONTROL_MMIO_WRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %31 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %32 = call i32 @cmd_reg(%struct.parser_exec_state* %31, i32 2)
  %33 = call i32 @cmd_reg_handler(%struct.parser_exec_state* %30, i32 %32, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %8, align 4
  br label %127

34:                                               ; preds = %1
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %126

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %42 = call i32 @cmd_reg_handler(%struct.parser_exec_state* %41, i32 9040, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %8, align 4
  br label %125

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %48 = call i32 @cmd_reg_handler(%struct.parser_exec_state* %47, i32 9048, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %8, align 4
  br label %124

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %123

52:                                               ; preds = %49
  %53 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %54 = call i32 @cmd_val(%struct.parser_exec_state* %53, i32 1)
  %55 = load i32, i32* @PIPE_CONTROL_GLOBAL_GTT_IVB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %122

58:                                               ; preds = %52
  %59 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %60 = call i32 @cmd_val(%struct.parser_exec_state* %59, i32 2)
  %61 = call i32 @GENMASK(i32 31, i32 3)
  %62 = and i32 %60, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %5, align 8
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 8
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %68 = call i32 @cmd_gma_hi(%struct.parser_exec_state* %67, i32 3)
  %69 = shl i32 %68, 32
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %5, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %66, %58
  %74 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %75 = call i32 @cmd_val(%struct.parser_exec_state* %74, i32 1)
  %76 = and i32 %75, 2097152
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @cmd_address_audit(%struct.parser_exec_state* %80, i64 %81, i32 4, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %153

90:                                               ; preds = %79
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %90
  %94 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %95 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %100 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %5, align 8
  %106 = add i64 %104, %105
  store i64 %106, i64* %5, align 8
  %107 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %108 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %109 = call i32 @cmd_ptr(%struct.parser_exec_state* %108, i32 2)
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @patch_value(%struct.parser_exec_state* %107, i32 %109, i64 %110)
  %112 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %113 = call i32 @cmd_val(%struct.parser_exec_state* %112, i32 1)
  %114 = and i32 %113, -2097153
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %10, align 8
  %116 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %117 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %118 = call i32 @cmd_ptr(%struct.parser_exec_state* %117, i32 1)
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @patch_value(%struct.parser_exec_state* %116, i32 %118, i64 %119)
  br label %121

121:                                              ; preds = %93, %90
  br label %122

122:                                              ; preds = %121, %52
  br label %123

123:                                              ; preds = %122, %49
  br label %124

124:                                              ; preds = %123, %46
  br label %125

125:                                              ; preds = %124, %40
  br label %126

126:                                              ; preds = %125, %34
  br label %127

127:                                              ; preds = %126, %29
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %153

132:                                              ; preds = %127
  %133 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %134 = call i32 @cmd_val(%struct.parser_exec_state* %133, i32 1)
  %135 = load i32, i32* @PIPE_CONTROL_NOTIFY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %132
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cmd_interrupt_events, align 8
  %140 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %141 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %147 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @set_bit(i32 %145, i32 %150)
  br label %152

152:                                              ; preds = %138, %132
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %130, %88
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @cmd_val(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @cmd_reg_handler(%struct.parser_exec_state*, i32, i32, i8*) #1

declare dso_local i32 @cmd_reg(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @cmd_gma_hi(%struct.parser_exec_state*, i32) #1

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
