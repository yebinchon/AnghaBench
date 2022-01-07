; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_disable_hpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_dce110_link_encoder_disable_hpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_encoder = type { i32 }
%struct.dce110_link_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dc_context* }
%struct.dc_context = type { i32 }

@DC_HPD_CONTROL = common dso_local global i32 0, align 4
@DC_HPD_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_link_encoder_disable_hpd(%struct.link_encoder* %0) #0 {
  %2 = alloca %struct.link_encoder*, align 8
  %3 = alloca %struct.dce110_link_encoder*, align 8
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.link_encoder* %0, %struct.link_encoder** %2, align 8
  %7 = load %struct.link_encoder*, %struct.link_encoder** %2, align 8
  %8 = call %struct.dce110_link_encoder* @TO_DCE110_LINK_ENC(%struct.link_encoder* %7)
  store %struct.dce110_link_encoder* %8, %struct.dce110_link_encoder** %3, align 8
  %9 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  store %struct.dc_context* %12, %struct.dc_context** %4, align 8
  %13 = load i32, i32* @DC_HPD_CONTROL, align 4
  %14 = call i32 @HPD_REG(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dm_read_reg(%struct.dc_context* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DC_HPD_CONTROL, align 4
  %20 = load i32, i32* @DC_HPD_EN, align 4
  %21 = call i32 @set_reg_field_value(i32 %18, i32 0, i32 %19, i32 %20)
  ret void
}

declare dso_local %struct.dce110_link_encoder* @TO_DCE110_LINK_ENC(%struct.link_encoder*) #1

declare dso_local i32 @HPD_REG(i32) #1

declare dso_local i32 @dm_read_reg(%struct.dc_context*, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
