; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_prepare_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_prepare_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_virt = type { i32, %struct.dpu_encoder_phys** }
%struct.dpu_encoder_phys = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_encoder_phys*)* }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_encoder_prepare_commit(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca %struct.dpu_encoder_phys*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = icmp ne %struct.drm_encoder* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %46

10:                                               ; preds = %1
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %11)
  store %struct.dpu_encoder_virt* %12, %struct.dpu_encoder_virt** %3, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %43, %10
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %20, i32 0, i32 1
  %22 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %22, i64 %24
  %26 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %25, align 8
  store %struct.dpu_encoder_phys* %26, %struct.dpu_encoder_phys** %4, align 8
  %27 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %28 = icmp ne %struct.dpu_encoder_phys* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %31 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.dpu_encoder_phys*)*, i32 (%struct.dpu_encoder_phys*)** %32, align 8
  %34 = icmp ne i32 (%struct.dpu_encoder_phys*)* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %37 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dpu_encoder_phys*)*, i32 (%struct.dpu_encoder_phys*)** %38, align 8
  %40 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %41 = call i32 %39(%struct.dpu_encoder_phys* %40)
  br label %42

42:                                               ; preds = %35, %29, %19
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %13

46:                                               ; preds = %8, %13
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
