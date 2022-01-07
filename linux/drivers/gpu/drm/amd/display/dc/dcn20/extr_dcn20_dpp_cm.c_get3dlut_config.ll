; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_get3dlut_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_get3dlut_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dcn20_dpp = type { i32 }

@CM_3DLUT_READ_WRITE_CONTROL = common dso_local global i32 0, align 4
@CM_3DLUT_CONFIG_STATUS = common dso_local global i32 0, align 4
@CM_3DLUT_30BIT_EN = common dso_local global i32 0, align 4
@LUT_BYPASS = common dso_local global i32 0, align 4
@LUT_RAM_A = common dso_local global i32 0, align 4
@LUT_RAM_B = common dso_local global i32 0, align 4
@CM_3DLUT_MODE = common dso_local global i32 0, align 4
@CM_3DLUT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp*, i32*, i32*)* @get3dlut_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get3dlut_config(%struct.dpp* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.dpp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.dpp*, %struct.dpp** %4, align 8
  %13 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %12)
  store %struct.dcn20_dpp* %13, %struct.dcn20_dpp** %11, align 8
  %14 = load i32, i32* @CM_3DLUT_READ_WRITE_CONTROL, align 4
  %15 = load i32, i32* @CM_3DLUT_CONFIG_STATUS, align 4
  %16 = load i32, i32* @CM_3DLUT_30BIT_EN, align 4
  %17 = call i32 @REG_GET_2(i32 %14, i32 %15, i32* %7, i32 %16, i32* %8)
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %25 [
    i32 0, label %19
    i32 1, label %21
    i32 2, label %23
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @LUT_BYPASS, align 4
  store i32 %20, i32* %10, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @LUT_RAM_A, align 4
  store i32 %22, i32* %10, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @LUT_RAM_B, align 4
  store i32 %24, i32* %10, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @LUT_BYPASS, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %25, %23, %21, %19
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  store i32 0, i32* %31, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* @CM_3DLUT_MODE, align 4
  %36 = load i32, i32* @CM_3DLUT_SIZE, align 4
  %37 = call i32 @REG_GET(i32 %35, i32 %36, i32* %9)
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32*, i32** %5, align 8
  store i32 1, i32* %41, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32*, i32** %5, align 8
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
