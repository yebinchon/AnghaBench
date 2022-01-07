; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v10_0.c_psp_v10_0_cmd_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v10_0.c_psp_v10_0_cmd_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device*, %struct.psp_ring }
%struct.amdgpu_device = type { i32 }
%struct.psp_ring = type { i32, %struct.psp_gfx_rb_frame* }
%struct.psp_gfx_rb_frame = type { i32, i8*, i8*, i8*, i8* }

@MP0 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_67 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"ring_buffer_start = %p; ring_buffer_end = %p; write_frame = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"write_frame is pointing to address out of bounds\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, i32, i32, i32)* @psp_v10_0_cmd_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v10_0_cmd_submit(%struct.psp_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.psp_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.psp_gfx_rb_frame*, align 8
  %12 = alloca %struct.psp_ring*, align 8
  %13 = alloca %struct.psp_gfx_rb_frame*, align 8
  %14 = alloca %struct.psp_gfx_rb_frame*, align 8
  %15 = alloca %struct.amdgpu_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %19 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %19, i32 0, i32 1
  %21 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %20, align 8
  store %struct.psp_gfx_rb_frame* %21, %struct.psp_gfx_rb_frame** %11, align 8
  %22 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %23 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %22, i32 0, i32 1
  store %struct.psp_ring* %23, %struct.psp_ring** %12, align 8
  %24 = load %struct.psp_ring*, %struct.psp_ring** %12, align 8
  %25 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %24, i32 0, i32 1
  %26 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %25, align 8
  store %struct.psp_gfx_rb_frame* %26, %struct.psp_gfx_rb_frame** %13, align 8
  %27 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %13, align 8
  %28 = load %struct.psp_ring*, %struct.psp_ring** %12, align 8
  %29 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 40
  %33 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %27, i64 %32
  %34 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %33, i64 -1
  store %struct.psp_gfx_rb_frame* %34, %struct.psp_gfx_rb_frame** %14, align 8
  %35 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %36 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %35, i32 0, i32 0
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %36, align 8
  store %struct.amdgpu_device* %37, %struct.amdgpu_device** %15, align 8
  %38 = load %struct.psp_ring*, %struct.psp_ring** %12, align 8
  %39 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 4
  store i32 %41, i32* %16, align 4
  store i32 10, i32* %17, align 4
  %42 = load i32, i32* @MP0, align 4
  %43 = load i32, i32* @mmMP0_SMN_C2PMSG_67, align 4
  %44 = call i32 @RREG32_SOC15(i32 %42, i32 0, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %16, align 4
  %47 = urem i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %4
  %50 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %13, align 8
  store %struct.psp_gfx_rb_frame* %50, %struct.psp_gfx_rb_frame** %11, align 8
  br label %58

51:                                               ; preds = %4
  %52 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %13, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %17, align 4
  %55 = udiv i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %52, i64 %56
  store %struct.psp_gfx_rb_frame* %57, %struct.psp_gfx_rb_frame** %11, align 8
  br label %58

58:                                               ; preds = %51, %49
  %59 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %60 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %13, align 8
  %61 = icmp ult %struct.psp_gfx_rb_frame* %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %14, align 8
  %64 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %65 = icmp ult %struct.psp_gfx_rb_frame* %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62, %58
  %67 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %13, align 8
  %68 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %14, align 8
  %69 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %70 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.psp_gfx_rb_frame* %67, %struct.psp_gfx_rb_frame* %68, %struct.psp_gfx_rb_frame* %69)
  %71 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %105

74:                                               ; preds = %62
  %75 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %76 = call i32 @memset(%struct.psp_gfx_rb_frame* %75, i32 0, i32 40)
  %77 = load i32, i32* %7, align 4
  %78 = call i8* @upper_32_bits(i32 %77)
  %79 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %80 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i8* @lower_32_bits(i32 %81)
  %83 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %84 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i8* @upper_32_bits(i32 %85)
  %87 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %88 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i8* @lower_32_bits(i32 %89)
  %91 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %92 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %95 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %17, align 4
  %98 = add i32 %96, %97
  %99 = load i32, i32* %16, align 4
  %100 = urem i32 %98, %99
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* @MP0, align 4
  %102 = load i32, i32* @mmMP0_SMN_C2PMSG_67, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @WREG32_SOC15(i32 %101, i32 0, i32 %102, i32 %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %74, %66
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @memset(%struct.psp_gfx_rb_frame*, i32, i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
