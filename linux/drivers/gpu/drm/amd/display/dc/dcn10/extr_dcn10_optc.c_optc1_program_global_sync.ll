; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_program_global_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_program_global_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.optc = type { i32, i32, i32, i32 }

@OTG_VSTARTUP_PARAM = common dso_local global i32 0, align 4
@VSTARTUP_START = common dso_local global i32 0, align 4
@OTG_VUPDATE_PARAM = common dso_local global i32 0, align 4
@VUPDATE_OFFSET = common dso_local global i32 0, align 4
@VUPDATE_WIDTH = common dso_local global i32 0, align 4
@OTG_VREADY_PARAM = common dso_local global i32 0, align 4
@VREADY_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_program_global_sync(%struct.timing_generator* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.timing_generator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %13 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %12)
  store %struct.optc* %13, %struct.optc** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.optc*, %struct.optc** %11, align 8
  %16 = getelementptr inbounds %struct.optc, %struct.optc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.optc*, %struct.optc** %11, align 8
  %19 = getelementptr inbounds %struct.optc, %struct.optc* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.optc*, %struct.optc** %11, align 8
  %22 = getelementptr inbounds %struct.optc, %struct.optc* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.optc*, %struct.optc** %11, align 8
  %25 = getelementptr inbounds %struct.optc, %struct.optc* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.optc*, %struct.optc** %11, align 8
  %27 = getelementptr inbounds %struct.optc, %struct.optc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %55

32:                                               ; preds = %5
  %33 = load i32, i32* @OTG_VSTARTUP_PARAM, align 4
  %34 = load i32, i32* @VSTARTUP_START, align 4
  %35 = load %struct.optc*, %struct.optc** %11, align 8
  %36 = getelementptr inbounds %struct.optc, %struct.optc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @REG_SET(i32 %33, i32 0, i32 %34, i32 %37)
  %39 = load i32, i32* @OTG_VUPDATE_PARAM, align 4
  %40 = load i32, i32* @VUPDATE_OFFSET, align 4
  %41 = load %struct.optc*, %struct.optc** %11, align 8
  %42 = getelementptr inbounds %struct.optc, %struct.optc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @VUPDATE_WIDTH, align 4
  %45 = load %struct.optc*, %struct.optc** %11, align 8
  %46 = getelementptr inbounds %struct.optc, %struct.optc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @REG_SET_2(i32 %39, i32 0, i32 %40, i32 %43, i32 %44, i32 %47)
  %49 = load i32, i32* @OTG_VREADY_PARAM, align 4
  %50 = load i32, i32* @VREADY_OFFSET, align 4
  %51 = load %struct.optc*, %struct.optc** %11, align 8
  %52 = getelementptr inbounds %struct.optc, %struct.optc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @REG_SET(i32 %49, i32 0, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %32, %30
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
