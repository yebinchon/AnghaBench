; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_irq_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_irq_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_virt = type { i32, %struct.dpu_encoder_phys** }
%struct.dpu_encoder_phys = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_encoder_phys*, i32)* }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"enable:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @_dpu_encoder_irq_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_encoder_irq_control(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_encoder_virt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_encoder_phys*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = icmp ne %struct.drm_encoder* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %52

12:                                               ; preds = %2
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %13)
  store %struct.dpu_encoder_virt* %14, %struct.dpu_encoder_virt** %5, align 8
  %15 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %49, %12
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %26 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %25, i32 0, i32 1
  %27 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %27, i64 %29
  %31 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %30, align 8
  store %struct.dpu_encoder_phys* %31, %struct.dpu_encoder_phys** %7, align 8
  %32 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %7, align 8
  %33 = icmp ne %struct.dpu_encoder_phys* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %24
  %35 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %7, align 8
  %36 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dpu_encoder_phys*, i32)*, i32 (%struct.dpu_encoder_phys*, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.dpu_encoder_phys*, i32)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %7, align 8
  %42 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dpu_encoder_phys*, i32)*, i32 (%struct.dpu_encoder_phys*, i32)** %43, align 8
  %45 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %7, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 %44(%struct.dpu_encoder_phys* %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %34, %24
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %18

52:                                               ; preds = %10, %18
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
