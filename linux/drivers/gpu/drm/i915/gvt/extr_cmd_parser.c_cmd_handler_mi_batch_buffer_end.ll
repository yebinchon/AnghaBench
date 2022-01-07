; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_batch_buffer_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_batch_buffer_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i64, i64, i64, i64, i64, i32, i32 }

@BATCH_BUFFER_2ND_LEVEL = common dso_local global i64 0, align 8
@BATCH_BUFFER_INSTRUCTION = common dso_local global i64 0, align 8
@RING_BUFFER_INSTRUCTION = common dso_local global i64 0, align 8
@GTT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_mi_batch_buffer_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_mi_batch_buffer_end(%struct.parser_exec_state* %0) #0 {
  %2 = alloca %struct.parser_exec_state*, align 8
  %3 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %2, align 8
  %4 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %5 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BATCH_BUFFER_2ND_LEVEL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load i64, i64* @BATCH_BUFFER_INSTRUCTION, align 8
  %11 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %12 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %14 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %15 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ip_gma_set(%struct.parser_exec_state* %13, i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %19 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %22 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  br label %55

23:                                               ; preds = %1
  %24 = load i64, i64* @RING_BUFFER_INSTRUCTION, align 8
  %25 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %26 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @GTT_BUFFER, align 4
  %28 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %29 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %31 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %34 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %37 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = icmp sge i64 %32, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %23
  %42 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %43 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %46 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %41, %23
  %50 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %51 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %52 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ip_gma_set(%struct.parser_exec_state* %50, i64 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %9
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ip_gma_set(%struct.parser_exec_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
