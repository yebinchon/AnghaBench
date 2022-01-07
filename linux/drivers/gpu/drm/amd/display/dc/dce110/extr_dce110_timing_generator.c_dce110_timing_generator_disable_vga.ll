; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_disable_vga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_disable_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { i32 }

@mmD1VGA_CONTROL = common dso_local global i32 0, align 4
@mmD2VGA_CONTROL = common dso_local global i32 0, align 4
@mmD3VGA_CONTROL = common dso_local global i32 0, align 4
@mmD4VGA_CONTROL = common dso_local global i32 0, align 4
@mmD5VGA_CONTROL = common dso_local global i32 0, align 4
@mmD6VGA_CONTROL = common dso_local global i32 0, align 4
@D1VGA_CONTROL = common dso_local global i32 0, align 4
@D1VGA_MODE_ENABLE = common dso_local global i32 0, align 4
@D1VGA_TIMING_SELECT = common dso_local global i32 0, align 4
@D1VGA_SYNC_POLARITY_SELECT = common dso_local global i32 0, align 4
@D1VGA_OVERSCAN_COLOR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_disable_vga(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %7 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %6)
  store %struct.dce110_timing_generator* %7, %struct.dce110_timing_generator** %5, align 8
  %8 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %9 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 133, label %11
    i32 132, label %13
    i32 131, label %15
    i32 130, label %17
    i32 129, label %19
    i32 128, label %21
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @mmD1VGA_CONTROL, align 4
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @mmD2VGA_CONTROL, align 4
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @mmD3VGA_CONTROL, align 4
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @mmD4VGA_CONTROL, align 4
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @mmD5VGA_CONTROL, align 4
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @mmD6VGA_CONTROL, align 4
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %21, %19, %17, %15, %13, %11
  %25 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %26 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @dm_read_reg(i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @D1VGA_CONTROL, align 4
  %32 = load i32, i32* @D1VGA_MODE_ENABLE, align 4
  %33 = call i32 @set_reg_field_value(i32 %30, i32 0, i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @D1VGA_CONTROL, align 4
  %36 = load i32, i32* @D1VGA_TIMING_SELECT, align 4
  %37 = call i32 @set_reg_field_value(i32 %34, i32 0, i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @D1VGA_CONTROL, align 4
  %40 = load i32, i32* @D1VGA_SYNC_POLARITY_SELECT, align 4
  %41 = call i32 @set_reg_field_value(i32 %38, i32 0, i32 %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @D1VGA_CONTROL, align 4
  %44 = load i32, i32* @D1VGA_OVERSCAN_COLOR_EN, align 4
  %45 = call i32 @set_reg_field_value(i32 %42, i32 0, i32 %43, i32 %44)
  %46 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %47 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dm_write_reg(i32 %48, i32 %49, i32 %50)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
