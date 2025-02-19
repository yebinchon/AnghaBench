; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstc_atomic_best_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstc_atomic_best_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.nv50_head = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.nv50_mstc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.drm_encoder }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_encoder* (%struct.drm_connector*, %struct.drm_connector_state*)* @nv50_mstc_atomic_best_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_encoder* @nv50_mstc_atomic_best_encoder(%struct.drm_connector* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.nv50_head*, align 8
  %6 = alloca %struct.nv50_mstc*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %7 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nv50_head* @nv50_head(i32 %9)
  store %struct.nv50_head* %10, %struct.nv50_head** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = call %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector* %11)
  store %struct.nv50_mstc* %12, %struct.nv50_mstc** %6, align 8
  %13 = load %struct.nv50_mstc*, %struct.nv50_mstc** %6, align 8
  %14 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = load %struct.nv50_head*, %struct.nv50_head** %5, align 8
  %19 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  ret %struct.drm_encoder* %24
}

declare dso_local %struct.nv50_head* @nv50_head(i32) #1

declare dso_local %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
