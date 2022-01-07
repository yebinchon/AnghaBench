; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_has_dce_engine_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_has_dce_engine_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_mode_info }
%struct.amdgpu_mode_info = type { %struct.atom_context* }
%struct.atom_context = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@Object_Header = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_has_dce_engine_info(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_mode_info*, align 8
  %5 = alloca %struct.atom_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  store %struct.amdgpu_mode_info* %14, %struct.amdgpu_mode_info** %4, align 8
  %15 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %15, i32 0, i32 0
  %17 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  store %struct.atom_context* %17, %struct.atom_context** %5, align 8
  %18 = load i32, i32* @DATA, align 4
  %19 = load i32, i32* @Object_Header, align 4
  %20 = call i32 @GetIndexIntoMasterTable(i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.atom_context*, %struct.atom_context** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @amdgpu_atom_parse_data_header(%struct.atom_context* %21, i32 %22, i64* %7, i32* %9, i32* %10, i64* %8)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

26:                                               ; preds = %1
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %54

30:                                               ; preds = %26
  %31 = load %struct.atom_context*, %struct.atom_context** %5, align 8
  %32 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %33, %34
  %36 = inttoptr i64 %35 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %12, align 8
  %37 = load %struct.atom_context*, %struct.atom_context** %5, align 8
  %38 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le16_to_cpu(i32 %44)
  %46 = add nsw i64 %41, %45
  %47 = inttoptr i64 %46 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %11, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %54

53:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %52, %29, %25
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_data_header(%struct.atom_context*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
