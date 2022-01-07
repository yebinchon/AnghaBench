; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_ip_gma_advance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_ip_gma_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i32, i64, i64, i64, i32 }

@RING_BUFFER_INSTRUCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*, i32)* @ip_gma_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_gma_advance(%struct.parser_exec_state* %0, i32 %1) #0 {
  %3 = alloca %struct.parser_exec_state*, align 8
  %4 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = shl i32 %5, 2
  %7 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %8 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %12 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RING_BUFFER_INSTRUCTION, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %18 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %22 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %25 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = icmp sge i64 %20, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %16
  %30 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %31 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %34 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = zext i32 %35 to i64
  %37 = sub nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  br label %39

39:                                               ; preds = %29, %16
  %40 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %41 = call i32 @update_ip_va(%struct.parser_exec_state* %40)
  br label %49

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = shl i32 %43, 2
  %45 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %46 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = add i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %39
  ret i32 0
}

declare dso_local i32 @update_ip_va(%struct.parser_exec_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
