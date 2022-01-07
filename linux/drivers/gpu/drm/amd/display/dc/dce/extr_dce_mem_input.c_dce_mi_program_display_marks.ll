; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mi_program_display_marks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mi_program_display_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dce_watermarks = type { i32, i32 }
%struct.dce_mem_input = type { i32 }

@DPG_PIPE_STUTTER_CONTROL = common dso_local global i32 0, align 4
@STUTTER_ENABLE = common dso_local global i32 0, align 4
@STUTTER_IGNORE_FBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_input*, i64, i64, i64, i64, i32)* @dce_mi_program_display_marks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_mi_program_display_marks(%struct.mem_input* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.dce_watermarks, align 4
  %8 = alloca %struct.dce_watermarks, align 4
  %9 = alloca %struct.dce_watermarks, align 4
  %10 = alloca %struct.dce_watermarks, align 4
  %11 = alloca %struct.mem_input*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dce_mem_input*, align 8
  %14 = alloca i32, align 4
  %15 = bitcast %struct.dce_watermarks* %7 to i64*
  store i64 %1, i64* %15, align 4
  %16 = bitcast %struct.dce_watermarks* %8 to i64*
  store i64 %2, i64* %16, align 4
  %17 = bitcast %struct.dce_watermarks* %9 to i64*
  store i64 %3, i64* %17, align 4
  %18 = bitcast %struct.dce_watermarks* %10 to i64*
  store i64 %4, i64* %18, align 4
  store %struct.mem_input* %0, %struct.mem_input** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load %struct.mem_input*, %struct.mem_input** %11, align 8
  %20 = call %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input* %19)
  store %struct.dce_mem_input* %20, %struct.dce_mem_input** %13, align 8
  %21 = load %struct.mem_input*, %struct.mem_input** %11, align 8
  %22 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 1
  store i32 %31, i32* %14, align 4
  %32 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %33 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @program_urgency_watermark(%struct.dce_mem_input* %32, i32 2, i32 %34, i32 %35)
  %37 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %38 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @program_urgency_watermark(%struct.dce_mem_input* %37, i32 1, i32 %39, i32 %40)
  %42 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL, align 4
  %43 = load i32, i32* @STUTTER_ENABLE, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @STUTTER_IGNORE_FBC, align 4
  %46 = call i32 @REG_UPDATE_2(i32 %42, i32 %43, i32 %44, i32 %45, i32 1)
  %47 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %48 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @program_nbp_watermark(%struct.dce_mem_input* %47, i32 2, i32 %49)
  %51 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %52 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @program_nbp_watermark(%struct.dce_mem_input* %51, i32 1, i32 %53)
  %55 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %56 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @program_stutter_watermark(%struct.dce_mem_input* %55, i32 2, i32 %57)
  %59 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %60 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @program_stutter_watermark(%struct.dce_mem_input* %59, i32 1, i32 %61)
  ret void
}

declare dso_local %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input*) #1

declare dso_local i32 @program_urgency_watermark(%struct.dce_mem_input*, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @program_nbp_watermark(%struct.dce_mem_input*, i32, i32) #1

declare dso_local i32 @program_stutter_watermark(%struct.dce_mem_input*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
