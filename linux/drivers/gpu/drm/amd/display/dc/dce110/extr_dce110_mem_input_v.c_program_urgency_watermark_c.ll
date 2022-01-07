; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_urgency_watermark_c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_urgency_watermark_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dce_watermarks = type { i32 }

@mmDPGV1_PIPE_URGENCY_CONTROL = common dso_local global i32 0, align 4
@mmDPGV1_WATERMARK_MASK_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_context*, i32, i32)* @program_urgency_watermark_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_urgency_watermark_c(%struct.dc_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dce_watermarks, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %9 = load i32, i32* @mmDPGV1_PIPE_URGENCY_CONTROL, align 4
  %10 = load i32, i32* @mmDPGV1_WATERMARK_MASK_CONTROL, align 4
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @program_urgency_watermark(%struct.dc_context* %8, i32 %9, i32 %10, i32 %13, i32 %11)
  ret void
}

declare dso_local i32 @program_urgency_watermark(%struct.dc_context*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
