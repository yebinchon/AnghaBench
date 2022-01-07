; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp1_dppclk_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp1_dppclk_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dcn10_dpp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DPP_CONTROL = common dso_local global i32 0, align 4
@DPPCLK_RATE_CONTROL = common dso_local global i32 0, align 4
@DPP_CLOCK_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_dppclk_control(%struct.dpp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dpp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn10_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dpp*, %struct.dpp** %4, align 8
  %9 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %8)
  store %struct.dcn10_dpp* %9, %struct.dcn10_dpp** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %14 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i32, i32* @DPP_CONTROL, align 4
  %21 = load i32, i32* @DPPCLK_RATE_CONTROL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DPP_CLOCK_ENABLE, align 4
  %24 = call i32 @REG_UPDATE_2(i32 %20, i32 %21, i32 %22, i32 %23, i32 1)
  br label %29

25:                                               ; preds = %12
  %26 = load i32, i32* @DPP_CONTROL, align 4
  %27 = load i32, i32* @DPP_CLOCK_ENABLE, align 4
  %28 = call i32 @REG_UPDATE(i32 %26, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %25, %19
  br label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @DPP_CONTROL, align 4
  %32 = load i32, i32* @DPP_CLOCK_ENABLE, align 4
  %33 = call i32 @REG_UPDATE(i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
