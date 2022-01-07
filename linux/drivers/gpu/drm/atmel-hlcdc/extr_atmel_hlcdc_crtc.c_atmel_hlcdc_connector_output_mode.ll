; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_connector_output_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_connector_output_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { %struct.drm_encoder*, %struct.drm_connector* }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { %struct.drm_encoder*, %struct.drm_display_info }
%struct.drm_display_info = type { i32, i32* }

@ATMEL_HLCDC_RGB444_OUTPUT = common dso_local global i32 0, align 4
@ATMEL_HLCDC_RGB565_OUTPUT = common dso_local global i32 0, align 4
@ATMEL_HLCDC_RGB666_OUTPUT = common dso_local global i32 0, align 4
@ATMEL_HLCDC_RGB888_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector_state*)* @atmel_hlcdc_connector_output_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_connector_output_mode(%struct.drm_connector_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector_state*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_info*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %3, align 8
  %9 = load %struct.drm_connector_state*, %struct.drm_connector_state** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %9, i32 0, i32 1
  %11 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  store %struct.drm_connector* %11, %struct.drm_connector** %4, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 1
  store %struct.drm_display_info* %13, %struct.drm_display_info** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.drm_connector_state*, %struct.drm_connector_state** %3, align 8
  %15 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %14, i32 0, i32 0
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %15, align 8
  store %struct.drm_encoder* %16, %struct.drm_encoder** %6, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %18 = icmp ne %struct.drm_encoder* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 0
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %21, align 8
  store %struct.drm_encoder* %22, %struct.drm_encoder** %6, align 8
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %25 = call i32 @atmel_hlcdc_encoder_get_bus_fmt(%struct.drm_encoder* %24)
  switch i32 %25, label %35 [
    i32 0, label %26
    i32 131, label %27
    i32 130, label %29
    i32 129, label %31
    i32 128, label %33
  ]

26:                                               ; preds = %23
  br label %38

27:                                               ; preds = %23
  %28 = load i32, i32* @ATMEL_HLCDC_RGB444_OUTPUT, align 4
  store i32 %28, i32* %2, align 4
  br label %76

29:                                               ; preds = %23
  %30 = load i32, i32* @ATMEL_HLCDC_RGB565_OUTPUT, align 4
  store i32 %30, i32* %2, align 4
  br label %76

31:                                               ; preds = %23
  %32 = load i32, i32* @ATMEL_HLCDC_RGB666_OUTPUT, align 4
  store i32 %32, i32* %2, align 4
  br label %76

33:                                               ; preds = %23
  %34 = load i32, i32* @ATMEL_HLCDC_RGB888_OUTPUT, align 4
  store i32 %34, i32* %2, align 4
  br label %76

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %76

38:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %71, %38
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %42 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %47 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %69 [
    i32 131, label %53
    i32 130, label %57
    i32 129, label %61
    i32 128, label %65
  ]

53:                                               ; preds = %45
  %54 = load i32, i32* @ATMEL_HLCDC_RGB444_OUTPUT, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %70

57:                                               ; preds = %45
  %58 = load i32, i32* @ATMEL_HLCDC_RGB565_OUTPUT, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %70

61:                                               ; preds = %45
  %62 = load i32, i32* @ATMEL_HLCDC_RGB666_OUTPUT, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %70

65:                                               ; preds = %45
  %66 = load i32, i32* @ATMEL_HLCDC_RGB888_OUTPUT, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %70

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %69, %65, %61, %57, %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %39

74:                                               ; preds = %39
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %35, %33, %31, %29, %27
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @atmel_hlcdc_encoder_get_bus_fmt(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
