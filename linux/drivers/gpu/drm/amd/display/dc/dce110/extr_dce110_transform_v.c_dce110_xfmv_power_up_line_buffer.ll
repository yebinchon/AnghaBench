; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_dce110_xfmv_power_up_line_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_dce110_xfmv_power_up_line_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform = type { i32 }
%struct.dce_transform = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@mmLBV_MEMORY_CTRL = common dso_local global i32 0, align 4
@LBV_MEMORY_CTRL = common dso_local global i32 0, align 4
@LB_MEMORY_CONFIG = common dso_local global i32 0, align 4
@LB_MEMORY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transform*)* @dce110_xfmv_power_up_line_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce110_xfmv_power_up_line_buffer(%struct.transform* %0) #0 {
  %2 = alloca %struct.transform*, align 8
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca i32, align 4
  store %struct.transform* %0, %struct.transform** %2, align 8
  %5 = load %struct.transform*, %struct.transform** %2, align 8
  %6 = call %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform* %5)
  store %struct.dce_transform* %6, %struct.dce_transform** %3, align 8
  %7 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %8 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @mmLBV_MEMORY_CTRL, align 4
  %12 = call i32 @dm_read_reg(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @LBV_MEMORY_CTRL, align 4
  %15 = load i32, i32* @LB_MEMORY_CONFIG, align 4
  %16 = call i32 @set_reg_field_value(i32 %13, i32 0, i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %19 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LBV_MEMORY_CTRL, align 4
  %22 = load i32, i32* @LB_MEMORY_SIZE, align 4
  %23 = call i32 @set_reg_field_value(i32 %17, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %25 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @mmLBV_MEMORY_CTRL, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dm_write_reg(i32 %27, i32 %28, i32 %29)
  ret i32 1
}

declare dso_local %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
