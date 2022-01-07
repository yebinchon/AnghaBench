; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_pixel_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_program_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_mem_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SURFACE_PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i32 0, align 4
@mmUNP_GRPH_CONTROL = common dso_local global i32 0, align 4
@UNP_GRPH_CONTROL = common dso_local global i32 0, align 4
@GRPH_DEPTH = common dso_local global i32 0, align 4
@GRPH_FORMAT = common dso_local global i32 0, align 4
@mmUNP_GRPH_CONTROL_EXP = common dso_local global i32 0, align 4
@UNP_GRPH_CONTROL_EXP = common dso_local global i32 0, align 4
@VIDEO_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_mem_input*, i32)* @program_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_pixel_format(%struct.dce_mem_input* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_mem_input*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dce_mem_input* %0, %struct.dce_mem_input** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %62

13:                                               ; preds = %2
  %14 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %15 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @mmUNP_GRPH_CONTROL, align 4
  %19 = call i32 @dm_read_reg(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %26 [
    i32 131, label %21
    i32 130, label %22
    i32 132, label %23
    i32 136, label %23
    i32 133, label %24
    i32 138, label %24
    i32 137, label %24
    i32 135, label %25
    i32 139, label %25
    i32 134, label %25
  ]

21:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

22:                                               ; preds = %13
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %27

23:                                               ; preds = %13, %13
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

24:                                               ; preds = %13, %13, %13
  store i32 2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %27

25:                                               ; preds = %13, %13, %13
  store i32 3, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

26:                                               ; preds = %13
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %25, %24, %23, %22, %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %31 = load i32, i32* @GRPH_DEPTH, align 4
  %32 = call i32 @set_reg_field_value(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @UNP_GRPH_CONTROL, align 4
  %36 = load i32, i32* @GRPH_FORMAT, align 4
  %37 = call i32 @set_reg_field_value(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %39 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @mmUNP_GRPH_CONTROL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dm_write_reg(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %46 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @mmUNP_GRPH_CONTROL_EXP, align 4
  %50 = call i32 @dm_read_reg(i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @UNP_GRPH_CONTROL_EXP, align 4
  %53 = load i32, i32* @VIDEO_FORMAT, align 4
  %54 = call i32 @set_reg_field_value(i32 %51, i32 0, i32 %52, i32 %53)
  %55 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %56 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @mmUNP_GRPH_CONTROL_EXP, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dm_write_reg(i32 %58, i32 %59, i32 %60)
  br label %86

62:                                               ; preds = %2
  %63 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %64 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @mmUNP_GRPH_CONTROL_EXP, align 4
  %68 = call i32 @dm_read_reg(i32 %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %4, align 4
  switch i32 %69, label %72 [
    i32 129, label %70
    i32 128, label %71
  ]

70:                                               ; preds = %62
  store i32 2, i32* %9, align 4
  br label %73

71:                                               ; preds = %62
  store i32 3, i32* %9, align 4
  br label %73

72:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %71, %70
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @UNP_GRPH_CONTROL_EXP, align 4
  %77 = load i32, i32* @VIDEO_FORMAT, align 4
  %78 = call i32 @set_reg_field_value(i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.dce_mem_input*, %struct.dce_mem_input** %3, align 8
  %80 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @mmUNP_GRPH_CONTROL_EXP, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @dm_write_reg(i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %73, %27
  ret void
}

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
