; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_lock_doublebuffer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_lock_doublebuffer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.optc = type { i32 }

@OTG_GLOBAL_CONTROL1 = common dso_local global i32 0, align 4
@MASTER_UPDATE_LOCK_DB_EN = common dso_local global i32 0, align 4
@OTG_GLOBAL_CONTROL2 = common dso_local global i32 0, align 4
@GLOBAL_UPDATE_LOCK_EN = common dso_local global i32 0, align 4
@DIG_UPDATE_LOCATION = common dso_local global i32 0, align 4
@OTG_V_BLANK_START_END = common dso_local global i32 0, align 4
@OTG_V_BLANK_START = common dso_local global i32 0, align 4
@OTG_H_BLANK_START_END = common dso_local global i32 0, align 4
@OTG_H_BLANK_START = common dso_local global i32 0, align 4
@MASTER_UPDATE_LOCK_DB_X = common dso_local global i32 0, align 4
@MASTER_UPDATE_LOCK_DB_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc2_lock_doublebuffer_enable(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  %3 = alloca %struct.optc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  %6 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %7 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %6)
  store %struct.optc* %7, %struct.optc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @OTG_GLOBAL_CONTROL1, align 4
  %9 = load i32, i32* @MASTER_UPDATE_LOCK_DB_EN, align 4
  %10 = call i32 @REG_UPDATE(i32 %8, i32 %9, i32 1)
  %11 = load i32, i32* @OTG_GLOBAL_CONTROL2, align 4
  %12 = load i32, i32* @GLOBAL_UPDATE_LOCK_EN, align 4
  %13 = load i32, i32* @DIG_UPDATE_LOCATION, align 4
  %14 = call i32 @REG_UPDATE_2(i32 %11, i32 %12, i32 1, i32 %13, i32 20)
  %15 = load i32, i32* @OTG_V_BLANK_START_END, align 4
  %16 = load i32, i32* @OTG_V_BLANK_START, align 4
  %17 = call i32 @REG_GET(i32 %15, i32 %16, i32* %4)
  %18 = load i32, i32* @OTG_H_BLANK_START_END, align 4
  %19 = load i32, i32* @OTG_H_BLANK_START, align 4
  %20 = call i32 @REG_GET(i32 %18, i32 %19, i32* %5)
  %21 = load i32, i32* @OTG_GLOBAL_CONTROL1, align 4
  %22 = load i32, i32* @MASTER_UPDATE_LOCK_DB_X, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, 200
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* @MASTER_UPDATE_LOCK_DB_Y, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @REG_UPDATE_2(i32 %21, i32 %22, i32 %25, i32 %26, i32 %28)
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
