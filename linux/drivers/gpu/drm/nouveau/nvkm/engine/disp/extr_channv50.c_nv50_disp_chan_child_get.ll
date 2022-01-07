; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_child_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_child_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_oclass = type { %struct.nvkm_device_oclass*, i32, %struct.TYPE_16__* }
%struct.nvkm_device_oclass = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)* }
%struct.nv50_disp_chan = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_ENGINE_DMAOBJ = common dso_local global i32 0, align 4
@nv50_disp_chan_child_new = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)* @nv50_disp_chan_child_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_chan_child_get(%struct.nvkm_object* %0, i32 %1, %struct.nvkm_oclass* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_oclass*, align 8
  %8 = alloca %struct.nv50_disp_chan*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca %struct.nvkm_device_oclass*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %7, align 8
  %11 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %12 = call %struct.nv50_disp_chan* @nv50_disp_chan(%struct.nvkm_object* %11)
  store %struct.nv50_disp_chan* %12, %struct.nv50_disp_chan** %8, align 8
  %13 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %8, align 8
  %14 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device_oclass* null, %struct.nvkm_device_oclass** %10, align 8
  %21 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %8, align 8
  %22 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %29 = load i32, i32* @NVKM_ENGINE_DMAOBJ, align 4
  %30 = call %struct.TYPE_16__* @nvkm_device_engine(%struct.nvkm_device* %28, i32 %29)
  %31 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %32 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %31, i32 0, i32 2
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %32, align 8
  br label %36

33:                                               ; preds = %3
  %34 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %35 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %34, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %35, align 8
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %38 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %37, i32 0, i32 2
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = icmp ne %struct.TYPE_16__* %39, null
  br i1 %40, label %41, label %73

41:                                               ; preds = %36
  %42 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %43 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %42, i32 0, i32 2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)*, i32 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)** %48, align 8
  %50 = icmp ne i32 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)* %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %41
  %52 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %53 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %52, i32 0, i32 2
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)*, i32 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)** %58, align 8
  %60 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 %59(%struct.nvkm_oclass* %60, i32 %61, %struct.nvkm_device_oclass** %10)
  %63 = load %struct.nvkm_device_oclass*, %struct.nvkm_device_oclass** %10, align 8
  %64 = icmp ne %struct.nvkm_device_oclass* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %51
  %66 = load i32, i32* @nv50_disp_chan_child_new, align 4
  %67 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %68 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.nvkm_device_oclass*, %struct.nvkm_device_oclass** %10, align 8
  %70 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %71 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %70, i32 0, i32 0
  store %struct.nvkm_device_oclass* %69, %struct.nvkm_device_oclass** %71, align 8
  store i32 0, i32* %4, align 4
  br label %76

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72, %41, %36
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.nv50_disp_chan* @nv50_disp_chan(%struct.nvkm_object*) #1

declare dso_local %struct.TYPE_16__* @nvkm_device_engine(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
