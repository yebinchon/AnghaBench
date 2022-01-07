; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce_mem_input_v_is_surface_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce_mem_input_v_is_surface_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { i32, i32 }
%struct.dce_mem_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmUNP_GRPH_UPDATE = common dso_local global i32 0, align 4
@UNP_GRPH_UPDATE = common dso_local global i32 0, align 4
@GRPH_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_mem_input_v_is_surface_pending(%struct.mem_input* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_input*, align 8
  %4 = alloca %struct.dce_mem_input*, align 8
  %5 = alloca i32, align 4
  store %struct.mem_input* %0, %struct.mem_input** %3, align 8
  %6 = load %struct.mem_input*, %struct.mem_input** %3, align 8
  %7 = call %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input* %6)
  store %struct.dce_mem_input* %7, %struct.dce_mem_input** %4, align 8
  %8 = load %struct.dce_mem_input*, %struct.dce_mem_input** %4, align 8
  %9 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @mmUNP_GRPH_UPDATE, align 4
  %13 = call i32 @dm_read_reg(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @UNP_GRPH_UPDATE, align 4
  %16 = load i32, i32* @GRPH_SURFACE_UPDATE_PENDING, align 4
  %17 = call i64 @get_reg_field_value(i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.mem_input*, %struct.mem_input** %3, align 8
  %22 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mem_input*, %struct.mem_input** %3, align 8
  %25 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i64 @get_reg_field_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
