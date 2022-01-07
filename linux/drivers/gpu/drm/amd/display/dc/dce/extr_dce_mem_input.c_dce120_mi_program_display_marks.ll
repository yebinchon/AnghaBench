; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce120_mi_program_display_marks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce120_mi_program_display_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dce_watermarks = type { i32, i32, i32, i32 }
%struct.dce_mem_input = type { i32 }

@DPG_PIPE_STUTTER_CONTROL = common dso_local global i32 0, align 4
@STUTTER_ENABLE = common dso_local global i32 0, align 4
@STUTTER_IGNORE_FBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_input*, i64, i64, i64, i64, %struct.dce_watermarks*, %struct.dce_watermarks*, i32)* @dce120_mi_program_display_marks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce120_mi_program_display_marks(%struct.mem_input* %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.dce_watermarks* byval(%struct.dce_watermarks) align 8 %5, %struct.dce_watermarks* byval(%struct.dce_watermarks) align 8 %6, i32 %7) #0 {
  %9 = alloca %struct.dce_watermarks, align 4
  %10 = alloca %struct.dce_watermarks, align 4
  %11 = alloca %struct.mem_input*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dce_mem_input*, align 8
  %14 = alloca i32, align 4
  %15 = bitcast %struct.dce_watermarks* %9 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %1, i64* %16, align 4
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %2, i64* %17, align 4
  %18 = bitcast %struct.dce_watermarks* %10 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %3, i64* %19, align 4
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %4, i64* %20, align 4
  store %struct.mem_input* %0, %struct.mem_input** %11, align 8
  store i32 %7, i32* %12, align 4
  %21 = load %struct.mem_input*, %struct.mem_input** %11, align 8
  %22 = call %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input* %21)
  store %struct.dce_mem_input* %22, %struct.dce_mem_input** %13, align 8
  %23 = load %struct.mem_input*, %struct.mem_input** %11, align 8
  %24 = getelementptr inbounds %struct.mem_input, %struct.mem_input* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 1
  store i32 %33, i32* %14, align 4
  %34 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %35 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %6, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @dce120_program_urgency_watermark(%struct.dce_mem_input* %34, i32 0, i32 %36, i32 %37)
  %39 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %40 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %6, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @dce120_program_urgency_watermark(%struct.dce_mem_input* %39, i32 1, i32 %41, i32 %42)
  %44 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %45 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @dce120_program_urgency_watermark(%struct.dce_mem_input* %44, i32 2, i32 %46, i32 %47)
  %49 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %50 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @dce120_program_urgency_watermark(%struct.dce_mem_input* %49, i32 3, i32 %51, i32 %52)
  %54 = load i32, i32* @DPG_PIPE_STUTTER_CONTROL, align 4
  %55 = load i32, i32* @STUTTER_ENABLE, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @STUTTER_IGNORE_FBC, align 4
  %58 = call i32 @REG_UPDATE_2(i32 %54, i32 %55, i32 %56, i32 %57, i32 1)
  %59 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %60 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %9, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @program_nbp_watermark(%struct.dce_mem_input* %59, i32 0, i32 %61)
  %63 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %64 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %9, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @program_nbp_watermark(%struct.dce_mem_input* %63, i32 1, i32 %65)
  %67 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %68 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %9, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @program_nbp_watermark(%struct.dce_mem_input* %67, i32 2, i32 %69)
  %71 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %72 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @program_nbp_watermark(%struct.dce_mem_input* %71, i32 3, i32 %73)
  %75 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %76 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %10, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %5, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dce120_program_stutter_watermark(%struct.dce_mem_input* %75, i32 0, i32 %77, i32 %79)
  %81 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %82 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %10, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %5, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dce120_program_stutter_watermark(%struct.dce_mem_input* %81, i32 1, i32 %83, i32 %85)
  %87 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %88 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %10, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %5, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dce120_program_stutter_watermark(%struct.dce_mem_input* %87, i32 2, i32 %89, i32 %91)
  %93 = load %struct.dce_mem_input*, %struct.dce_mem_input** %13, align 8
  %94 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %10, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.dce_watermarks, %struct.dce_watermarks* %5, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dce120_program_stutter_watermark(%struct.dce_mem_input* %93, i32 3, i32 %95, i32 %97)
  ret void
}

declare dso_local %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input*) #1

declare dso_local i32 @dce120_program_urgency_watermark(%struct.dce_mem_input*, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @program_nbp_watermark(%struct.dce_mem_input*, i32, i32) #1

declare dso_local i32 @dce120_program_stutter_watermark(%struct.dce_mem_input*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
