; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_is_engine_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_is_engine_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_aux = type { i32 }
%struct.aux_engine_dce110 = type { i32 }

@AUX_ARB_CONTROL = common dso_local global i32 0, align 4
@AUX_REG_RW_CNTL_STATUS = common dso_local global i32 0, align 4
@DMCU_CAN_ACCESS_AUX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_aux*)* @is_engine_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_engine_available(%struct.dce_aux* %0) #0 {
  %2 = alloca %struct.dce_aux*, align 8
  %3 = alloca %struct.aux_engine_dce110*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.dce_aux* %0, %struct.dce_aux** %2, align 8
  %6 = load %struct.dce_aux*, %struct.dce_aux** %2, align 8
  %7 = call %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux* %6)
  store %struct.aux_engine_dce110* %7, %struct.aux_engine_dce110** %3, align 8
  %8 = load i32, i32* @AUX_ARB_CONTROL, align 4
  %9 = call i64 @REG_READ(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @AUX_ARB_CONTROL, align 4
  %12 = load i32, i32* @AUX_REG_RW_CNTL_STATUS, align 4
  %13 = call i64 @get_reg_field_value(i64 %10, i32 %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @DMCU_CAN_ACCESS_AUX, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux*) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i64 @get_reg_field_value(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
