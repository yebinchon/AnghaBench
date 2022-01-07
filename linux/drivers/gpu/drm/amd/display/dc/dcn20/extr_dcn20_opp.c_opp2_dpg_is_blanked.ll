; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_opp.c_opp2_dpg_is_blanked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_opp.c_opp2_dpg_is_blanked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }
%struct.dcn20_opp = type { i32 }

@DPG_CONTROL = common dso_local global i32 0, align 4
@DPG_EN = common dso_local global i32 0, align 4
@DPG_MODE = common dso_local global i32 0, align 4
@DPG_STATUS = common dso_local global i32 0, align 4
@DPG_DOUBLE_BUFFER_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opp2_dpg_is_blanked(%struct.output_pixel_processor* %0) #0 {
  %2 = alloca %struct.output_pixel_processor*, align 8
  %3 = alloca %struct.dcn20_opp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.output_pixel_processor* %0, %struct.output_pixel_processor** %2, align 8
  %7 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %2, align 8
  %8 = call %struct.dcn20_opp* @TO_DCN20_OPP(%struct.output_pixel_processor* %7)
  store %struct.dcn20_opp* %8, %struct.dcn20_opp** %3, align 8
  %9 = load i32, i32* @DPG_CONTROL, align 4
  %10 = load i32, i32* @DPG_EN, align 4
  %11 = load i32, i32* @DPG_MODE, align 4
  %12 = call i32 @REG_GET_2(i32 %9, i32 %10, i32* %4, i32 %11, i32* %5)
  %13 = load i32, i32* @DPG_STATUS, align 4
  %14 = load i32, i32* @DPG_DOUBLE_BUFFER_PENDING, align 4
  %15 = call i32 @REG_GET(i32 %13, i32 %14, i32* %6)
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %18, %1
  %22 = phi i1 [ false, %1 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local %struct.dcn20_opp* @TO_DCN20_OPP(%struct.output_pixel_processor*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
