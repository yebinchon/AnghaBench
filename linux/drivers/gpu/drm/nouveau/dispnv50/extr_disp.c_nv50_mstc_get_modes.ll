; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstc_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstc_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.nv50_mstc = type { %struct.TYPE_8__, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @nv50_mstc_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_mstc_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.nv50_mstc*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = call %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector* %5)
  store %struct.nv50_mstc* %6, %struct.nv50_mstc** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %8 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %7, i32 0, i32 0
  %9 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %10 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %9, i32 0, i32 3
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %15 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %14, i32 0, i32 3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = call i64 @drm_dp_mst_get_edid(%struct.TYPE_8__* %8, i32 %13, %struct.TYPE_9__* %16)
  %18 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %19 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %21 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %20, i32 0, i32 0
  %22 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %23 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @drm_connector_update_edid_property(%struct.TYPE_8__* %21, i64 %24)
  %26 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %27 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %32 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %31, i32 0, i32 0
  %33 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %34 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @drm_add_edid_modes(%struct.TYPE_8__* %32, i64 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %1
  %38 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %39 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %46 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 8, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %37
  %50 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %51 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %56 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %60 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @drm_mode_destroy(i32 %58, i64 %61)
  br label %63

63:                                               ; preds = %54, %49
  %64 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %65 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %64, i32 0, i32 0
  %66 = call i64 @nouveau_conn_native_mode(%struct.TYPE_8__* %65)
  %67 = load %struct.nv50_mstc*, %struct.nv50_mstc** %3, align 8
  %68 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector*) #1

declare dso_local i64 @drm_dp_mst_get_edid(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @drm_add_edid_modes(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @drm_mode_destroy(i32, i64) #1

declare dso_local i64 @nouveau_conn_native_mode(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
