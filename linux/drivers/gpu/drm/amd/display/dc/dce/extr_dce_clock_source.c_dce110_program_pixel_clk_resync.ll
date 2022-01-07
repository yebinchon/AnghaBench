; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce110_program_pixel_clk_resync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce110_program_pixel_clk_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_clk_src = type { i32 }

@RESYNC_CNTL = common dso_local global i32 0, align 4
@DCCG_DEEP_COLOR_CNTL1 = common dso_local global i32 0, align 4
@SIGNAL_TYPE_HDMI_TYPE_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_clk_src*, i32, i32)* @dce110_program_pixel_clk_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_program_pixel_clk_resync(%struct.dce110_clk_src* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dce110_clk_src*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dce110_clk_src* %0, %struct.dce110_clk_src** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @RESYNC_CNTL, align 4
  %8 = load i32, i32* @DCCG_DEEP_COLOR_CNTL1, align 4
  %9 = call i32 @REG_UPDATE(i32 %7, i32 %8, i32 0)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SIGNAL_TYPE_HDMI_TYPE_A, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %33

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %32 [
    i32 128, label %16
    i32 131, label %20
    i32 130, label %24
    i32 129, label %28
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @RESYNC_CNTL, align 4
  %18 = load i32, i32* @DCCG_DEEP_COLOR_CNTL1, align 4
  %19 = call i32 @REG_UPDATE(i32 %17, i32 %18, i32 0)
  br label %33

20:                                               ; preds = %14
  %21 = load i32, i32* @RESYNC_CNTL, align 4
  %22 = load i32, i32* @DCCG_DEEP_COLOR_CNTL1, align 4
  %23 = call i32 @REG_UPDATE(i32 %21, i32 %22, i32 1)
  br label %33

24:                                               ; preds = %14
  %25 = load i32, i32* @RESYNC_CNTL, align 4
  %26 = load i32, i32* @DCCG_DEEP_COLOR_CNTL1, align 4
  %27 = call i32 @REG_UPDATE(i32 %25, i32 %26, i32 2)
  br label %33

28:                                               ; preds = %14
  %29 = load i32, i32* @RESYNC_CNTL, align 4
  %30 = load i32, i32* @DCCG_DEEP_COLOR_CNTL1, align 4
  %31 = call i32 @REG_UPDATE(i32 %29, i32 %30, i32 3)
  br label %33

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %13, %32, %28, %24, %20, %16
  ret void
}

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
