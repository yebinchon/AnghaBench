; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i64, i64, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"invalid encoder/device\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid hw_intf %d hw_ctl %d\0A\00", align 1
@DPU_ENC_DISABLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"already disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"wait disable failed: id:%u intf:%d ret:%d\0A\00", align 1
@INTF_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_vid_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_vid_disable(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.msm_drm_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %6 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %7 = icmp ne %struct.dpu_encoder_phys* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %9, i32 0, i32 3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %14, i32 0, i32 3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %22 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.msm_drm_private*, %struct.msm_drm_private** %26, align 8
  %28 = icmp ne %struct.msm_drm_private* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %20, %13, %8, %1
  %30 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %139

31:                                               ; preds = %20
  %32 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %33 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %32, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.msm_drm_private*, %struct.msm_drm_private** %37, align 8
  store %struct.msm_drm_private* %38, %struct.msm_drm_private** %3, align 8
  %39 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %40 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %45 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %43, %31
  %49 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %50 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  %53 = zext i1 %52 to i32
  %54 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %55 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %58)
  br label %139

60:                                               ; preds = %43
  %61 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %62 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %65, align 8
  %67 = icmp ne i32 (%struct.TYPE_7__*, i32)* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @WARN_ON(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %139

73:                                               ; preds = %60
  %74 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %75 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DPU_ENC_DISABLED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %139

81:                                               ; preds = %73
  %82 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %83 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @spin_lock_irqsave(i32 %84, i64 %85)
  %87 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %88 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %87, i32 0, i32 2
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %91, align 8
  %93 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %94 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = call i32 %92(%struct.TYPE_7__* %95, i32 0)
  %97 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %98 = call i64 @dpu_encoder_phys_vid_is_master(%struct.dpu_encoder_phys* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %81
  %101 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %102 = call i32 @dpu_encoder_phys_inc_pending(%struct.dpu_encoder_phys* %101)
  br label %103

103:                                              ; preds = %100, %81
  %104 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %105 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32 %106, i64 %107)
  %109 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %110 = call i64 @dpu_encoder_phys_vid_is_master(%struct.dpu_encoder_phys* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %103
  %113 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %114 = call i32 @dpu_encoder_phys_vid_wait_for_vblank(%struct.dpu_encoder_phys* %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %112
  %118 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %119 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %118, i32 0, i32 4
  %120 = call i32 @atomic_set(i32* %119, i32 0)
  %121 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %122 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %121, i32 0, i32 3
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = call i32 @DRMID(%struct.TYPE_8__* %123)
  %125 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %126 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %125, i32 0, i32 2
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @INTF_0, align 8
  %131 = sub nsw i64 %129, %130
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %124, i64 %131, i32 %132)
  br label %134

134:                                              ; preds = %117, %112
  br label %135

135:                                              ; preds = %134, %103
  %136 = load i64, i64* @DPU_ENC_DISABLED, align 8
  %137 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %138 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %79, %72, %48, %29
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @dpu_encoder_phys_vid_is_master(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @dpu_encoder_phys_inc_pending(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dpu_encoder_phys_vid_wait_for_vblank(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64, i32) #1

declare dso_local i32 @DRMID(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
