; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_pri_addr_l.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_pri_addr_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@UNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_L__GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_L_MASK = common dso_local global i32 0, align 4
@UNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_L = common dso_local global i32 0, align 4
@GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_L = common dso_local global i32 0, align 4
@mmUNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_L = common dso_local global i32 0, align 4
@UNP_GRPH_PRIMARY_SURFACE_ADDRESS_L__GRPH_PRIMARY_SURFACE_ADDRESS_L__SHIFT = common dso_local global i32 0, align 4
@UNP_GRPH_PRIMARY_SURFACE_ADDRESS_L = common dso_local global i32 0, align 4
@GRPH_PRIMARY_SURFACE_ADDRESS_L = common dso_local global i32 0, align 4
@mmUNP_GRPH_PRIMARY_SURFACE_ADDRESS_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, i64)* @program_pri_addr_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_pri_addr_l(%struct.dce_mem_input* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.dce_mem_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_5__* %3 to i64*
  store i64 %1, i64* %7, align 4
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_L__GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_L_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @UNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_L, align 4
  %15 = load i32, i32* @GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_L, align 4
  %16 = call i32 @set_reg_field_value(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %18 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @mmUNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_L, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dm_write_reg(i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UNP_GRPH_PRIMARY_SURFACE_ADDRESS_L__GRPH_PRIMARY_SURFACE_ADDRESS_L__SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UNP_GRPH_PRIMARY_SURFACE_ADDRESS_L, align 4
  %31 = load i32, i32* @GRPH_PRIMARY_SURFACE_ADDRESS_L, align 4
  %32 = call i32 @set_reg_field_value(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %34 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @mmUNP_GRPH_PRIMARY_SURFACE_ADDRESS_L, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dm_write_reg(i32 %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
