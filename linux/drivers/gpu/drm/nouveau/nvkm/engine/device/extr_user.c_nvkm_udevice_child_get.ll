; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_user.c_nvkm_udevice_child_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_user.c_nvkm_udevice_child_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_oclass = type { %struct.nvkm_device_oclass*, i32, i32, %struct.nvkm_engine* }
%struct.nvkm_engine = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)* }
%struct.nvkm_udevice = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.nvkm_device_oclass }
%struct.TYPE_7__ = type { %struct.nvkm_device_oclass }

@NVKM_ENGINE_DMAOBJ = common dso_local global i64 0, align 8
@NVKM_ENGINE_FIFO = common dso_local global i64 0, align 8
@NVKM_ENGINE_DISP = common dso_local global i64 0, align 8
@NVKM_ENGINE_PM = common dso_local global i64 0, align 8
@nvkm_control_oclass = common dso_local global %struct.nvkm_device_oclass zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@nvkm_udevice_child_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)* @nvkm_udevice_child_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_udevice_child_get(%struct.nvkm_object* %0, i32 %1, %struct.nvkm_oclass* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_oclass*, align 8
  %8 = alloca %struct.nvkm_udevice*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca %struct.nvkm_engine*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nvkm_device_oclass*, align 8
  %13 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %7, align 8
  %14 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %15 = call %struct.nvkm_udevice* @nvkm_udevice(%struct.nvkm_object* %14)
  store %struct.nvkm_udevice* %15, %struct.nvkm_udevice** %8, align 8
  %16 = load %struct.nvkm_udevice*, %struct.nvkm_udevice** %8, align 8
  %17 = getelementptr inbounds %struct.nvkm_udevice, %struct.nvkm_udevice* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %9, align 8
  %19 = load i64, i64* @NVKM_ENGINE_DMAOBJ, align 8
  %20 = shl i64 1, %19
  %21 = load i64, i64* @NVKM_ENGINE_FIFO, align 8
  %22 = shl i64 1, %21
  %23 = or i64 %20, %22
  %24 = load i64, i64* @NVKM_ENGINE_DISP, align 8
  %25 = shl i64 1, %24
  %26 = or i64 %23, %25
  %27 = load i64, i64* @NVKM_ENGINE_PM, align 8
  %28 = shl i64 1, %27
  %29 = or i64 %26, %28
  store i64 %29, i64* %11, align 8
  store %struct.nvkm_device_oclass* null, %struct.nvkm_device_oclass** %12, align 8
  br label %30

30:                                               ; preds = %72, %3
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @__ffs64(i64 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.nvkm_device_oclass*, %struct.nvkm_device_oclass** %12, align 8
  %37 = icmp ne %struct.nvkm_device_oclass* %36, null
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i1 [ false, %30 ], [ %38, %35 ]
  br i1 %40, label %41, label %79

41:                                               ; preds = %39
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call %struct.nvkm_engine* @nvkm_device_engine(%struct.nvkm_device* %42, i32 %43)
  store %struct.nvkm_engine* %44, %struct.nvkm_engine** %10, align 8
  %45 = icmp ne %struct.nvkm_engine* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.nvkm_engine*, %struct.nvkm_engine** %10, align 8
  %48 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)*, i64 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)** %51, align 8
  %53 = icmp ne i64 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46, %41
  br label %72

55:                                               ; preds = %46
  %56 = load %struct.nvkm_engine*, %struct.nvkm_engine** %10, align 8
  %57 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %58 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %57, i32 0, i32 3
  store %struct.nvkm_engine* %56, %struct.nvkm_engine** %58, align 8
  %59 = load %struct.nvkm_engine*, %struct.nvkm_engine** %10, align 8
  %60 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)*, i64 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)** %63, align 8
  %65 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 %64(%struct.nvkm_oclass* %65, i32 %66, %struct.nvkm_device_oclass** %12)
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %55, %54
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = shl i64 1, %74
  %76 = xor i64 %75, -1
  %77 = load i64, i64* %11, align 8
  %78 = and i64 %77, %76
  store i64 %78, i64* %11, align 8
  br label %30

79:                                               ; preds = %39
  %80 = load %struct.nvkm_device_oclass*, %struct.nvkm_device_oclass** %12, align 8
  %81 = icmp ne %struct.nvkm_device_oclass* %80, null
  br i1 %81, label %126, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store %struct.nvkm_device_oclass* @nvkm_control_oclass, %struct.nvkm_device_oclass** %12, align 8
  br label %120

87:                                               ; preds = %82
  %88 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %89 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = icmp ne %struct.TYPE_7__* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %6, align 4
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %98 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store %struct.nvkm_device_oclass* %100, %struct.nvkm_device_oclass** %12, align 8
  br label %119

101:                                              ; preds = %92, %87
  %102 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %103 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = icmp ne %struct.TYPE_8__* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %6, align 4
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %112 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store %struct.nvkm_device_oclass* %114, %struct.nvkm_device_oclass** %12, align 8
  br label %118

115:                                              ; preds = %106, %101
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %133

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %96
  br label %120

120:                                              ; preds = %119, %86
  %121 = load %struct.nvkm_device_oclass*, %struct.nvkm_device_oclass** %12, align 8
  %122 = getelementptr inbounds %struct.nvkm_device_oclass, %struct.nvkm_device_oclass* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %125 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %79
  %127 = load i32, i32* @nvkm_udevice_child_new, align 4
  %128 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %129 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.nvkm_device_oclass*, %struct.nvkm_device_oclass** %12, align 8
  %131 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %132 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %131, i32 0, i32 0
  store %struct.nvkm_device_oclass* %130, %struct.nvkm_device_oclass** %132, align 8
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %126, %115
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.nvkm_udevice* @nvkm_udevice(%struct.nvkm_object*) #1

declare dso_local i32 @__ffs64(i64) #1

declare dso_local %struct.nvkm_engine* @nvkm_device_engine(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
