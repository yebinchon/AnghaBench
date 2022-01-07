; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_frame_done_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_frame_done_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_phys = type { i32 }
%struct.dpu_encoder_virt = type { i32, i32, i32 (i32, i32)*, i32, i32, i32*, %struct.dpu_encoder_phys** }

@DPU_ENCODER_FRAME_EVENT_DONE = common dso_local global i32 0, align 4
@DPU_ENCODER_FRAME_EVENT_ERROR = common dso_local global i32 0, align 4
@DPU_ENCODER_FRAME_EVENT_PANEL_DEAD = common dso_local global i32 0, align 4
@DPU_ENC_RC_EVENT_FRAME_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.dpu_encoder_phys*, i32)* @dpu_encoder_frame_done_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_frame_done_callback(%struct.drm_encoder* %0, %struct.dpu_encoder_phys* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.dpu_encoder_phys*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_encoder_virt*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.dpu_encoder_phys* %1, %struct.dpu_encoder_phys** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %9)
  store %struct.dpu_encoder_virt* %10, %struct.dpu_encoder_virt** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DPU_ENCODER_FRAME_EVENT_DONE, align 4
  %13 = load i32, i32* @DPU_ENCODER_FRAME_EVENT_ERROR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DPU_ENCODER_FRAME_EVENT_PANEL_DEAD, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %11, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %102

19:                                               ; preds = %3
  %20 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %19
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %28 = call i32 @DRMID(%struct.drm_encoder* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %31 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @trace_dpu_enc_frame_done_cb_not_busy(i32 %28, i32 %29, i32 %32)
  br label %117

34:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %67, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %38 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %35
  %42 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %43 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %42, i32 0, i32 6
  %44 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %44, i64 %46
  %48 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %47, align 8
  %49 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %50 = icmp eq %struct.dpu_encoder_phys* %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %41
  %52 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %53 = call i32 @DRMID(%struct.drm_encoder* %52)
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %56 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @trace_dpu_enc_frame_done_cb(i32 %53, i32 %54, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %63 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @clear_bit(i32 %61, i32* %64)
  br label %66

66:                                               ; preds = %51, %41
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %35

70:                                               ; preds = %35
  %71 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %72 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %101, label %77

77:                                               ; preds = %70
  %78 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %79 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %78, i32 0, i32 4
  %80 = call i32 @atomic_set(i32* %79, i32 0)
  %81 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %82 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %81, i32 0, i32 3
  %83 = call i32 @del_timer(i32* %82)
  %84 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %85 = load i32, i32* @DPU_ENC_RC_EVENT_FRAME_DONE, align 4
  %86 = call i32 @dpu_encoder_resource_control(%struct.drm_encoder* %84, i32 %85)
  %87 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %88 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %87, i32 0, i32 2
  %89 = load i32 (i32, i32)*, i32 (i32, i32)** %88, align 8
  %90 = icmp ne i32 (i32, i32)* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %77
  %92 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %93 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %92, i32 0, i32 2
  %94 = load i32 (i32, i32)*, i32 (i32, i32)** %93, align 8
  %95 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %96 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 %94(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %91, %77
  br label %101

101:                                              ; preds = %100, %70
  br label %117

102:                                              ; preds = %3
  %103 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %104 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %103, i32 0, i32 2
  %105 = load i32 (i32, i32)*, i32 (i32, i32)** %104, align 8
  %106 = icmp ne i32 (i32, i32)* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %109 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %108, i32 0, i32 2
  %110 = load i32 (i32, i32)*, i32 (i32, i32)** %109, align 8
  %111 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %112 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 %110(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %107, %102
  br label %117

117:                                              ; preds = %26, %116, %101
  ret void
}

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @trace_dpu_enc_frame_done_cb_not_busy(i32, i32, i32) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

declare dso_local i32 @trace_dpu_enc_frame_done_cb(i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @dpu_encoder_resource_control(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
