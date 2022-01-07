; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_gfx_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_get_gfx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.amdgpu_mode_info }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_mode_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%union.gfx_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@GFX_Info = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_get_gfx_info(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_mode_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.gfx_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 1
  store %struct.amdgpu_mode_info* %11, %struct.amdgpu_mode_info** %3, align 8
  %12 = load i32, i32* @DATA, align 4
  %13 = load i32, i32* @GFX_Info, align 4
  %14 = call i32 @GetIndexIntoMasterTable(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @amdgpu_atom_parse_data_header(%struct.TYPE_8__* %19, i32 %20, i32* null, i32* %5, i32* %6, i64* %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %1
  %24 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %28, %29
  %31 = inttoptr i64 %30 to %union.gfx_info*
  store %union.gfx_info* %31, %union.gfx_info** %9, align 8
  %32 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %33 = bitcast %union.gfx_info* %32 to %struct.TYPE_7__*
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  store i32 %35, i32* %39, align 4
  %40 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %41 = bitcast %union.gfx_info* %40 to %struct.TYPE_7__*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  store i32 %43, i32* %47, align 8
  %48 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %49 = bitcast %union.gfx_info* %48 to %struct.TYPE_7__*
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  store i32 %51, i32* %55, align 4
  %56 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %57 = bitcast %union.gfx_info* %56 to %struct.TYPE_7__*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 8
  %64 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %65 = bitcast %union.gfx_info* %64 to %struct.TYPE_7__*
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  %72 = load %union.gfx_info*, %union.gfx_info** %9, align 8
  %73 = bitcast %union.gfx_info* %72 to %struct.TYPE_7__*
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %23, %1
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.TYPE_8__*, i32, i32*, i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
