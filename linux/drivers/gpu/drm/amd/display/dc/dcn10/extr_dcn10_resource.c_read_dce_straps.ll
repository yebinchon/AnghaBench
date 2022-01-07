; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_read_dce_straps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_read_dce_straps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.resource_straps = type { i32 }

@mmDC_PINSTRAPS = common dso_local global i64 0, align 8
@mmDC_PINSTRAPS_BASE_IDX = common dso_local global i32 0, align 4
@DC_PINSTRAPS = common dso_local global i32 0, align 4
@DC_PINSTRAPS_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_context*, %struct.resource_straps*)* @read_dce_straps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dce_straps(%struct.dc_context* %0, %struct.resource_straps* %1) #0 {
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.resource_straps*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  store %struct.resource_straps* %1, %struct.resource_straps** %4, align 8
  %5 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %6 = load i64, i64* @mmDC_PINSTRAPS, align 8
  %7 = load i32, i32* @mmDC_PINSTRAPS_BASE_IDX, align 4
  %8 = call i64 @BASE(i32 %7)
  %9 = add nsw i64 %6, %8
  %10 = load i32, i32* @DC_PINSTRAPS, align 4
  %11 = load i32, i32* @DC_PINSTRAPS_AUDIO, align 4
  %12 = call i32 @FN(i32 %10, i32 %11)
  %13 = load %struct.resource_straps*, %struct.resource_straps** %4, align 8
  %14 = getelementptr inbounds %struct.resource_straps, %struct.resource_straps* %13, i32 0, i32 0
  %15 = call i32 @generic_reg_get(%struct.dc_context* %5, i64 %9, i32 %12, i32* %14)
  ret void
}

declare dso_local i32 @generic_reg_get(%struct.dc_context*, i64, i32, i32*) #1

declare dso_local i64 @BASE(i32) #1

declare dso_local i32 @FN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
