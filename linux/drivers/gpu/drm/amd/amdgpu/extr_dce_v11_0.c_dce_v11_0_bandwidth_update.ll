; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_bandwidth_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_bandwidth_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_display_mode, i64 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @dce_v11_0_bandwidth_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_bandwidth_update(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = call i32 @amdgpu_display_update_priority(%struct.amdgpu_device* %7)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %29, %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %9

36:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %78, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %37
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store %struct.drm_display_mode* %54, %struct.drm_display_mode** %3, align 8
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %59, i64 %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %65 = call i64 @dce_v11_0_line_buffer_adjust(%struct.amdgpu_device* %55, %struct.TYPE_7__* %63, %struct.drm_display_mode* %64)
  store i64 %65, i64* %5, align 8
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %70, i64 %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @dce_v11_0_program_watermarks(%struct.amdgpu_device* %66, %struct.TYPE_7__* %74, i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %44
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %37

81:                                               ; preds = %37
  ret void
}

declare dso_local i32 @amdgpu_display_update_priority(%struct.amdgpu_device*) #1

declare dso_local i64 @dce_v11_0_line_buffer_adjust(%struct.amdgpu_device*, %struct.TYPE_7__*, %struct.drm_display_mode*) #1

declare dso_local i32 @dce_v11_0_program_watermarks(%struct.amdgpu_device*, %struct.TYPE_7__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
