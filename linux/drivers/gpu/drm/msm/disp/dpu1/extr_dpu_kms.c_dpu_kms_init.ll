; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_kms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_kms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.dpu_kms = type { %struct.msm_kms, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"drm device node invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get irq: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_kms* @dpu_kms_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.dpu_kms*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = icmp ne %struct.drm_device* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.msm_drm_private*, %struct.msm_drm_private** %11, align 8
  %13 = icmp ne %struct.msm_drm_private* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %1
  %15 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.msm_kms* @ERR_PTR(i32 %17)
  store %struct.msm_kms* %18, %struct.msm_kms** %2, align 8
  br label %48

19:                                               ; preds = %9
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.msm_drm_private*, %struct.msm_drm_private** %21, align 8
  store %struct.msm_drm_private* %22, %struct.msm_drm_private** %4, align 8
  %23 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %24 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.dpu_kms* @to_dpu_kms(i32 %25)
  store %struct.dpu_kms* %26, %struct.dpu_kms** %5, align 8
  %27 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %28 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @irq_of_parse_and_map(i32 %32, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.msm_kms* @ERR_PTR(i32 %39)
  store %struct.msm_kms* %40, %struct.msm_kms** %2, align 8
  br label %48

41:                                               ; preds = %19
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %44 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %47 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %46, i32 0, i32 0
  store %struct.msm_kms* %47, %struct.msm_kms** %2, align 8
  br label %48

48:                                               ; preds = %41, %36, %14
  %49 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  ret %struct.msm_kms* %49
}

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local %struct.msm_kms* @ERR_PTR(i32) #1

declare dso_local %struct.dpu_kms* @to_dpu_kms(i32) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
