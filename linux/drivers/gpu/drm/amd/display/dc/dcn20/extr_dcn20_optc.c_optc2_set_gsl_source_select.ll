; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_set_gsl_source_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_set_gsl_source_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.optc = type { i32 }

@GSL_SOURCE_SELECT = common dso_local global i32 0, align 4
@GSL0_READY_SOURCE_SEL = common dso_local global i32 0, align 4
@GSL1_READY_SOURCE_SEL = common dso_local global i32 0, align 4
@GSL2_READY_SOURCE_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc2_set_gsl_source_select(%struct.timing_generator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %9 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %8)
  store %struct.optc* %9, %struct.optc** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %26 [
    i32 1, label %11
    i32 2, label %16
    i32 3, label %21
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @GSL_SOURCE_SELECT, align 4
  %13 = load i32, i32* @GSL0_READY_SOURCE_SEL, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @REG_UPDATE(i32 %12, i32 %13, i32 %14)
  br label %27

16:                                               ; preds = %3
  %17 = load i32, i32* @GSL_SOURCE_SELECT, align 4
  %18 = load i32, i32* @GSL1_READY_SOURCE_SEL, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @REG_UPDATE(i32 %17, i32 %18, i32 %19)
  br label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @GSL_SOURCE_SELECT, align 4
  %23 = load i32, i32* @GSL2_READY_SOURCE_SEL, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @REG_UPDATE(i32 %22, i32 %23, i32 %24)
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %21, %16, %11
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
