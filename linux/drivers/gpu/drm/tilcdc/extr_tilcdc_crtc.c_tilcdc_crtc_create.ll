; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__*, %struct.tilcdc_drm_private* }
%struct.TYPE_4__ = type { i32 }
%struct.tilcdc_drm_private = type { %struct.drm_crtc*, i64 }
%struct.drm_crtc = type { i32 }
%struct.tilcdc_crtc = type { i32, i32, i32, i32, i32, %struct.drm_crtc, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TILCDC_PALETTE_SIZE = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@TILCDC_PALETTE_FIRST_ENTRY = common dso_local global i32 0, align 4
@tilcdc_crtc_recover_work = common dso_local global i32 0, align 4
@tilcdc_crtc_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"tilcdc crtc\00", align 1
@tilcdc_crtc_helper_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Port node not found in %pOF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tilcdc_crtc_create(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.tilcdc_drm_private*, align 8
  %5 = alloca %struct.tilcdc_crtc*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  store %struct.tilcdc_drm_private* %10, %struct.tilcdc_drm_private** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tilcdc_crtc* @devm_kzalloc(%struct.TYPE_4__* %13, i32 40, i32 %14)
  store %struct.tilcdc_crtc* %15, %struct.tilcdc_crtc** %5, align 8
  %16 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %17 = icmp ne %struct.tilcdc_crtc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %121

21:                                               ; preds = %1
  %22 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %23 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %22, i32 0, i32 8
  %24 = call i32 @init_completion(i32* %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* @TILCDC_PALETTE_SIZE, align 4
  %29 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %30 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %29, i32 0, i32 7
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* @__GFP_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call i32* @dmam_alloc_coherent(%struct.TYPE_4__* %27, i32 %28, i32* %30, i32 %33)
  %35 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %36 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %35, i32 0, i32 6
  store i32* %34, i32** %36, align 8
  %37 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %38 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %21
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %121

44:                                               ; preds = %21
  %45 = load i32, i32* @TILCDC_PALETTE_FIRST_ENTRY, align 4
  %46 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %47 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  store i32 %45, i32* %48, align 4
  %49 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %50 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %49, i32 0, i32 5
  store %struct.drm_crtc* %50, %struct.drm_crtc** %6, align 8
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %53 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %52, i32 0, i32 0
  %54 = call i32 @tilcdc_plane_init(%struct.drm_device* %51, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %117

58:                                               ; preds = %44
  %59 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %60 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %59, i32 0, i32 4
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %63 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %62, i32 0, i32 3
  %64 = call i32 @init_waitqueue_head(i32* %63)
  %65 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %66 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %65, i32 0, i32 2
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %69 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %68, i32 0, i32 1
  %70 = load i32, i32* @tilcdc_crtc_recover_work, align 4
  %71 = call i32 @INIT_WORK(i32* %69, i32 %70)
  %72 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %73 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %74 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %5, align 8
  %75 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %74, i32 0, i32 0
  %76 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %72, %struct.drm_crtc* %73, i32* %75, i32* null, i32* @tilcdc_crtc_funcs, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %58
  br label %117

80:                                               ; preds = %58
  %81 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %82 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %81, i32* @tilcdc_crtc_helper_funcs)
  %83 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %4, align 8
  %84 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %80
  %88 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %89 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @of_graph_get_port_by_id(i32 %92, i32 0)
  %94 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %95 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %97 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %87
  %101 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %102 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %105 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(%struct.TYPE_4__* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %7, align 4
  br label %117

112:                                              ; preds = %87
  br label %113

113:                                              ; preds = %112, %80
  %114 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %115 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %4, align 8
  %116 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %115, i32 0, i32 0
  store %struct.drm_crtc* %114, %struct.drm_crtc** %116, align 8
  store i32 0, i32* %2, align 4
  br label %121

117:                                              ; preds = %100, %79, %57
  %118 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %119 = call i32 @tilcdc_crtc_destroy(%struct.drm_crtc* %118)
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %113, %41, %18
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.tilcdc_crtc* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32* @dmam_alloc_coherent(%struct.TYPE_4__*, i32, i32*, i32) #1

declare dso_local i32 @tilcdc_plane_init(%struct.drm_device*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @of_graph_get_port_by_id(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @tilcdc_crtc_destroy(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
