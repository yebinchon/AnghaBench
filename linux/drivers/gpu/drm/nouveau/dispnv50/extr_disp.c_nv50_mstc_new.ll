; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstc_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_mstm = type { %struct.TYPE_13__**, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.drm_dp_mst_port = type { i32 }
%struct.nv50_mstc = type { %struct.TYPE_19__, %struct.drm_dp_mst_port*, %struct.nv50_mstm* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_19__*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_mstc = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i32 0, align 4
@nv50_mstc_help = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_mstm*, %struct.drm_dp_mst_port*, i8*, %struct.nv50_mstc**)* @nv50_mstc_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_mstc_new(%struct.nv50_mstm* %0, %struct.drm_dp_mst_port* %1, i8* %2, %struct.nv50_mstc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_mstm*, align 8
  %7 = alloca %struct.drm_dp_mst_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nv50_mstc**, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.nv50_mstc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nv50_mstm* %0, %struct.nv50_mstm** %6, align 8
  store %struct.drm_dp_mst_port* %1, %struct.drm_dp_mst_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.nv50_mstc** %3, %struct.nv50_mstc*** %9, align 8
  %14 = load %struct.nv50_mstm*, %struct.nv50_mstm** %6, align 8
  %15 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %10, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.nv50_mstc* @kzalloc(i32 32, i32 %21)
  %23 = load %struct.nv50_mstc**, %struct.nv50_mstc*** %9, align 8
  store %struct.nv50_mstc* %22, %struct.nv50_mstc** %23, align 8
  store %struct.nv50_mstc* %22, %struct.nv50_mstc** %11, align 8
  %24 = icmp ne %struct.nv50_mstc* %22, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %120

28:                                               ; preds = %4
  %29 = load %struct.nv50_mstm*, %struct.nv50_mstm** %6, align 8
  %30 = load %struct.nv50_mstc*, %struct.nv50_mstc** %11, align 8
  %31 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %30, i32 0, i32 2
  store %struct.nv50_mstm* %29, %struct.nv50_mstm** %31, align 8
  %32 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %33 = load %struct.nv50_mstc*, %struct.nv50_mstc** %11, align 8
  %34 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %33, i32 0, i32 1
  store %struct.drm_dp_mst_port* %32, %struct.drm_dp_mst_port** %34, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %36 = load %struct.nv50_mstc*, %struct.nv50_mstc** %11, align 8
  %37 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %36, i32 0, i32 0
  %38 = load i32, i32* @DRM_MODE_CONNECTOR_DisplayPort, align 4
  %39 = call i32 @drm_connector_init(%struct.drm_device* %35, %struct.TYPE_19__* %37, i32* @nv50_mstc, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load %struct.nv50_mstc**, %struct.nv50_mstc*** %9, align 8
  %44 = load %struct.nv50_mstc*, %struct.nv50_mstc** %43, align 8
  %45 = call i32 @kfree(%struct.nv50_mstc* %44)
  %46 = load %struct.nv50_mstc**, %struct.nv50_mstc*** %9, align 8
  store %struct.nv50_mstc* null, %struct.nv50_mstc** %46, align 8
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %120

48:                                               ; preds = %28
  %49 = load %struct.nv50_mstc*, %struct.nv50_mstc** %11, align 8
  %50 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %49, i32 0, i32 0
  %51 = call i32 @drm_connector_helper_add(%struct.TYPE_19__* %50, i32* @nv50_mstc_help)
  %52 = load %struct.nv50_mstc*, %struct.nv50_mstc** %11, align 8
  %53 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %56, align 8
  %58 = load %struct.nv50_mstc*, %struct.nv50_mstc** %11, align 8
  %59 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %58, i32 0, i32 0
  %60 = call i32 %57(%struct.TYPE_19__* %59)
  %61 = load %struct.nv50_mstc*, %struct.nv50_mstc** %11, align 8
  %62 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %61, i32 0, i32 0
  %63 = call i32 @nouveau_conn_attach_properties(%struct.TYPE_19__* %62)
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %94, %48
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.nv50_mstm*, %struct.nv50_mstm** %6, align 8
  %67 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %67, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_13__** %68)
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.nv50_mstm*, %struct.nv50_mstm** %6, align 8
  %73 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %74, i64 %76
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = icmp ne %struct.TYPE_13__* %78, null
  br label %80

80:                                               ; preds = %71, %64
  %81 = phi i1 [ false, %64 ], [ %79, %71 ]
  br i1 %81, label %82, label %97

82:                                               ; preds = %80
  %83 = load %struct.nv50_mstc*, %struct.nv50_mstc** %11, align 8
  %84 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %83, i32 0, i32 0
  %85 = load %struct.nv50_mstm*, %struct.nv50_mstm** %6, align 8
  %86 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %85, i32 0, i32 0
  %87 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %87, i64 %89
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = call i32 @drm_connector_attach_encoder(%struct.TYPE_19__* %84, i32* %92)
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %64

97:                                               ; preds = %80
  %98 = load %struct.nv50_mstc*, %struct.nv50_mstc** %11, align 8
  %99 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %102 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @drm_object_attach_property(i32* %100, i32 %104, i32 0)
  %106 = load %struct.nv50_mstc*, %struct.nv50_mstc** %11, align 8
  %107 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %110 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @drm_object_attach_property(i32* %108, i32 %112, i32 0)
  %114 = load %struct.nv50_mstc*, %struct.nv50_mstc** %11, align 8
  %115 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %114, i32 0, i32 0
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @drm_connector_set_path_property(%struct.TYPE_19__* %115, i8* %116)
  %118 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %119 = call i32 @drm_dp_mst_get_port_malloc(%struct.drm_dp_mst_port* %118)
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %97, %42, %25
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.nv50_mstc* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.nv50_mstc*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @nouveau_conn_attach_properties(%struct.TYPE_19__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__**) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

declare dso_local i32 @drm_connector_set_path_property(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @drm_dp_mst_get_port_malloc(%struct.drm_dp_mst_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
