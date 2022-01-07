; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_get_defer_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_get_defer_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { i32, i32 }

@DISPLAY_DONGLE_DP_VGA_CONVERTER = common dso_local global i32 0, align 4
@DISPLAY_DONGLE_DP_DVI_CONVERTER = common dso_local global i32 0, align 4
@DISPLAY_DONGLE_DP_HDMI_CONVERTER = common dso_local global i32 0, align 4
@DP_TRANSLATOR_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_defer_delay(%struct.ddc_service* %0) #0 {
  %2 = alloca %struct.ddc_service*, align 8
  %3 = alloca i32, align 4
  store %struct.ddc_service* %0, %struct.ddc_service** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ddc_service*, %struct.ddc_service** %2, align 8
  %5 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %34 [
    i32 129, label %7
    i32 128, label %32
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @DISPLAY_DONGLE_DP_VGA_CONVERTER, align 4
  %9 = load %struct.ddc_service*, %struct.ddc_service** %2, align 8
  %10 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* @DISPLAY_DONGLE_DP_DVI_CONVERTER, align 4
  %15 = load %struct.ddc_service*, %struct.ddc_service** %2, align 8
  %16 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @DISPLAY_DONGLE_DP_HDMI_CONVERTER, align 4
  %21 = load %struct.ddc_service*, %struct.ddc_service** %2, align 8
  %22 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %13, %7
  %26 = load i32, i32* @DP_TRANSLATOR_DELAY, align 4
  store i32 %26, i32* %3, align 4
  %27 = load %struct.ddc_service*, %struct.ddc_service** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @defer_delay_converter_wa(%struct.ddc_service* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %25
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @DP_TRANSLATOR_DELAY, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %32, %31
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @defer_delay_converter_wa(%struct.ddc_service*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
