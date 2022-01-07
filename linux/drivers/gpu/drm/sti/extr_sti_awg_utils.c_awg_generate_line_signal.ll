; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_awg_utils.c_awg_generate_line_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_awg_utils.c_awg_generate_line_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_code_generation_params = type { i32 }
%struct.awg_timing = type { i32, i64, i64, i32 }

@RPLSET = common dso_local global i32 0, align 4
@AWG_DELAY = common dso_local global i32 0, align 4
@SKIP = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.awg_code_generation_params*, %struct.awg_timing*)* @awg_generate_line_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_generate_line_signal(%struct.awg_code_generation_params* %0, %struct.awg_timing* %1) #0 {
  %3 = alloca %struct.awg_code_generation_params*, align 8
  %4 = alloca %struct.awg_timing*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.awg_code_generation_params* %0, %struct.awg_code_generation_params** %3, align 8
  store %struct.awg_timing* %1, %struct.awg_timing** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.awg_timing*, %struct.awg_timing** %4, align 8
  %8 = getelementptr inbounds %struct.awg_timing, %struct.awg_timing* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.awg_timing*, %struct.awg_timing** %4, align 8
  %13 = getelementptr inbounds %struct.awg_timing, %struct.awg_timing* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @RPLSET, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.awg_code_generation_params*, %struct.awg_code_generation_params** %3, align 8
  %18 = call i32 @awg_generate_instr(i32 %15, i64 %16, i32 0, i32 0, %struct.awg_code_generation_params* %17)
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.awg_timing*, %struct.awg_timing** %4, align 8
  %22 = getelementptr inbounds %struct.awg_timing, %struct.awg_timing* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @AWG_DELAY, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %5, align 8
  %28 = load i32, i32* @SKIP, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.awg_code_generation_params*, %struct.awg_code_generation_params** %3, align 8
  %31 = call i32 @awg_generate_instr(i32 %28, i64 %29, i32 0, i32 0, %struct.awg_code_generation_params* %30)
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %11, %2
  %35 = load %struct.awg_timing*, %struct.awg_timing** %4, align 8
  %36 = getelementptr inbounds %struct.awg_timing, %struct.awg_timing* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %5, align 8
  %38 = load %struct.awg_timing*, %struct.awg_timing** %4, align 8
  %39 = getelementptr inbounds %struct.awg_timing, %struct.awg_timing* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @SET, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @RPLSET, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.awg_code_generation_params*, %struct.awg_code_generation_params** %3, align 8
  %50 = call i32 @awg_generate_instr(i32 %47, i64 %48, i32 0, i32 1, %struct.awg_code_generation_params* %49)
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.awg_timing*, %struct.awg_timing** %4, align 8
  %54 = getelementptr inbounds %struct.awg_timing, %struct.awg_timing* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %46
  %58 = load %struct.awg_timing*, %struct.awg_timing** %4, align 8
  %59 = getelementptr inbounds %struct.awg_timing, %struct.awg_timing* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %5, align 8
  %63 = load i32, i32* @SKIP, align 4
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.awg_code_generation_params*, %struct.awg_code_generation_params** %3, align 8
  %66 = call i32 @awg_generate_instr(i32 %63, i64 %64, i32 0, i32 1, %struct.awg_code_generation_params* %65)
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load %struct.awg_timing*, %struct.awg_timing** %4, align 8
  %70 = getelementptr inbounds %struct.awg_timing, %struct.awg_timing* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %5, align 8
  %72 = load i32, i32* @SET, align 4
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.awg_code_generation_params*, %struct.awg_code_generation_params** %3, align 8
  %75 = call i32 @awg_generate_instr(i32 %72, i64 %73, i32 0, i32 0, %struct.awg_code_generation_params* %74)
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %57, %46
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @awg_generate_instr(i32, i64, i32, i32, %struct.awg_code_generation_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
