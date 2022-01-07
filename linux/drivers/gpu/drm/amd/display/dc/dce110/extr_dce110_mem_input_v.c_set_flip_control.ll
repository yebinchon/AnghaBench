; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_set_flip_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_set_flip_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmUNP_FLIP_CONTROL = common dso_local global i32 0, align 4
@UNP_FLIP_CONTROL = common dso_local global i32 0, align 4
@GRPH_SURFACE_UPDATE_PENDING_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, i32)* @set_flip_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_flip_control(%struct.dce_mem_input* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_mem_input*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %7 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @mmUNP_FLIP_CONTROL, align 4
  %11 = call i32 @dm_read_reg(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @UNP_FLIP_CONTROL, align 4
  %14 = load i32, i32* @GRPH_SURFACE_UPDATE_PENDING_MODE, align 4
  %15 = call i32 @set_reg_field_value(i32 %12, i32 1, i32 %13, i32 %14)
  %16 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %17 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @mmUNP_FLIP_CONTROL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dm_write_reg(i32 %19, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
