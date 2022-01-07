; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_aux_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_aux_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_link_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dc_context* }
%struct.dc_context = type { i32 }

@AUX_CONTROL = common dso_local global i32 0, align 4
@AUX_HPD_SEL = common dso_local global i32 0, align 4
@AUX_LS_READ_EN = common dso_local global i32 0, align 4
@AUX_DPHY_RX_CONTROL0 = common dso_local global i32 0, align 4
@AUX_RX_RECEIVE_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_link_encoder*)* @aux_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aux_initialize(%struct.dce110_link_encoder* %0) #0 {
  %2 = alloca %struct.dce110_link_encoder*, align 8
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dce110_link_encoder* %0, %struct.dce110_link_encoder** %2, align 8
  %7 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %2, align 8
  %8 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  store %struct.dc_context* %10, %struct.dc_context** %3, align 8
  %11 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @AUX_CONTROL, align 4
  %16 = call i32 @AUX_REG(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dm_read_reg(%struct.dc_context* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @AUX_CONTROL, align 4
  %23 = load i32, i32* @AUX_HPD_SEL, align 4
  %24 = call i32 @set_reg_field_value(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AUX_CONTROL, align 4
  %27 = load i32, i32* @AUX_LS_READ_EN, align 4
  %28 = call i32 @set_reg_field_value(i32 %25, i32 0, i32 %26, i32 %27)
  %29 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dm_write_reg(%struct.dc_context* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @AUX_DPHY_RX_CONTROL0, align 4
  %34 = call i32 @AUX_REG(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dm_read_reg(%struct.dc_context* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @AUX_DPHY_RX_CONTROL0, align 4
  %40 = load i32, i32* @AUX_RX_RECEIVE_WINDOW, align 4
  %41 = call i32 @set_reg_field_value(i32 %38, i32 1, i32 %39, i32 %40)
  %42 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dm_write_reg(%struct.dc_context* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @AUX_REG(i32) #1

declare dso_local i32 @dm_read_reg(%struct.dc_context*, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
