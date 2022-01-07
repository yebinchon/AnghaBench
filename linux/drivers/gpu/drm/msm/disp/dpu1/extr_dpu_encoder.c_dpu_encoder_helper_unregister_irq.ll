; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_unregister_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_unregister_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, i32, %struct.dpu_encoder_irq* }
%struct.dpu_encoder_irq = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"duplicate unregister id=%u, intr=%d, hw=%d, irq=%d\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"disable failed id=%u, intr=%d, hw=%d, irq=%d ret=%d\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"unreg cb fail id=%u, intr=%d, hw=%d, irq=%d ret=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_encoder_phys*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_encoder_irq*, align 8
  %7 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %9 = icmp ne %struct.dpu_encoder_phys* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %104

14:                                               ; preds = %2
  %15 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %15, i32 0, i32 2
  %17 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %17, i64 %19
  store %struct.dpu_encoder_irq* %20, %struct.dpu_encoder_irq** %6, align 8
  %21 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %22 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %14
  %26 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %27 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @DRMID(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %32 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %35 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, i32, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30, i32 %33, i32 %36)
  store i32 0, i32* %3, align 4
  br label %104

38:                                               ; preds = %14
  %39 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %40 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %43 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %42, i32 0, i32 0
  %44 = call i32 @dpu_core_irq_disable(i32 %41, i32* %43, i32 1)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %38
  %48 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %49 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @DRMID(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %54 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %57 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i8*, i32, i32, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52, i32 %55, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %47, %38
  %62 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %63 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %66 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %69 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %68, i32 0, i32 2
  %70 = call i32 @dpu_core_irq_unregister_callback(i32 %64, i32 %67, i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %61
  %74 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %75 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @DRMID(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %80 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %83 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i8*, i32, i32, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %78, i32 %81, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %73, %61
  %88 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %89 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @DRMID(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %94 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %97 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @trace_dpu_enc_irq_unregister_success(i32 %91, i32 %92, i32 %95, i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  %102 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %6, align 8
  %103 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %87, %25, %10
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @dpu_core_irq_disable(i32, i32*, i32) #1

declare dso_local i32 @dpu_core_irq_unregister_callback(i32, i32, i32*) #1

declare dso_local i32 @trace_dpu_enc_irq_unregister_success(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
