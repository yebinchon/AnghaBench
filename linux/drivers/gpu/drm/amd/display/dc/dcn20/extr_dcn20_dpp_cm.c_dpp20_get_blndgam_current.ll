; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_get_blndgam_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_get_blndgam_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dcn20_dpp = type { i32 }

@CM_BLNDGAM_LUT_WRITE_EN_MASK = common dso_local global i32 0, align 4
@CM_BLNDGAM_CONFIG_STATUS = common dso_local global i32 0, align 4
@LUT_BYPASS = common dso_local global i32 0, align 4
@LUT_RAM_A = common dso_local global i32 0, align 4
@LUT_RAM_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp*)* @dpp20_get_blndgam_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp20_get_blndgam_current(%struct.dpp* %0) #0 {
  %2 = alloca %struct.dpp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %2, align 8
  %6 = load %struct.dpp*, %struct.dpp** %2, align 8
  %7 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %6)
  store %struct.dcn20_dpp* %7, %struct.dcn20_dpp** %5, align 8
  %8 = load i32, i32* @CM_BLNDGAM_LUT_WRITE_EN_MASK, align 4
  %9 = load i32, i32* @CM_BLNDGAM_CONFIG_STATUS, align 4
  %10 = call i32 @REG_GET(i32 %8, i32 %9, i32* %4)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %18 [
    i32 0, label %12
    i32 1, label %14
    i32 2, label %16
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @LUT_BYPASS, align 4
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @LUT_RAM_A, align 4
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @LUT_RAM_B, align 4
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @LUT_BYPASS, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %16, %14, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
