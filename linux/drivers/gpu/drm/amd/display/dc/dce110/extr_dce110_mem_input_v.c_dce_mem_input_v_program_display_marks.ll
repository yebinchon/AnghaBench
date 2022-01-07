; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce_mem_input_v_program_display_marks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce_mem_input_v_program_display_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { i32 }
%struct.dce_watermarks = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_mem_input_v_program_display_marks(%struct.mem_input* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dce_watermarks, align 4
  %8 = alloca %struct.dce_watermarks, align 4
  %9 = alloca %struct.dce_watermarks, align 4
  %10 = alloca %struct.dce_watermarks, align 4
  %11 = alloca %struct.mem_input*, align 8
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %7, i32 0, i32 0
  store i32 %1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %8, i32 0, i32 0
  store i32 %2, i32* %14, align 4
  %15 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %9, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  %16 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %10, i32 0, i32 0
  store i32 %4, i32* %16, align 4
  store %struct.mem_input* %0, %struct.mem_input** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.mem_input*, %struct.mem_input** %11, align 8
  %18 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %12, align 4
  %21 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @program_urgency_watermark_l(i32 %19, i32 %22, i32 %20)
  %24 = load %struct.mem_input*, %struct.mem_input** %11, align 8
  %25 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @program_nbp_watermark_l(i32 %26, i32 %28)
  %30 = load %struct.mem_input*, %struct.mem_input** %11, align 8
  %31 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @program_stutter_watermark_l(i32 %32, i32 %34)
  ret void
}

declare dso_local i32 @program_urgency_watermark_l(i32, i32, i32) #1

declare dso_local i32 @program_nbp_watermark_l(i32, i32) #1

declare dso_local i32 @program_stutter_watermark_l(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
