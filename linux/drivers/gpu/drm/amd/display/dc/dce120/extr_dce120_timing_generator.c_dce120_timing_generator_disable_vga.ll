; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_disable_vga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_disable_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { i32 }

@mmD2VGA_CONTROL = common dso_local global i64 0, align 8
@mmD1VGA_CONTROL = common dso_local global i64 0, align 8
@mmD3VGA_CONTROL = common dso_local global i64 0, align 8
@mmD4VGA_CONTROL = common dso_local global i64 0, align 8
@mmD5VGA_CONTROL = common dso_local global i64 0, align 8
@mmD6VGA_CONTROL = common dso_local global i64 0, align 8
@D1VGA_CONTROL = common dso_local global i32 0, align 4
@D1VGA_MODE_ENABLE = common dso_local global i32 0, align 4
@D1VGA_TIMING_SELECT = common dso_local global i32 0, align 4
@D1VGA_SYNC_POLARITY_SELECT = common dso_local global i32 0, align 4
@D1VGA_OVERSCAN_COLOR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_disable_vga(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %7 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %6)
  store %struct.dce110_timing_generator* %7, %struct.dce110_timing_generator** %5, align 8
  %8 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %9 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %32 [
    i32 133, label %11
    i32 132, label %12
    i32 131, label %16
    i32 130, label %20
    i32 129, label %24
    i32 128, label %28
  ]

11:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i64, i64* @mmD2VGA_CONTROL, align 8
  %14 = load i64, i64* @mmD1VGA_CONTROL, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %3, align 8
  br label %33

16:                                               ; preds = %1
  %17 = load i64, i64* @mmD3VGA_CONTROL, align 8
  %18 = load i64, i64* @mmD1VGA_CONTROL, align 8
  %19 = sub nsw i64 %17, %18
  store i64 %19, i64* %3, align 8
  br label %33

20:                                               ; preds = %1
  %21 = load i64, i64* @mmD4VGA_CONTROL, align 8
  %22 = load i64, i64* @mmD1VGA_CONTROL, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %3, align 8
  br label %33

24:                                               ; preds = %1
  %25 = load i64, i64* @mmD5VGA_CONTROL, align 8
  %26 = load i64, i64* @mmD1VGA_CONTROL, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %3, align 8
  br label %33

28:                                               ; preds = %1
  %29 = load i64, i64* @mmD6VGA_CONTROL, align 8
  %30 = load i64, i64* @mmD1VGA_CONTROL, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %3, align 8
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %28, %24, %20, %16, %12, %11
  %34 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %35 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @mmD1VGA_CONTROL, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @dm_read_reg_soc15(i32 %36, i64 %37, i64 %38)
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @D1VGA_CONTROL, align 4
  %42 = load i32, i32* @D1VGA_MODE_ENABLE, align 4
  %43 = call i32 @set_reg_field_value(i64 %40, i32 0, i32 %41, i32 %42)
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* @D1VGA_CONTROL, align 4
  %46 = load i32, i32* @D1VGA_TIMING_SELECT, align 4
  %47 = call i32 @set_reg_field_value(i64 %44, i32 0, i32 %45, i32 %46)
  %48 = load i64, i64* %4, align 8
  %49 = load i32, i32* @D1VGA_CONTROL, align 4
  %50 = load i32, i32* @D1VGA_SYNC_POLARITY_SELECT, align 4
  %51 = call i32 @set_reg_field_value(i64 %48, i32 0, i32 %49, i32 %50)
  %52 = load i64, i64* %4, align 8
  %53 = load i32, i32* @D1VGA_CONTROL, align 4
  %54 = load i32, i32* @D1VGA_OVERSCAN_COLOR_EN, align 4
  %55 = call i32 @set_reg_field_value(i64 %52, i32 0, i32 %53, i32 %54)
  %56 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %57 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @mmD1VGA_CONTROL, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @dm_write_reg_soc15(i32 %58, i64 %59, i64 %60, i64 %61)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i64 @dm_read_reg_soc15(i32, i64, i64) #1

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg_soc15(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
