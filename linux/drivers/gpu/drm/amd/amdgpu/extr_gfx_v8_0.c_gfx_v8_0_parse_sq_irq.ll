; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_parse_sq_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_parse_sq_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@SQ_INTERRUPT_WORD_CMN = common dso_local global i32 0, align 4
@ENCODING = common dso_local global i32 0, align 4
@SE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [192 x i8] c"SQ general purpose intr detected:se_id %d, immed_overflow %d, host_reg_overflow %d,host_cmd_overflow %d, cmd_timestamp %d,reg_timestamp %d, thread_trace_buff_full %d,wlt %d, thread_trace %d.\0A\00", align 1
@SQ_INTERRUPT_WORD_AUTO = common dso_local global i32 0, align 4
@IMMED_OVERFLOW = common dso_local global i32 0, align 4
@HOST_REG_OVERFLOW = common dso_local global i32 0, align 4
@HOST_CMD_OVERFLOW = common dso_local global i32 0, align 4
@CMD_TIMESTAMP = common dso_local global i32 0, align 4
@REG_TIMESTAMP = common dso_local global i32 0, align 4
@THREAD_TRACE_BUF_FULL = common dso_local global i32 0, align 4
@WLT = common dso_local global i32 0, align 4
@THREAD_TRACE = common dso_local global i32 0, align 4
@SQ_INTERRUPT_WORD_WAVE = common dso_local global i32 0, align 4
@CU_ID = common dso_local global i32 0, align 4
@SH_ID = common dso_local global i32 0, align 4
@mmSQ_EDC_INFO = common dso_local global i32 0, align 4
@SQ_EDC_INFO = common dso_local global i32 0, align 4
@SOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"instruction intr\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"EDC/ECC error\00", align 1
@.str.3 = private unnamed_addr constant [111 x i8] c"SQ %s detected: se_id %d, sh_id %d, cu_id %d, simd_id %d, wave_id %d, vm_id %d trap %s, sq_ed_info.source %s.\0A\00", align 1
@SIMD_ID = common dso_local global i32 0, align 4
@WAVE_ID = common dso_local global i32 0, align 4
@VM_ID = common dso_local global i32 0, align 4
@PRIV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@sq_edc_source_names = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"unavailable\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"SQ invalid encoding type\0A.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v8_0_parse_sq_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_parse_sq_irq(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SQ_INTERRUPT_WORD_CMN, align 4
  %13 = load i32, i32* @ENCODING, align 4
  %14 = call i32 @REG_GET_FIELD(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SQ_INTERRUPT_WORD_CMN, align 4
  %17 = load i32, i32* @SE_ID, align 4
  %18 = call i32 @REG_GET_FIELD(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %130 [
    i32 0, label %20
    i32 1, label %55
    i32 2, label %55
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SQ_INTERRUPT_WORD_AUTO, align 4
  %24 = load i32, i32* @IMMED_OVERFLOW, align 4
  %25 = call i32 @REG_GET_FIELD(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SQ_INTERRUPT_WORD_AUTO, align 4
  %28 = load i32, i32* @HOST_REG_OVERFLOW, align 4
  %29 = call i32 @REG_GET_FIELD(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SQ_INTERRUPT_WORD_AUTO, align 4
  %32 = load i32, i32* @HOST_CMD_OVERFLOW, align 4
  %33 = call i32 @REG_GET_FIELD(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SQ_INTERRUPT_WORD_AUTO, align 4
  %36 = load i32, i32* @CMD_TIMESTAMP, align 4
  %37 = call i32 @REG_GET_FIELD(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SQ_INTERRUPT_WORD_AUTO, align 4
  %40 = load i32, i32* @REG_TIMESTAMP, align 4
  %41 = call i32 @REG_GET_FIELD(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SQ_INTERRUPT_WORD_AUTO, align 4
  %44 = load i32, i32* @THREAD_TRACE_BUF_FULL, align 4
  %45 = call i32 @REG_GET_FIELD(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SQ_INTERRUPT_WORD_AUTO, align 4
  %48 = load i32, i32* @WLT, align 4
  %49 = call i32 @REG_GET_FIELD(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @SQ_INTERRUPT_WORD_AUTO, align 4
  %52 = load i32, i32* @THREAD_TRACE, align 4
  %53 = call i32 @REG_GET_FIELD(i32 %50, i32 %51, i32 %52)
  %54 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %29, i32 %33, i32 %37, i32 %41, i32 %45, i32 %49, i32 %53)
  br label %132

55:                                               ; preds = %2, %2
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @SQ_INTERRUPT_WORD_WAVE, align 4
  %58 = load i32, i32* @CU_ID, align 4
  %59 = call i32 @REG_GET_FIELD(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @SQ_INTERRUPT_WORD_WAVE, align 4
  %62 = load i32, i32* @SH_ID, align 4
  %63 = call i32 @REG_GET_FIELD(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = call i32 (...) @in_task()
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %55
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @gfx_v8_0_select_se_sh(%struct.amdgpu_device* %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @mmSQ_EDC_INFO, align 4
  %76 = call i32 @RREG32(i32 %75)
  %77 = load i32, i32* @SQ_EDC_INFO, align 4
  %78 = load i32, i32* @SOURCE, align 4
  %79 = call i32 @REG_GET_FIELD(i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = call i32 @gfx_v8_0_select_se_sh(%struct.amdgpu_device* %80, i32 -1, i32 -1, i32 -1)
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %85

85:                                               ; preds = %66, %55
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %90 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %94

91:                                               ; preds = %85
  %92 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %93 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %88
  %95 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @SQ_INTERRUPT_WORD_WAVE, align 4
  %101 = load i32, i32* @SIMD_ID, align 4
  %102 = call i32 @REG_GET_FIELD(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @SQ_INTERRUPT_WORD_WAVE, align 4
  %105 = load i32, i32* @WAVE_ID, align 4
  %106 = call i32 @REG_GET_FIELD(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @SQ_INTERRUPT_WORD_WAVE, align 4
  %109 = load i32, i32* @VM_ID, align 4
  %110 = call i32 @REG_GET_FIELD(i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @SQ_INTERRUPT_WORD_WAVE, align 4
  %113 = load i32, i32* @PRIV, align 4
  %114 = call i32 @REG_GET_FIELD(i32 %111, i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %126

120:                                              ; preds = %94
  %121 = load i8**, i8*** @sq_edc_source_names, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  br label %127

126:                                              ; preds = %94
  br label %127

127:                                              ; preds = %126, %120
  %128 = phi i8* [ %125, %120 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), %126 ]
  %129 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0), i8* %95, i32 %96, i32 %97, i32 %98, i32 %102, i32 %106, i32 %110, i8* %117, i8* %128)
  br label %132

130:                                              ; preds = %2
  %131 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %127, %20
  ret void
}

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, ...) #1

declare dso_local i32 @in_task(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v8_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
