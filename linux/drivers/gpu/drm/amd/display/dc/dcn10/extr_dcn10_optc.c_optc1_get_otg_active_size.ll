; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_get_otg_active_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_get_otg_active_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.optc = type { i32 }

@OTG_CONTROL = common dso_local global i32 0, align 4
@OTG_MASTER_EN = common dso_local global i32 0, align 4
@OTG_V_BLANK_START_END = common dso_local global i32 0, align 4
@OTG_V_BLANK_START = common dso_local global i32 0, align 4
@OTG_V_BLANK_END = common dso_local global i32 0, align 4
@OTG_H_BLANK_START_END = common dso_local global i32 0, align 4
@OTG_H_BLANK_START = common dso_local global i32 0, align 4
@OTG_H_BLANK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optc1_get_otg_active_size(%struct.timing_generator* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timing_generator*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %15 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %14)
  store %struct.optc* %15, %struct.optc** %13, align 8
  %16 = load i32, i32* @OTG_CONTROL, align 4
  %17 = load i32, i32* @OTG_MASTER_EN, align 4
  %18 = call i32 @REG_GET(i32 %16, i32 %17, i64* %8)
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

22:                                               ; preds = %3
  %23 = load i32, i32* @OTG_V_BLANK_START_END, align 4
  %24 = load i32, i32* @OTG_V_BLANK_START, align 4
  %25 = load i32, i32* @OTG_V_BLANK_END, align 4
  %26 = call i32 @REG_GET_2(i32 %23, i32 %24, i64* %9, i32 %25, i64* %10)
  %27 = load i32, i32* @OTG_H_BLANK_START_END, align 4
  %28 = load i32, i32* @OTG_H_BLANK_START, align 4
  %29 = load i32, i32* @OTG_H_BLANK_END, align 4
  %30 = call i32 @REG_GET_2(i32 %27, i32 %28, i64* %11, i32 %29, i64* %12)
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %22, %21
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i64*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
