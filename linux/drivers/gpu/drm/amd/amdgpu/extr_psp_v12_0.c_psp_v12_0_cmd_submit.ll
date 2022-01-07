; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_cmd_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_cmd_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device*, %struct.psp_ring }
%struct.amdgpu_device = type { i32 }
%struct.psp_ring = type { i32, %struct.psp_gfx_rb_frame* }
%struct.psp_gfx_rb_frame = type { i32, i8*, i8*, i8*, i8* }

@MP0 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_102 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_67 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"ring_buffer_start = %p; ring_buffer_end = %p; write_frame = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"write_frame is pointing to address out of bounds\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_101 = common dso_local global i32 0, align 4
@GFX_CTRL_CMD_ID_CONSUME_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, i32, i32, i32)* @psp_v12_0_cmd_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v12_0_cmd_submit(%struct.psp_context* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %42 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %43 = call i64 @psp_v12_0_support_vmr_ring(%struct.psp_context* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %4
  %46 = load i32, i32* @MP0, align 4
  %47 = load i32, i32* @mmMP0_SMN_C2PMSG_102, align 4
  %48 = call i32 @RREG32_SOC15(i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %10, align 4
  br label %53

49:                                               ; preds = %4
  %50 = load i32, i32* @MP0, align 4
  %51 = load i32, i32* @mmMP0_SMN_C2PMSG_67, align 4
  %52 = call i32 @RREG32_SOC15(i32 %50, i32 0, i32 %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %16, align 4
  %56 = urem i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %13, align 8
  store %struct.psp_gfx_rb_frame* %59, %struct.psp_gfx_rb_frame** %11, align 8
  br label %67

60:                                               ; preds = %53
  %61 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %13, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %17, align 4
  %64 = udiv i32 %62, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %61, i64 %65
  store %struct.psp_gfx_rb_frame* %66, %struct.psp_gfx_rb_frame** %11, align 8
  br label %67

67:                                               ; preds = %60, %58
  %68 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %69 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %13, align 8
  %70 = icmp ult %struct.psp_gfx_rb_frame* %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %14, align 8
  %73 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %74 = icmp ult %struct.psp_gfx_rb_frame* %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71, %67
  %76 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %13, align 8
  %77 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %14, align 8
  %78 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %79 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.psp_gfx_rb_frame* %76, %struct.psp_gfx_rb_frame* %77, %struct.psp_gfx_rb_frame* %78)
  %80 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %128

83:                                               ; preds = %71
  %84 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %85 = call i32 @memset(%struct.psp_gfx_rb_frame* %84, i32 0, i32 40)
  %86 = load i32, i32* %7, align 4
  %87 = call i8* @upper_32_bits(i32 %86)
  %88 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %89 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i8* @lower_32_bits(i32 %90)
  %92 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %93 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i8* @upper_32_bits(i32 %94)
  %96 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %97 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i8* @lower_32_bits(i32 %98)
  %100 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %101 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.psp_gfx_rb_frame*, %struct.psp_gfx_rb_frame** %11, align 8
  %104 = getelementptr inbounds %struct.psp_gfx_rb_frame, %struct.psp_gfx_rb_frame* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %17, align 4
  %107 = add i32 %105, %106
  %108 = load i32, i32* %16, align 4
  %109 = urem i32 %107, %108
  store i32 %109, i32* %10, align 4
  %110 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %111 = call i64 @psp_v12_0_support_vmr_ring(%struct.psp_context* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %83
  %114 = load i32, i32* @MP0, align 4
  %115 = load i32, i32* @mmMP0_SMN_C2PMSG_102, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @WREG32_SOC15(i32 %114, i32 0, i32 %115, i32 %116)
  %118 = load i32, i32* @MP0, align 4
  %119 = load i32, i32* @mmMP0_SMN_C2PMSG_101, align 4
  %120 = load i32, i32* @GFX_CTRL_CMD_ID_CONSUME_CMD, align 4
  %121 = call i32 @WREG32_SOC15(i32 %118, i32 0, i32 %119, i32 %120)
  br label %127

122:                                              ; preds = %83
  %123 = load i32, i32* @MP0, align 4
  %124 = load i32, i32* @mmMP0_SMN_C2PMSG_67, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @WREG32_SOC15(i32 %123, i32 0, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %113
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %75
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i64 @psp_v12_0_support_vmr_ring(%struct.psp_context*) #1

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
