; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_ddc_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_ddc_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32 }
%struct.ddc = type { i32 }

@CHANNEL_ID_UNKNOWN = common dso_local global i32 0, align 4
@CHANNEL_ID_DDC1 = common dso_local global i32 0, align 4
@CHANNEL_ID_DDC2 = common dso_local global i32 0, align 4
@CHANNEL_ID_DDC3 = common dso_local global i32 0, align 4
@CHANNEL_ID_DDC4 = common dso_local global i32 0, align 4
@CHANNEL_ID_DDC5 = common dso_local global i32 0, align 4
@CHANNEL_ID_DDC6 = common dso_local global i32 0, align 4
@CHANNEL_ID_DDC_VGA = common dso_local global i32 0, align 4
@CHANNEL_ID_I2C_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*)* @get_ddc_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ddc_line(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca %struct.ddc*, align 8
  %4 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %5 = load i32, i32* @CHANNEL_ID_UNKNOWN, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %7 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ddc* @dal_ddc_service_get_ddc_pin(i32 %8)
  store %struct.ddc* %9, %struct.ddc** %3, align 8
  %10 = load %struct.ddc*, %struct.ddc** %3, align 8
  %11 = icmp ne %struct.ddc* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.ddc*, %struct.ddc** %3, align 8
  %14 = call i32 @dal_ddc_get_line(%struct.ddc* %13)
  switch i32 %14, label %31 [
    i32 135, label %15
    i32 134, label %17
    i32 133, label %19
    i32 132, label %21
    i32 131, label %23
    i32 130, label %25
    i32 129, label %27
    i32 128, label %29
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* @CHANNEL_ID_DDC1, align 4
  store i32 %16, i32* %4, align 4
  br label %33

17:                                               ; preds = %12
  %18 = load i32, i32* @CHANNEL_ID_DDC2, align 4
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %12
  %20 = load i32, i32* @CHANNEL_ID_DDC3, align 4
  store i32 %20, i32* %4, align 4
  br label %33

21:                                               ; preds = %12
  %22 = load i32, i32* @CHANNEL_ID_DDC4, align 4
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %12
  %24 = load i32, i32* @CHANNEL_ID_DDC5, align 4
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %12
  %26 = load i32, i32* @CHANNEL_ID_DDC6, align 4
  store i32 %26, i32* %4, align 4
  br label %33

27:                                               ; preds = %12
  %28 = load i32, i32* @CHANNEL_ID_DDC_VGA, align 4
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %12
  %30 = load i32, i32* @CHANNEL_ID_I2C_PAD, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %12
  %32 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %33

33:                                               ; preds = %31, %29, %27, %25, %23, %21, %19, %17, %15
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.ddc* @dal_ddc_service_get_ddc_pin(i32) #1

declare dso_local i32 @dal_ddc_get_line(%struct.ddc*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
