; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc20_get_ogam_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc20_get_ogam_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.dcn20_mpc = type { i32 }

@MPCC_OGAM_LUT_RAM_CONTROL = common dso_local global i32* null, align 8
@MPCC_OGAM_CONFIG_STATUS = common dso_local global i32 0, align 4
@LUT_BYPASS = common dso_local global i32 0, align 4
@LUT_RAM_A = common dso_local global i32 0, align 4
@LUT_RAM_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc*, i32)* @mpc20_get_ogam_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc20_get_ogam_current(%struct.mpc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn20_mpc*, align 8
  store %struct.mpc* %0, %struct.mpc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mpc*, %struct.mpc** %3, align 8
  %9 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %8)
  store %struct.dcn20_mpc* %9, %struct.dcn20_mpc** %7, align 8
  %10 = load i32*, i32** @MPCC_OGAM_LUT_RAM_CONTROL, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MPCC_OGAM_CONFIG_STATUS, align 4
  %16 = call i32 @REG_GET(i32 %14, i32 %15, i32* %6)
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %24 [
    i32 0, label %18
    i32 1, label %20
    i32 2, label %22
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @LUT_BYPASS, align 4
  store i32 %19, i32* %5, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @LUT_RAM_A, align 4
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @LUT_RAM_B, align 4
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @LUT_BYPASS, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %22, %20, %18
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
