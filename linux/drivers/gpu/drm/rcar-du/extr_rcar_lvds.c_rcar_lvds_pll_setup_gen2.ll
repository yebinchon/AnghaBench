; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_pll_setup_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_pll_setup_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_lvds = type { i32 }

@LVDPLLCR_CEEN = common dso_local global i32 0, align 4
@LVDPLLCR_COSEL = common dso_local global i32 0, align 4
@LVDPLLCR_PLLDLYCNT_38M = common dso_local global i32 0, align 4
@LVDPLLCR_PLLDLYCNT_60M = common dso_local global i32 0, align 4
@LVDPLLCR_PLLDLYCNT_121M = common dso_local global i32 0, align 4
@LVDPLLCR_PLLDLYCNT_150M = common dso_local global i32 0, align 4
@LVDPLLCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_lvds*, i32)* @rcar_lvds_pll_setup_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_lvds_pll_setup_gen2(%struct.rcar_lvds* %0, i32 %1) #0 {
  %3 = alloca %struct.rcar_lvds*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rcar_lvds* %0, %struct.rcar_lvds** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ult i32 %6, 39000000
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @LVDPLLCR_CEEN, align 4
  %10 = load i32, i32* @LVDPLLCR_COSEL, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @LVDPLLCR_PLLDLYCNT_38M, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ult i32 %15, 61000000
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* @LVDPLLCR_CEEN, align 4
  %19 = load i32, i32* @LVDPLLCR_COSEL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @LVDPLLCR_PLLDLYCNT_60M, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %35

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = icmp ult i32 %24, 121000000
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @LVDPLLCR_CEEN, align 4
  %28 = load i32, i32* @LVDPLLCR_COSEL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @LVDPLLCR_PLLDLYCNT_121M, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @LVDPLLCR_PLLDLYCNT_150M, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %26
  br label %35

35:                                               ; preds = %34, %17
  br label %36

36:                                               ; preds = %35, %8
  %37 = load %struct.rcar_lvds*, %struct.rcar_lvds** %3, align 8
  %38 = load i32, i32* @LVDPLLCR, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @rcar_lvds_write(%struct.rcar_lvds*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
