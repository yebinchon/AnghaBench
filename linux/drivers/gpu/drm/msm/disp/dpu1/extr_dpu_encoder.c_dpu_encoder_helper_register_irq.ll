; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_register_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_register_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, i32, %struct.dpu_encoder_irq* }
%struct.dpu_encoder_irq = type { i32, i32, i32, i32, i32 }

@INTR_IDX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid params\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"skipping already registered irq %s type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to lookup IRQ index for %s type:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to register IRQ callback for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"enable failed id=%u, intr=%d, hw=%d, irq=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpu_encoder_helper_register_irq(%struct.dpu_encoder_phys* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_encoder_phys*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_encoder_irq*, align 8
  %7 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %9 = icmp ne %struct.dpu_encoder_phys* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @INTR_IDX_MAX, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %2
  %15 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %139

18:                                               ; preds = %10
  %19 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %20 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %19, i32 0, i32 2
  %21 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %21, i64 %23
  store %struct.dpu_encoder_irq* %24, %struct.dpu_encoder_irq** %6, align 8
  %25 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %26 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %31 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %32 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %35 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @DPU_DEBUG_PHYS(%struct.dpu_encoder_phys* %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  store i32 0, i32* %3, align 4
  br label %139

38:                                               ; preds = %18
  %39 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %40 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %43 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %46 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dpu_core_irq_idx_lookup(i32 %41, i32 %44, i32 %47)
  %49 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %50 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %52 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %38
  %56 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %57 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %58 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %61 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.dpu_encoder_phys*, i8*, i32, ...) @DPU_ERROR_PHYS(%struct.dpu_encoder_phys* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %139

66:                                               ; preds = %38
  %67 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %68 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %71 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %74 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %73, i32 0, i32 2
  %75 = call i32 @dpu_core_irq_register_callback(i32 %69, i32 %72, i32* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %66
  %79 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %80 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %81 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.dpu_encoder_phys*, i8*, i32, ...) @DPU_ERROR_PHYS(%struct.dpu_encoder_phys* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  %86 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %87 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %139

89:                                               ; preds = %66
  %90 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %91 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %94 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %93, i32 0, i32 0
  %95 = call i32 @dpu_core_irq_enable(i32 %92, i32* %94, i32 1)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %89
  %99 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %100 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @DRMID(i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %105 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %108 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %102, i32 %103, i32 %106, i32 %109)
  %111 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %112 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %115 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %118 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %117, i32 0, i32 2
  %119 = call i32 @dpu_core_irq_unregister_callback(i32 %113, i32 %116, i32* %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  %122 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %123 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %3, align 4
  br label %139

125:                                              ; preds = %89
  %126 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %127 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @DRMID(i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %132 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %135 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @trace_dpu_enc_irq_register_success(i32 %129, i32 %130, i32 %133, i32 %136)
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %125, %98, %78, %55, %29, %14
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @DPU_DEBUG_PHYS(%struct.dpu_encoder_phys*, i8*, i32, i32) #1

declare dso_local i32 @dpu_core_irq_idx_lookup(i32, i32, i32) #1

declare dso_local i32 @DPU_ERROR_PHYS(%struct.dpu_encoder_phys*, i8*, i32, ...) #1

declare dso_local i32 @dpu_core_irq_register_callback(i32, i32, i32*) #1

declare dso_local i32 @dpu_core_irq_enable(i32, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @dpu_core_irq_unregister_callback(i32, i32, i32*) #1

declare dso_local i32 @trace_dpu_enc_irq_register_success(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
