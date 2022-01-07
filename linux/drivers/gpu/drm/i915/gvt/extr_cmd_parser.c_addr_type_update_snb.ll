; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_addr_type_update_snb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_addr_type_update_snb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i64, i32 }

@RING_BUFFER_INSTRUCTION = common dso_local global i64 0, align 8
@PPGTT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parser_exec_state*)* @addr_type_update_snb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr_type_update_snb(%struct.parser_exec_state* %0) #0 {
  %2 = alloca %struct.parser_exec_state*, align 8
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %2, align 8
  %3 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %4 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RING_BUFFER_INSTRUCTION, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %10 = call i32 @cmd_val(%struct.parser_exec_state* %9, i32 0)
  %11 = call i32 @BATCH_BUFFER_ADR_SPACE_BIT(i32 %10)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* @PPGTT_BUFFER, align 4
  %15 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %16 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  br label %17

17:                                               ; preds = %13, %8, %1
  ret void
}

declare dso_local i32 @BATCH_BUFFER_ADR_SPACE_BIT(i32) #1

declare dso_local i32 @cmd_val(%struct.parser_exec_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
