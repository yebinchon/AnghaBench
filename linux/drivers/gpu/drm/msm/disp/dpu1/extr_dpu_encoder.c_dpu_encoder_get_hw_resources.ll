; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_get_hw_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_get_hw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_hw_resources = type { i32 }
%struct.dpu_encoder_virt = type { i32, %struct.dpu_encoder_phys** }
%struct.dpu_encoder_phys = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_encoder_phys*, %struct.dpu_encoder_hw_resources.0*)* }
%struct.dpu_encoder_hw_resources.0 = type opaque

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_encoder_get_hw_resources(%struct.drm_encoder* %0, %struct.dpu_encoder_hw_resources* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.dpu_encoder_hw_resources*, align 8
  %5 = alloca %struct.dpu_encoder_virt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_encoder_phys*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.dpu_encoder_hw_resources* %1, %struct.dpu_encoder_hw_resources** %4, align 8
  store %struct.dpu_encoder_virt* null, %struct.dpu_encoder_virt** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %8)
  store %struct.dpu_encoder_virt* %9, %struct.dpu_encoder_virt** %5, align 8
  %10 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %11 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.dpu_encoder_hw_resources*, %struct.dpu_encoder_hw_resources** %4, align 8
  %13 = call i32 @memset(%struct.dpu_encoder_hw_resources* %12, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %46, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %17 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %22 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %21, i32 0, i32 1
  %23 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %23, i64 %25
  %27 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %26, align 8
  store %struct.dpu_encoder_phys* %27, %struct.dpu_encoder_phys** %7, align 8
  %28 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %7, align 8
  %29 = icmp ne %struct.dpu_encoder_phys* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %20
  %31 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %7, align 8
  %32 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.dpu_encoder_phys*, %struct.dpu_encoder_hw_resources.0*)*, i32 (%struct.dpu_encoder_phys*, %struct.dpu_encoder_hw_resources.0*)** %33, align 8
  %35 = icmp ne i32 (%struct.dpu_encoder_phys*, %struct.dpu_encoder_hw_resources.0*)* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %7, align 8
  %38 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.dpu_encoder_phys*, %struct.dpu_encoder_hw_resources.0*)*, i32 (%struct.dpu_encoder_phys*, %struct.dpu_encoder_hw_resources.0*)** %39, align 8
  %41 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %7, align 8
  %42 = load %struct.dpu_encoder_hw_resources*, %struct.dpu_encoder_hw_resources** %4, align 8
  %43 = bitcast %struct.dpu_encoder_hw_resources* %42 to %struct.dpu_encoder_hw_resources.0*
  %44 = call i32 %40(%struct.dpu_encoder_phys* %41, %struct.dpu_encoder_hw_resources.0* %43)
  br label %45

45:                                               ; preds = %36, %30, %20
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %14

49:                                               ; preds = %14
  ret void
}

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt*, i8*) #1

declare dso_local i32 @memset(%struct.dpu_encoder_hw_resources*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
