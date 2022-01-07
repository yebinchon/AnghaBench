; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_drm_writeback_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_drm_writeback_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32, i32, i32 }
%struct.drm_writeback_connector = type { i32, %struct.drm_property_blob*, i32, i32, i32, i32, i32, %struct.drm_connector }
%struct.drm_property_blob = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_connector = type { i8*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_connector_funcs = type { i32 }
%struct.drm_encoder_helper_funcs = type { i32 }

@drm_writeback_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_VIRTUAL = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_WRITEBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"CONNECTOR:%d-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_writeback_connector_init(%struct.drm_device* %0, %struct.drm_writeback_connector* %1, %struct.drm_connector_funcs* %2, %struct.drm_encoder_helper_funcs* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_writeback_connector*, align 8
  %10 = alloca %struct.drm_connector_funcs*, align 8
  %11 = alloca %struct.drm_encoder_helper_funcs*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_property_blob*, align 8
  %15 = alloca %struct.drm_connector*, align 8
  %16 = alloca %struct.drm_mode_config*, align 8
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store %struct.drm_writeback_connector* %1, %struct.drm_writeback_connector** %9, align 8
  store %struct.drm_connector_funcs* %2, %struct.drm_connector_funcs** %10, align 8
  store %struct.drm_encoder_helper_funcs* %3, %struct.drm_encoder_helper_funcs** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %9, align 8
  %19 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %18, i32 0, i32 7
  store %struct.drm_connector* %19, %struct.drm_connector** %15, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  store %struct.drm_mode_config* %21, %struct.drm_mode_config** %16, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %23 = call i32 @create_writeback_properties(%struct.drm_device* %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %17, align 4
  store i32 %27, i32* %7, align 4
  br label %134

28:                                               ; preds = %6
  %29 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %12, align 8
  %35 = call %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device* %29, i32 %33, i32* %34)
  store %struct.drm_property_blob* %35, %struct.drm_property_blob** %14, align 8
  %36 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  %37 = call i64 @IS_ERR(%struct.drm_property_blob* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  %41 = call i32 @PTR_ERR(%struct.drm_property_blob* %40)
  store i32 %41, i32* %7, align 4
  br label %134

42:                                               ; preds = %28
  %43 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %9, align 8
  %44 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %43, i32 0, i32 0
  %45 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %11, align 8
  %46 = call i32 @drm_encoder_helper_add(i32* %44, %struct.drm_encoder_helper_funcs* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %48 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %9, align 8
  %49 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %48, i32 0, i32 0
  %50 = load i32, i32* @DRM_MODE_ENCODER_VIRTUAL, align 4
  %51 = call i32 @drm_encoder_init(%struct.drm_device* %47, i32* %49, i32* @drm_writeback_encoder_funcs, i32 %50, i32* null)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %130

55:                                               ; preds = %42
  %56 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %57 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %59 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %60 = load %struct.drm_connector_funcs*, %struct.drm_connector_funcs** %10, align 8
  %61 = load i32, i32* @DRM_MODE_CONNECTOR_WRITEBACK, align 4
  %62 = call i32 @drm_connector_init(%struct.drm_device* %58, %struct.drm_connector* %59, %struct.drm_connector_funcs* %60, i32 %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %126

66:                                               ; preds = %55
  %67 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %68 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %9, align 8
  %69 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %68, i32 0, i32 0
  %70 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %67, i32* %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %123

74:                                               ; preds = %66
  %75 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %9, align 8
  %76 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %75, i32 0, i32 6
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %9, align 8
  %79 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %78, i32 0, i32 5
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = call i32 @dma_fence_context_alloc(i32 1)
  %82 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %9, align 8
  %83 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %9, align 8
  %85 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %84, i32 0, i32 3
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %9, align 8
  %88 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %91 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %95 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @snprintf(i32 %89, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %93, i8* %96)
  %98 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %99 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %98, i32 0, i32 1
  %100 = load %struct.drm_mode_config*, %struct.drm_mode_config** %16, align 8
  %101 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @drm_object_attach_property(%struct.TYPE_4__* %99, i32 %102, i32 0)
  %104 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %105 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %104, i32 0, i32 1
  %106 = load %struct.drm_mode_config*, %struct.drm_mode_config** %16, align 8
  %107 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @drm_object_attach_property(%struct.TYPE_4__* %105, i32 %108, i32 0)
  %110 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %111 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %110, i32 0, i32 1
  %112 = load %struct.drm_mode_config*, %struct.drm_mode_config** %16, align 8
  %113 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  %116 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @drm_object_attach_property(%struct.TYPE_4__* %111, i32 %114, i32 %118)
  %120 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  %121 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %9, align 8
  %122 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %121, i32 0, i32 1
  store %struct.drm_property_blob* %120, %struct.drm_property_blob** %122, align 8
  store i32 0, i32* %7, align 4
  br label %134

123:                                              ; preds = %73
  %124 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %125 = call i32 @drm_connector_cleanup(%struct.drm_connector* %124)
  br label %126

126:                                              ; preds = %123, %65
  %127 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %9, align 8
  %128 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %127, i32 0, i32 0
  %129 = call i32 @drm_encoder_cleanup(i32* %128)
  br label %130

130:                                              ; preds = %126, %54
  %131 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  %132 = call i32 @drm_property_blob_put(%struct.drm_property_blob* %131)
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %130, %74, %39, %26
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @create_writeback_properties(%struct.drm_device*) #1

declare dso_local %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_property_blob*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_property_blob*) #1

declare dso_local i32 @drm_encoder_helper_add(i32*, %struct.drm_encoder_helper_funcs*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, %struct.drm_connector_funcs*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @drm_object_attach_property(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @drm_encoder_cleanup(i32*) #1

declare dso_local i32 @drm_property_blob_put(%struct.drm_property_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
