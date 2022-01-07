; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_cnv_set_alpha_keyer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_cnv_set_alpha_keyer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.cnv_color_keyer_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dcn20_dpp = type { i32 }

@COLOR_KEYER_CONTROL = common dso_local global i32 0, align 4
@COLOR_KEYER_EN = common dso_local global i32 0, align 4
@COLOR_KEYER_MODE = common dso_local global i32 0, align 4
@COLOR_KEYER_ALPHA = common dso_local global i32 0, align 4
@COLOR_KEYER_ALPHA_LOW = common dso_local global i32 0, align 4
@COLOR_KEYER_ALPHA_HIGH = common dso_local global i32 0, align 4
@COLOR_KEYER_RED = common dso_local global i32 0, align 4
@COLOR_KEYER_RED_LOW = common dso_local global i32 0, align 4
@COLOR_KEYER_RED_HIGH = common dso_local global i32 0, align 4
@COLOR_KEYER_GREEN = common dso_local global i32 0, align 4
@COLOR_KEYER_GREEN_LOW = common dso_local global i32 0, align 4
@COLOR_KEYER_GREEN_HIGH = common dso_local global i32 0, align 4
@COLOR_KEYER_BLUE = common dso_local global i32 0, align 4
@COLOR_KEYER_BLUE_LOW = common dso_local global i32 0, align 4
@COLOR_KEYER_BLUE_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp2_cnv_set_alpha_keyer(%struct.dpp* %0, %struct.cnv_color_keyer_params* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca %struct.cnv_color_keyer_params*, align 8
  %5 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store %struct.cnv_color_keyer_params* %1, %struct.cnv_color_keyer_params** %4, align 8
  %6 = load %struct.dpp*, %struct.dpp** %3, align 8
  %7 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %6)
  store %struct.dcn20_dpp* %7, %struct.dcn20_dpp** %5, align 8
  %8 = load i32, i32* @COLOR_KEYER_CONTROL, align 4
  %9 = load i32, i32* @COLOR_KEYER_EN, align 4
  %10 = load %struct.cnv_color_keyer_params*, %struct.cnv_color_keyer_params** %4, align 8
  %11 = getelementptr inbounds %struct.cnv_color_keyer_params, %struct.cnv_color_keyer_params* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @REG_UPDATE(i32 %8, i32 %9, i32 %12)
  %14 = load i32, i32* @COLOR_KEYER_CONTROL, align 4
  %15 = load i32, i32* @COLOR_KEYER_MODE, align 4
  %16 = load %struct.cnv_color_keyer_params*, %struct.cnv_color_keyer_params** %4, align 8
  %17 = getelementptr inbounds %struct.cnv_color_keyer_params, %struct.cnv_color_keyer_params* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @REG_UPDATE(i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* @COLOR_KEYER_ALPHA, align 4
  %21 = load i32, i32* @COLOR_KEYER_ALPHA_LOW, align 4
  %22 = load %struct.cnv_color_keyer_params*, %struct.cnv_color_keyer_params** %4, align 8
  %23 = getelementptr inbounds %struct.cnv_color_keyer_params, %struct.cnv_color_keyer_params* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 %24)
  %26 = load i32, i32* @COLOR_KEYER_ALPHA, align 4
  %27 = load i32, i32* @COLOR_KEYER_ALPHA_HIGH, align 4
  %28 = load %struct.cnv_color_keyer_params*, %struct.cnv_color_keyer_params** %4, align 8
  %29 = getelementptr inbounds %struct.cnv_color_keyer_params, %struct.cnv_color_keyer_params* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @REG_UPDATE(i32 %26, i32 %27, i32 %30)
  %32 = load i32, i32* @COLOR_KEYER_RED, align 4
  %33 = load i32, i32* @COLOR_KEYER_RED_LOW, align 4
  %34 = load %struct.cnv_color_keyer_params*, %struct.cnv_color_keyer_params** %4, align 8
  %35 = getelementptr inbounds %struct.cnv_color_keyer_params, %struct.cnv_color_keyer_params* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @REG_UPDATE(i32 %32, i32 %33, i32 %36)
  %38 = load i32, i32* @COLOR_KEYER_RED, align 4
  %39 = load i32, i32* @COLOR_KEYER_RED_HIGH, align 4
  %40 = load %struct.cnv_color_keyer_params*, %struct.cnv_color_keyer_params** %4, align 8
  %41 = getelementptr inbounds %struct.cnv_color_keyer_params, %struct.cnv_color_keyer_params* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @REG_UPDATE(i32 %38, i32 %39, i32 %42)
  %44 = load i32, i32* @COLOR_KEYER_GREEN, align 4
  %45 = load i32, i32* @COLOR_KEYER_GREEN_LOW, align 4
  %46 = load %struct.cnv_color_keyer_params*, %struct.cnv_color_keyer_params** %4, align 8
  %47 = getelementptr inbounds %struct.cnv_color_keyer_params, %struct.cnv_color_keyer_params* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @REG_UPDATE(i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* @COLOR_KEYER_GREEN, align 4
  %51 = load i32, i32* @COLOR_KEYER_GREEN_HIGH, align 4
  %52 = load %struct.cnv_color_keyer_params*, %struct.cnv_color_keyer_params** %4, align 8
  %53 = getelementptr inbounds %struct.cnv_color_keyer_params, %struct.cnv_color_keyer_params* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @REG_UPDATE(i32 %50, i32 %51, i32 %54)
  %56 = load i32, i32* @COLOR_KEYER_BLUE, align 4
  %57 = load i32, i32* @COLOR_KEYER_BLUE_LOW, align 4
  %58 = load %struct.cnv_color_keyer_params*, %struct.cnv_color_keyer_params** %4, align 8
  %59 = getelementptr inbounds %struct.cnv_color_keyer_params, %struct.cnv_color_keyer_params* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @REG_UPDATE(i32 %56, i32 %57, i32 %60)
  %62 = load i32, i32* @COLOR_KEYER_BLUE, align 4
  %63 = load i32, i32* @COLOR_KEYER_BLUE_HIGH, align 4
  %64 = load %struct.cnv_color_keyer_params*, %struct.cnv_color_keyer_params** %4, align 8
  %65 = getelementptr inbounds %struct.cnv_color_keyer_params, %struct.cnv_color_keyer_params* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @REG_UPDATE(i32 %62, i32 %63, i32 %66)
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
