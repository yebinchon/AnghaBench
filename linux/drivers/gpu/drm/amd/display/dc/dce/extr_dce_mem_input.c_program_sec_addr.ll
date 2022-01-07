; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_program_sec_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_program_sec_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@GRPH_SECONDARY_DFQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, i64)* @program_sec_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_sec_addr(%struct.dce_mem_input* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca %struct.dce_mem_input*, align 8
  %5 = bitcast %struct.TYPE_3__* %3 to i64*
  store i64 %1, i64* %5, align 4
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %4, align 8
  %6 = load i32, i32* @GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 4
  %7 = load i32, i32* @GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @REG_SET(i32 %6, i32 0, i32 %7, i32 %9)
  %11 = load i32, i32* @GRPH_SECONDARY_SURFACE_ADDRESS, align 4
  %12 = load i32, i32* @GRPH_SECONDARY_SURFACE_ADDRESS, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 8
  %16 = load i32, i32* @GRPH_SECONDARY_DFQ_ENABLE, align 4
  %17 = call i32 @REG_SET_2(i32 %11, i32 0, i32 %12, i32 %15, i32 %16, i32 0)
  ret void
}

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
