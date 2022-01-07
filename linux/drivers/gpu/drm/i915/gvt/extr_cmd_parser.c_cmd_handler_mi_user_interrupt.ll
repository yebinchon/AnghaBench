; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_user_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_user_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.parser_exec_state = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cmd_interrupt_events = common dso_local global %struct.TYPE_4__* null, align 8
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_mi_user_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_mi_user_interrupt(%struct.parser_exec_state* %0) #0 {
  %2 = alloca %struct.parser_exec_state*, align 8
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmd_interrupt_events, align 8
  %4 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %5 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %11 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @set_bit(i32 %9, i32 %14)
  %16 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %17 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %18 = call i32 @cmd_ptr(%struct.parser_exec_state* %17, i32 0)
  %19 = load i32, i32* @MI_NOOP, align 4
  %20 = call i32 @patch_value(%struct.parser_exec_state* %16, i32 %18, i32 %19)
  ret i32 0
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @patch_value(%struct.parser_exec_state*, i32, i32) #1

declare dso_local i32 @cmd_ptr(%struct.parser_exec_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
