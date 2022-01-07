; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_fill_conn_info_from_drm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_fill_conn_info_from_drm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_connector_info = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.drm_connector = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@CEC_CONNECTOR_TYPE_DRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cec_fill_conn_info_from_drm(%struct.cec_connector_info* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.cec_connector_info*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  store %struct.cec_connector_info* %0, %struct.cec_connector_info** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %5 = load %struct.cec_connector_info*, %struct.cec_connector_info** %3, align 8
  %6 = call i32 @memset(%struct.cec_connector_info* %5, i32 0, i32 12)
  %7 = load i32, i32* @CEC_CONNECTOR_TYPE_DRM, align 4
  %8 = load %struct.cec_connector_info*, %struct.cec_connector_info** %3, align 8
  %9 = getelementptr inbounds %struct.cec_connector_info, %struct.cec_connector_info* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cec_connector_info*, %struct.cec_connector_info** %3, align 8
  %18 = getelementptr inbounds %struct.cec_connector_info, %struct.cec_connector_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cec_connector_info*, %struct.cec_connector_info** %3, align 8
  %25 = getelementptr inbounds %struct.cec_connector_info, %struct.cec_connector_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  ret void
}

declare dso_local i32 @memset(%struct.cec_connector_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
