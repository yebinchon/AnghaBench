; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_opp.c_opp2_dpg_set_blank_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_opp.c_opp2_dpg_set_blank_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }
%struct.tg_color = type { i32, i32, i32 }
%struct.dcn20_opp = type { i32 }

@DPG_COLOUR_B_CB = common dso_local global i32 0, align 4
@DPG_COLOUR1_B_CB = common dso_local global i32 0, align 4
@DPG_COLOUR0_B_CB = common dso_local global i32 0, align 4
@DPG_COLOUR_G_Y = common dso_local global i32 0, align 4
@DPG_COLOUR1_G_Y = common dso_local global i32 0, align 4
@DPG_COLOUR0_G_Y = common dso_local global i32 0, align 4
@DPG_COLOUR_R_CR = common dso_local global i32 0, align 4
@DPG_COLOUR1_R_CR = common dso_local global i32 0, align 4
@DPG_COLOUR0_R_CR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opp2_dpg_set_blank_color(%struct.output_pixel_processor* %0, %struct.tg_color* %1) #0 {
  %3 = alloca %struct.output_pixel_processor*, align 8
  %4 = alloca %struct.tg_color*, align 8
  %5 = alloca %struct.dcn20_opp*, align 8
  store %struct.output_pixel_processor* %0, %struct.output_pixel_processor** %3, align 8
  store %struct.tg_color* %1, %struct.tg_color** %4, align 8
  %6 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %3, align 8
  %7 = call %struct.dcn20_opp* @TO_DCN20_OPP(%struct.output_pixel_processor* %6)
  store %struct.dcn20_opp* %7, %struct.dcn20_opp** %5, align 8
  %8 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %9 = call i32 @ASSERT(%struct.tg_color* %8)
  %10 = load i32, i32* @DPG_COLOUR_B_CB, align 4
  %11 = load i32, i32* @DPG_COLOUR1_B_CB, align 4
  %12 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %13 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 6
  %16 = load i32, i32* @DPG_COLOUR0_B_CB, align 4
  %17 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %18 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 6
  %21 = call i32 @REG_SET_2(i32 %10, i32 0, i32 %11, i32 %15, i32 %16, i32 %20)
  %22 = load i32, i32* @DPG_COLOUR_G_Y, align 4
  %23 = load i32, i32* @DPG_COLOUR1_G_Y, align 4
  %24 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %25 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 6
  %28 = load i32, i32* @DPG_COLOUR0_G_Y, align 4
  %29 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %30 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 6
  %33 = call i32 @REG_SET_2(i32 %22, i32 0, i32 %23, i32 %27, i32 %28, i32 %32)
  %34 = load i32, i32* @DPG_COLOUR_R_CR, align 4
  %35 = load i32, i32* @DPG_COLOUR1_R_CR, align 4
  %36 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %37 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 6
  %40 = load i32, i32* @DPG_COLOUR0_R_CR, align 4
  %41 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %42 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 6
  %45 = call i32 @REG_SET_2(i32 %34, i32 0, i32 %35, i32 %39, i32 %40, i32 %44)
  ret void
}

declare dso_local %struct.dcn20_opp* @TO_DCN20_OPP(%struct.output_pixel_processor*) #1

declare dso_local i32 @ASSERT(%struct.tg_color*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
