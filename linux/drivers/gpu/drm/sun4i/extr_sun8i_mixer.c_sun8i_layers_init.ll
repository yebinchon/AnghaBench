; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_mixer.c_sun8i_layers_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_mixer.c_sun8i_layers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_device = type { i32 }
%struct.sunxi_engine = type { i32 }
%struct.sun8i_mixer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sun8i_vi_layer = type { %struct.drm_plane }
%struct.sun8i_ui_layer = type { %struct.drm_plane }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Couldn't initialize overlay plane\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Couldn't initialize %s plane\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane** (%struct.drm_device*, %struct.sunxi_engine*)* @sun8i_layers_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane** @sun8i_layers_init(%struct.drm_device* %0, %struct.sunxi_engine* %1) #0 {
  %3 = alloca %struct.drm_plane**, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.sunxi_engine*, align 8
  %6 = alloca %struct.drm_plane**, align 8
  %7 = alloca %struct.sun8i_mixer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sun8i_vi_layer*, align 8
  %10 = alloca %struct.sun8i_ui_layer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.sunxi_engine* %1, %struct.sunxi_engine** %5, align 8
  %11 = load %struct.sunxi_engine*, %struct.sunxi_engine** %5, align 8
  %12 = call %struct.sun8i_mixer* @engine_to_sun8i_mixer(%struct.sunxi_engine* %11)
  store %struct.sun8i_mixer* %12, %struct.sun8i_mixer** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %17 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %22 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %20, %25
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.drm_plane** @devm_kcalloc(i32 %15, i32 %27, i32 8, i32 %28)
  store %struct.drm_plane** %29, %struct.drm_plane*** %6, align 8
  %30 = load %struct.drm_plane**, %struct.drm_plane*** %6, align 8
  %31 = icmp ne %struct.drm_plane** %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.drm_plane** @ERR_PTR(i32 %34)
  store %struct.drm_plane** %35, %struct.drm_plane*** %3, align 8
  br label %119

36:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %67, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %40 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %37
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call %struct.sun8i_vi_layer* @sun8i_vi_layer_init_one(%struct.drm_device* %46, %struct.sun8i_mixer* %47, i32 %48)
  store %struct.sun8i_vi_layer* %49, %struct.sun8i_vi_layer** %9, align 8
  %50 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %9, align 8
  %51 = call i64 @IS_ERR(%struct.sun8i_vi_layer* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %9, align 8
  %59 = call %struct.drm_plane** @ERR_CAST(%struct.sun8i_vi_layer* %58)
  store %struct.drm_plane** %59, %struct.drm_plane*** %3, align 8
  br label %119

60:                                               ; preds = %45
  %61 = load %struct.sun8i_vi_layer*, %struct.sun8i_vi_layer** %9, align 8
  %62 = getelementptr inbounds %struct.sun8i_vi_layer, %struct.sun8i_vi_layer* %61, i32 0, i32 0
  %63 = load %struct.drm_plane**, %struct.drm_plane*** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %63, i64 %65
  store %struct.drm_plane* %62, %struct.drm_plane** %66, align 8
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %37

70:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %114, %70
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %74 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %117

79:                                               ; preds = %71
  %80 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %81 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call %struct.sun8i_vi_layer* @sun8i_ui_layer_init_one(%struct.drm_device* %80, %struct.sun8i_mixer* %81, i32 %82)
  %84 = bitcast %struct.sun8i_vi_layer* %83 to %struct.sun8i_ui_layer*
  store %struct.sun8i_ui_layer* %84, %struct.sun8i_ui_layer** %10, align 8
  %85 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %10, align 8
  %86 = bitcast %struct.sun8i_ui_layer* %85 to %struct.sun8i_vi_layer*
  %87 = call i64 @IS_ERR(%struct.sun8i_vi_layer* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %79
  %90 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %10, align 8
  %99 = bitcast %struct.sun8i_ui_layer* %98 to %struct.sun8i_vi_layer*
  %100 = call %struct.drm_plane** @ERR_CAST(%struct.sun8i_vi_layer* %99)
  store %struct.drm_plane** %100, %struct.drm_plane*** %3, align 8
  br label %119

101:                                              ; preds = %79
  %102 = load %struct.sun8i_ui_layer*, %struct.sun8i_ui_layer** %10, align 8
  %103 = getelementptr inbounds %struct.sun8i_ui_layer, %struct.sun8i_ui_layer* %102, i32 0, i32 0
  %104 = load %struct.drm_plane**, %struct.drm_plane*** %6, align 8
  %105 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %106 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %104, i64 %112
  store %struct.drm_plane* %103, %struct.drm_plane** %113, align 8
  br label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %71

117:                                              ; preds = %71
  %118 = load %struct.drm_plane**, %struct.drm_plane*** %6, align 8
  store %struct.drm_plane** %118, %struct.drm_plane*** %3, align 8
  br label %119

119:                                              ; preds = %117, %89, %53, %32
  %120 = load %struct.drm_plane**, %struct.drm_plane*** %3, align 8
  ret %struct.drm_plane** %120
}

declare dso_local %struct.sun8i_mixer* @engine_to_sun8i_mixer(%struct.sunxi_engine*) #1

declare dso_local %struct.drm_plane** @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local %struct.drm_plane** @ERR_PTR(i32) #1

declare dso_local %struct.sun8i_vi_layer* @sun8i_vi_layer_init_one(%struct.drm_device*, %struct.sun8i_mixer*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sun8i_vi_layer*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.drm_plane** @ERR_CAST(%struct.sun8i_vi_layer*) #1

declare dso_local %struct.sun8i_vi_layer* @sun8i_ui_layer_init_one(%struct.drm_device*, %struct.sun8i_mixer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
