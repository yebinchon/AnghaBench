; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_layer_check_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_layer_check_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_layer = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.komeda_fb = type { i32 }
%struct.komeda_data_flow_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KOMEDA_COMPONENT_WB_LAYER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalidate src_w %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalidate src_h %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_layer*, %struct.komeda_fb*, %struct.komeda_data_flow_cfg*)* @komeda_layer_check_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_layer_check_cfg(%struct.komeda_layer* %0, %struct.komeda_fb* %1, %struct.komeda_data_flow_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.komeda_layer*, align 8
  %6 = alloca %struct.komeda_fb*, align 8
  %7 = alloca %struct.komeda_data_flow_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.komeda_layer* %0, %struct.komeda_layer** %5, align 8
  store %struct.komeda_fb* %1, %struct.komeda_fb** %6, align 8
  store %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg** %7, align 8
  %12 = load %struct.komeda_fb*, %struct.komeda_fb** %6, align 8
  %13 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %14 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %17 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @komeda_fb_is_layer_supported(%struct.komeda_fb* %12, i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %91

24:                                               ; preds = %3
  %25 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %26 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KOMEDA_COMPONENT_WB_LAYER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %33 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %36 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %39 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %42 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  br label %57

44:                                               ; preds = %24
  %45 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %46 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %49 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %52 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %55 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %44, %31
  %58 = load %struct.komeda_fb*, %struct.komeda_fb** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @komeda_fb_check_src_coords(%struct.komeda_fb* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %91

68:                                               ; preds = %57
  %69 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %70 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %69, i32 0, i32 1
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @in_range(i32* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %91

79:                                               ; preds = %68
  %80 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %81 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %80, i32 0, i32 0
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @in_range(i32* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %91

90:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %85, %74, %65, %21
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @komeda_fb_is_layer_supported(%struct.komeda_fb*, i32, i32) #1

declare dso_local i64 @komeda_fb_check_src_coords(%struct.komeda_fb*, i32, i32, i32, i32) #1

declare dso_local i32 @in_range(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
