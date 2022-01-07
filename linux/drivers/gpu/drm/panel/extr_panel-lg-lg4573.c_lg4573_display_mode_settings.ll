; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lg-lg4573.c_lg4573_display_mode_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lg-lg4573.c_lg4573_display_mode_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg4573 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@lg4573_display_mode_settings.display_mode_settings = internal constant [32 x i32] [i32 28730, i32 29296, i32 28849, i32 29192, i32 29243, i32 29199, i32 28850, i32 29184, i32 29384, i32 28851, i32 29184, i32 28852, i32 29184, i32 28853, i32 29250, i32 29200, i32 29200, i32 29184, i32 29216, i32 28854, i32 29195, i32 29199, i32 29244, i32 29203, i32 29203, i32 29416, i32 28855, i32 29254, i32 29190, i32 29196, i32 29184, i32 29184], align 16
@.str = private unnamed_addr constant [32 x i8] c"transfer display mode settings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg4573*)* @lg4573_display_mode_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg4573_display_mode_settings(%struct.lg4573* %0) #0 {
  %2 = alloca %struct.lg4573*, align 8
  store %struct.lg4573* %0, %struct.lg4573** %2, align 8
  %3 = load %struct.lg4573*, %struct.lg4573** %2, align 8
  %4 = getelementptr inbounds %struct.lg4573, %struct.lg4573* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @dev_dbg(i32 %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.lg4573*, %struct.lg4573** %2, align 8
  %9 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @lg4573_display_mode_settings.display_mode_settings, i64 0, i64 0))
  %10 = call i32 @lg4573_spi_write_u16_array(%struct.lg4573* %8, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @lg4573_display_mode_settings.display_mode_settings, i64 0, i64 0), i32 %9)
  ret i32 %10
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @lg4573_spi_write_u16_array(%struct.lg4573*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
