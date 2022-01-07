; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_get_intf_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_get_intf_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_virt = type { i32, %struct.dpu_encoder_phys**, %struct.TYPE_2__* }
%struct.dpu_encoder_phys = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@INTF_MODE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpu_encoder_get_intf_mode(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.dpu_encoder_virt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_encoder_phys*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.dpu_encoder_virt* null, %struct.dpu_encoder_virt** %4, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %8 = icmp ne %struct.drm_encoder* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @INTF_MODE_NONE, align 4
  store i32 %11, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %13)
  store %struct.dpu_encoder_virt* %14, %struct.dpu_encoder_virt** %4, align 8
  %15 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %4, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %4, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %4, align 8
  %29 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %4, align 8
  %34 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %33, i32 0, i32 1
  %35 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %35, i64 %37
  %39 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %38, align 8
  store %struct.dpu_encoder_phys* %39, %struct.dpu_encoder_phys** %6, align 8
  %40 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %6, align 8
  %41 = icmp ne %struct.dpu_encoder_phys* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %6, align 8
  %44 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load i32, i32* @INTF_MODE_NONE, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %42, %19, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
