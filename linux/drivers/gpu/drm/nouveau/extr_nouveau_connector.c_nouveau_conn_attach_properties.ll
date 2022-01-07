; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_conn_attach_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_conn_attach_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.nouveau_conn_atom = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.nouveau_display = type { i64, i64, %struct.TYPE_9__, i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DRM_MODE_CONNECTOR_DVII = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVID = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i32 0, align 4
@UNDERSCAN_OFF = common dso_local global i32 0, align 4
@NV50_DISP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_conn_attach_properties(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_conn_atom*, align 8
  %5 = alloca %struct.nouveau_display*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 3
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.nouveau_conn_atom* @nouveau_conn_atom(i32 %11)
  store %struct.nouveau_conn_atom* %12, %struct.nouveau_conn_atom** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call %struct.nouveau_display* @nouveau_display(%struct.drm_device* %13)
  store %struct.nouveau_display* %14, %struct.nouveau_display** %5, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 1
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @drm_object_attach_property(i32* %22, i64 %26, i32 0)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %28
  %34 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %35 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %41 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %47 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %53 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DRM_MODE_CONNECTOR_DisplayPort, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %51, %45, %39, %33
  %58 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %59 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %58, i32 0, i32 1
  %60 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %61 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @UNDERSCAN_OFF, align 4
  %64 = call i32 @drm_object_attach_property(i32* %59, i64 %62, i32 %63)
  %65 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %66 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %65, i32 0, i32 1
  %67 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %68 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @drm_object_attach_property(i32* %66, i64 %69, i32 0)
  %71 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %72 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %71, i32 0, i32 1
  %73 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %74 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @drm_object_attach_property(i32* %72, i64 %75, i32 0)
  br label %77

77:                                               ; preds = %57, %51, %28
  %78 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %79 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %84 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %83, i32 0, i32 1
  %85 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %86 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %4, align 8
  %89 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @drm_object_attach_property(i32* %84, i64 %87, i32 %91)
  br label %93

93:                                               ; preds = %82, %77
  %94 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %95 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %100 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %99, i32 0, i32 1
  %101 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %102 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %4, align 8
  %105 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @drm_object_attach_property(i32* %100, i64 %103, i32 %107)
  br label %109

109:                                              ; preds = %98, %93
  %110 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %111 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %124 [
    i32 129, label %113
    i32 128, label %114
  ]

113:                                              ; preds = %109
  br label %136

114:                                              ; preds = %109
  %115 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %116 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @NV50_DISP, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %136

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %109, %123
  %125 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %126 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %125, i32 0, i32 1
  %127 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %128 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %4, align 8
  %132 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @drm_object_attach_property(i32* %126, i64 %130, i32 %134)
  br label %136

136:                                              ; preds = %124, %122, %113
  %137 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %138 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  switch i32 %139, label %141 [
    i32 129, label %140
    i32 128, label %140
  ]

140:                                              ; preds = %136, %136
  br label %174

141:                                              ; preds = %136
  %142 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %143 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %148 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %147, i32 0, i32 1
  %149 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %150 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %4, align 8
  %153 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @drm_object_attach_property(i32* %148, i64 %151, i32 %155)
  br label %157

157:                                              ; preds = %146, %141
  %158 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %159 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %157
  %163 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %164 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %163, i32 0, i32 1
  %165 = load %struct.nouveau_display*, %struct.nouveau_display** %5, align 8
  %166 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %4, align 8
  %169 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @drm_object_attach_property(i32* %164, i64 %167, i32 %171)
  br label %173

173:                                              ; preds = %162, %157
  br label %174

174:                                              ; preds = %173, %140
  ret void
}

declare dso_local %struct.nouveau_conn_atom* @nouveau_conn_atom(i32) #1

declare dso_local %struct.nouveau_display* @nouveau_display(%struct.drm_device*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
