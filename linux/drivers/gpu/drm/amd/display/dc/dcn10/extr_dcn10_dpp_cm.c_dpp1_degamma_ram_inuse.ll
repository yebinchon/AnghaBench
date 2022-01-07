; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_degamma_ram_inuse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_degamma_ram_inuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dcn10_dpp = type { i32 }

@CM_IGAM_LUT_RW_CONTROL = common dso_local global i32 0, align 4
@CM_IGAM_DGAM_CONFIG_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp*, i32*)* @dpp1_degamma_ram_inuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp1_degamma_ram_inuse(%struct.dpp* %0, i32* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn10_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.dpp*, %struct.dpp** %3, align 8
  %9 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %8)
  store %struct.dcn10_dpp* %9, %struct.dcn10_dpp** %7, align 8
  %10 = load i32, i32* @CM_IGAM_LUT_RW_CONTROL, align 4
  %11 = load i32, i32* @CM_IGAM_DGAM_CONFIG_STATUS, align 4
  %12 = call i32 @REG_GET(i32 %10, i32 %11, i32* %6)
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 9
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  store i32 1, i32* %16, align 4
  store i32 1, i32* %5, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32*, i32** %4, align 8
  store i32 0, i32* %21, align 4
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %17
  br label %23

23:                                               ; preds = %22, %15
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
