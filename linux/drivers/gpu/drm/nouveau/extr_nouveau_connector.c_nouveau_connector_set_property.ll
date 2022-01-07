; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_12__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (i32*, i32*, %struct.drm_property*, i32)* }
%struct.drm_property = type { i32 }
%struct.nouveau_conn_atom = type { %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.nouveau_connector = type { i32, i32, i32, %struct.nouveau_encoder* }
%struct.nouveau_encoder = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.drm_encoder = type { i32 }
%struct.TYPE_13__ = type { i32 (%struct.drm_encoder*, %struct.drm_connector*, %struct.drm_property*, i32)* }

@DCB_OUTPUT_TV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i32)* @nouveau_connector_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_connector_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_conn_atom*, align 8
  %9 = alloca %struct.nouveau_connector*, align 8
  %10 = alloca %struct.nouveau_encoder*, align 8
  %11 = alloca %struct.drm_encoder*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.nouveau_conn_atom* @nouveau_conn_atom(i32 %15)
  store %struct.nouveau_conn_atom* %16, %struct.nouveau_conn_atom** %8, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %18 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %17)
  store %struct.nouveau_connector* %18, %struct.nouveau_connector** %9, align 8
  %19 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %20 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %19, i32 0, i32 3
  %21 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %20, align 8
  store %struct.nouveau_encoder* %21, %struct.nouveau_encoder** %10, align 8
  %22 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %23 = call %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder* %22)
  store %struct.drm_encoder* %23, %struct.drm_encoder** %11, align 8
  %24 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (i32*, i32*, %struct.drm_property*, i32)*, i32 (i32*, i32*, %struct.drm_property*, i32)** %27, align 8
  %29 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %30 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %29, i32 0, i32 2
  %31 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %8, align 8
  %32 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %31, i32 0, i32 2
  %33 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 %28(i32* %30, i32* %32, %struct.drm_property* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %3
  %39 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %40 = icmp ne %struct.nouveau_encoder* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %43 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DCB_OUTPUT_TV, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %51 = call %struct.TYPE_13__* @get_slave_funcs(%struct.drm_encoder* %50)
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32 (%struct.drm_encoder*, %struct.drm_connector*, %struct.drm_property*, i32)*, i32 (%struct.drm_encoder*, %struct.drm_connector*, %struct.drm_property*, i32)** %52, align 8
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %55 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %56 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 %53(%struct.drm_encoder* %54, %struct.drm_connector* %55, %struct.drm_property* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %119

59:                                               ; preds = %41, %38
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %4, align 4
  br label %119

61:                                               ; preds = %3
  %62 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %8, align 8
  %63 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %67 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %8, align 8
  %69 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nouveau_connector*, %struct.nouveau_connector** %9, align 8
  %73 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %75 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = icmp ne %struct.TYPE_12__* %76, null
  br i1 %77, label %78, label %118

78:                                               ; preds = %61
  %79 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %80 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = icmp ne %struct.TYPE_14__* %83, null
  br i1 %84, label %85, label %118

85:                                               ; preds = %78
  %86 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %87 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %92 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %91, i32 0, i32 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %98 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %105 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @drm_crtc_helper_set_mode(%struct.TYPE_14__* %90, i32* %96, i32 %103, i32 %110, i32* null)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %85
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %119

117:                                              ; preds = %85
  br label %118

118:                                              ; preds = %117, %78, %61
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %114, %59, %49
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.nouveau_conn_atom* @nouveau_conn_atom(i32) #1

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder*) #1

declare dso_local %struct.TYPE_13__* @get_slave_funcs(%struct.drm_encoder*) #1

declare dso_local i32 @drm_crtc_helper_set_mode(%struct.TYPE_14__*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
