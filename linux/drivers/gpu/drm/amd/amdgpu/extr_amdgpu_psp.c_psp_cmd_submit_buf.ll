; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_cmd_submit_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_cmd_submit_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { i32, %struct.TYPE_7__*, i64, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.amdgpu_firmware_info = type { i32, i32, i32 }
%struct.psp_gfx_cmd_resp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PSP_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to load ucode id (%d) \00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"psp command failed and response status is (0x%X)\0A\00", align 1
@GFX_CMD_STATUS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, %struct.amdgpu_firmware_info*, %struct.psp_gfx_cmd_resp*, i32)* @psp_cmd_submit_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_cmd_submit_buf(%struct.psp_context* %0, %struct.amdgpu_firmware_info* %1, %struct.psp_gfx_cmd_resp* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.psp_context*, align 8
  %7 = alloca %struct.amdgpu_firmware_info*, align 8
  %8 = alloca %struct.psp_gfx_cmd_resp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.psp_context* %0, %struct.psp_context** %6, align 8
  store %struct.amdgpu_firmware_info* %1, %struct.amdgpu_firmware_info** %7, align 8
  store %struct.psp_gfx_cmd_resp* %2, %struct.psp_gfx_cmd_resp** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 2000, i32* %12, align 4
  %13 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %14 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %17 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load i32, i32* @PSP_CMD_BUFFER_SIZE, align 4
  %20 = call i32 @memset(%struct.TYPE_7__* %18, i32 0, i32 %19)
  %21 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %22 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %8, align 8
  %25 = call i32 @memcpy(%struct.TYPE_7__* %23, %struct.psp_gfx_cmd_resp* %24, i32 4)
  %26 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %27 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %26, i32 0, i32 3
  %28 = call i32 @atomic_inc_return(i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %30 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %31 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @psp_cmd_submit(%struct.psp_context* %29, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %4
  %39 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %40 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %39, i32 0, i32 3
  %41 = call i32 @atomic_dec(i32* %40)
  %42 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %43 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %134

46:                                               ; preds = %4
  br label %47

47:                                               ; preds = %60, %46
  %48 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %49 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %62

60:                                               ; preds = %55
  %61 = call i32 @msleep(i32 1)
  br label %47

62:                                               ; preds = %59, %47
  %63 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %64 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %70, %62
  %74 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %75 = icmp ne %struct.amdgpu_firmware_info* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %78 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @DRM_WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %73
  %82 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %83 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @GFX_CMD_STATUS_MASK, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @DRM_WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %81
  %94 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %95 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %134

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %70
  %101 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %102 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.psp_gfx_cmd_resp*, %struct.psp_gfx_cmd_resp** %8, align 8
  %108 = getelementptr inbounds %struct.psp_gfx_cmd_resp, %struct.psp_gfx_cmd_resp* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %111 = icmp ne %struct.amdgpu_firmware_info* %110, null
  br i1 %111, label %112, label %129

112:                                              ; preds = %100
  %113 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %114 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %120 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %122 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %128 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %112, %100
  %130 = load %struct.psp_context*, %struct.psp_context** %6, align 8
  %131 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %129, %93, %38
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.psp_gfx_cmd_resp*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @psp_cmd_submit(%struct.psp_context*, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DRM_WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
