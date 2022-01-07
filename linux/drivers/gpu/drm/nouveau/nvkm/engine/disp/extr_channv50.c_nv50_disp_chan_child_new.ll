; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_child_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_child_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oclass = type { i32, %struct.nvkm_device_oclass*, i32 }
%struct.nvkm_device_oclass = type { i32 (%struct.nvkm_device*, %struct.nvkm_oclass*, i8*, i32, i32*)* }
%struct.nvkm_device = type opaque
%struct.nvkm_object = type { i32 }
%struct.nv50_disp_chan = type { %struct.TYPE_9__*, %struct.nv50_disp* }
%struct.TYPE_9__ = type { i64 (%struct.nv50_disp_chan*, i32, i32)* }
%struct.nv50_disp = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device.0* }
%struct.nvkm_device.0 = type { i32 }
%struct.nv50_disp_chan_object = type { i64, %struct.TYPE_10__, %struct.nv50_disp* }
%struct.TYPE_10__ = type { i32, %struct.nvkm_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_disp_chan_child_func_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* @nv50_disp_chan_child_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_chan_child_new(%struct.nvkm_oclass* %0, i8* %1, i32 %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_oclass*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_object**, align 8
  %10 = alloca %struct.nv50_disp_chan*, align 8
  %11 = alloca %struct.nv50_disp*, align 8
  %12 = alloca %struct.nvkm_device.0*, align 8
  %13 = alloca %struct.nvkm_device_oclass*, align 8
  %14 = alloca %struct.nv50_disp_chan_object*, align 8
  %15 = alloca i32, align 4
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %9, align 8
  %16 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.nv50_disp_chan* @nv50_disp_chan(i32 %18)
  store %struct.nv50_disp_chan* %19, %struct.nv50_disp_chan** %10, align 8
  %20 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %10, align 8
  %21 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %20, i32 0, i32 1
  %22 = load %struct.nv50_disp*, %struct.nv50_disp** %21, align 8
  store %struct.nv50_disp* %22, %struct.nv50_disp** %11, align 8
  %23 = load %struct.nv50_disp*, %struct.nv50_disp** %11, align 8
  %24 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %27, align 8
  store %struct.nvkm_device.0* %28, %struct.nvkm_device.0** %12, align 8
  %29 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %30 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %29, i32 0, i32 1
  %31 = load %struct.nvkm_device_oclass*, %struct.nvkm_device_oclass** %30, align 8
  store %struct.nvkm_device_oclass* %31, %struct.nvkm_device_oclass** %13, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.nv50_disp_chan_object* @kzalloc(i32 24, i32 %32)
  store %struct.nv50_disp_chan_object* %33, %struct.nv50_disp_chan_object** %14, align 8
  %34 = icmp ne %struct.nv50_disp_chan_object* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %93

38:                                               ; preds = %4
  %39 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %40 = load %struct.nv50_disp_chan_object*, %struct.nv50_disp_chan_object** %14, align 8
  %41 = getelementptr inbounds %struct.nv50_disp_chan_object, %struct.nv50_disp_chan_object* %40, i32 0, i32 1
  %42 = call i32 @nvkm_oproxy_ctor(i32* @nv50_disp_chan_child_func_, %struct.nvkm_oclass* %39, %struct.TYPE_10__* %41)
  %43 = load %struct.nv50_disp*, %struct.nv50_disp** %11, align 8
  %44 = load %struct.nv50_disp_chan_object*, %struct.nv50_disp_chan_object** %14, align 8
  %45 = getelementptr inbounds %struct.nv50_disp_chan_object, %struct.nv50_disp_chan_object* %44, i32 0, i32 2
  store %struct.nv50_disp* %43, %struct.nv50_disp** %45, align 8
  %46 = load %struct.nv50_disp_chan_object*, %struct.nv50_disp_chan_object** %14, align 8
  %47 = getelementptr inbounds %struct.nv50_disp_chan_object, %struct.nv50_disp_chan_object* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.nvkm_object**, %struct.nvkm_object*** %9, align 8
  store %struct.nvkm_object* %48, %struct.nvkm_object** %49, align 8
  %50 = load %struct.nvkm_device_oclass*, %struct.nvkm_device_oclass** %13, align 8
  %51 = getelementptr inbounds %struct.nvkm_device_oclass, %struct.nvkm_device_oclass* %50, i32 0, i32 0
  %52 = load i32 (%struct.nvkm_device*, %struct.nvkm_oclass*, i8*, i32, i32*)*, i32 (%struct.nvkm_device*, %struct.nvkm_oclass*, i8*, i32, i32*)** %51, align 8
  %53 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %12, align 8
  %54 = bitcast %struct.nvkm_device.0* %53 to %struct.nvkm_device*
  %55 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.nv50_disp_chan_object*, %struct.nv50_disp_chan_object** %14, align 8
  %59 = getelementptr inbounds %struct.nv50_disp_chan_object, %struct.nv50_disp_chan_object* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = call i32 %52(%struct.nvkm_device* %54, %struct.nvkm_oclass* %55, i8* %56, i32 %57, i32* %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %38
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %5, align 4
  br label %93

66:                                               ; preds = %38
  %67 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %10, align 8
  %68 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64 (%struct.nv50_disp_chan*, i32, i32)*, i64 (%struct.nv50_disp_chan*, i32, i32)** %70, align 8
  %72 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %10, align 8
  %73 = load %struct.nv50_disp_chan_object*, %struct.nv50_disp_chan_object** %14, align 8
  %74 = getelementptr inbounds %struct.nv50_disp_chan_object, %struct.nv50_disp_chan_object* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %78 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 %71(%struct.nv50_disp_chan* %72, i32 %76, i32 %79)
  %81 = load %struct.nv50_disp_chan_object*, %struct.nv50_disp_chan_object** %14, align 8
  %82 = getelementptr inbounds %struct.nv50_disp_chan_object, %struct.nv50_disp_chan_object* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.nv50_disp_chan_object*, %struct.nv50_disp_chan_object** %14, align 8
  %84 = getelementptr inbounds %struct.nv50_disp_chan_object, %struct.nv50_disp_chan_object* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %66
  %88 = load %struct.nv50_disp_chan_object*, %struct.nv50_disp_chan_object** %14, align 8
  %89 = getelementptr inbounds %struct.nv50_disp_chan_object, %struct.nv50_disp_chan_object* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %5, align 4
  br label %93

92:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %87, %64, %35
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.nv50_disp_chan* @nv50_disp_chan(i32) #1

declare dso_local %struct.nv50_disp_chan_object* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_oproxy_ctor(i32*, %struct.nvkm_oclass*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
