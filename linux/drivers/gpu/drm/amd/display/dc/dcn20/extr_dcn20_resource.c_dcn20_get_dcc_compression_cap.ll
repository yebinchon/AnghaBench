; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_get_dcc_compression_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_get_dcc_compression_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, %struct.dc_dcc_surface_param*, %struct.dc_surface_dcc_cap*)* }
%struct.dc_dcc_surface_param = type { i32 }
%struct.dc_surface_dcc_cap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcn20_get_dcc_compression_cap(%struct.dc* %0, %struct.dc_dcc_surface_param* %1, %struct.dc_surface_dcc_cap* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_dcc_surface_param*, align 8
  %6 = alloca %struct.dc_surface_dcc_cap*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_dcc_surface_param* %1, %struct.dc_dcc_surface_param** %5, align 8
  store %struct.dc_surface_dcc_cap* %2, %struct.dc_surface_dcc_cap** %6, align 8
  %7 = load %struct.dc*, %struct.dc** %4, align 8
  %8 = getelementptr inbounds %struct.dc, %struct.dc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_6__*, %struct.dc_dcc_surface_param*, %struct.dc_surface_dcc_cap*)*, i32 (%struct.TYPE_6__*, %struct.dc_dcc_surface_param*, %struct.dc_surface_dcc_cap*)** %14, align 8
  %16 = load %struct.dc*, %struct.dc** %4, align 8
  %17 = getelementptr inbounds %struct.dc, %struct.dc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %5, align 8
  %22 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %6, align 8
  %23 = call i32 %15(%struct.TYPE_6__* %20, %struct.dc_dcc_surface_param* %21, %struct.dc_surface_dcc_cap* %22)
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
