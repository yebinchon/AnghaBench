; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_set_dce_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_set_dce_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.set_dce_clock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@COMMAND = common dso_local global i32 0, align 4
@SetDCEClock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown table version %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_crtc_set_dce_clock(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.set_dce_clock, align 4
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = call i32 @memset(%union.set_dce_clock* %13, i32 0, i32 12)
  %16 = load i32, i32* @COMMAND, align 4
  %17 = load i32, i32* @SetDCEClock, align 4
  %18 = call i32 @GetIndexIntoMasterTable(i32 %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @amdgpu_atom_parse_cmd_header(i32 %22, i32 %23, i32* %10, i32* %11)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %69

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %63 [
    i32 2, label %29
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* %11, align 4
  switch i32 %30, label %58 [
    i32 1, label %31
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @cpu_to_le32(i32 %32)
  %34 = bitcast %union.set_dce_clock* %13 to %struct.TYPE_6__*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = bitcast %union.set_dce_clock* %13 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = bitcast %union.set_dce_clock* %13 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = bitcast %union.set_dce_clock* %13 to i32*
  %51 = call i32 @amdgpu_atom_execute_table(i32 %48, i32 %49, i32* %50)
  %52 = bitcast %union.set_dce_clock* %13 to %struct.TYPE_6__*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = mul nsw i32 %56, 10
  store i32 %57, i32* %14, align 4
  br label %62

58:                                               ; preds = %29
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  store i32 0, i32* %5, align 4
  br label %69

62:                                               ; preds = %31
  br label %67

63:                                               ; preds = %27
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  store i32 0, i32* %5, align 4
  br label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %63, %58, %26
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @memset(%union.set_dce_clock*, i32, i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
