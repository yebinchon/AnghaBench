; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c_dpu_vbif_clear_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c_dpu_vbif_clear_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.dpu_hw_vbif** }
%struct.dpu_hw_vbif = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_hw_vbif*, i64*, i64*)* }

@.str = private unnamed_addr constant [29 x i8] c"VBIF %d: pnd 0x%X, src 0x%X\0A\00", align 1
@VBIF_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_vbif_clear_errors(%struct.dpu_kms* %0) #0 {
  %2 = alloca %struct.dpu_kms*, align 8
  %3 = alloca %struct.dpu_hw_vbif*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dpu_kms* %0, %struct.dpu_kms** %2, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %10 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %9, i32 0, i32 0
  %11 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %10, align 8
  %12 = call i64 @ARRAY_SIZE(%struct.dpu_hw_vbif** %11)
  %13 = icmp ult i64 %8, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %7
  %15 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %16 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %15, i32 0, i32 0
  %17 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %17, i64 %18
  %20 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %19, align 8
  store %struct.dpu_hw_vbif* %20, %struct.dpu_hw_vbif** %3, align 8
  %21 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %22 = icmp ne %struct.dpu_hw_vbif* %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %14
  %24 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %25 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.dpu_hw_vbif*, i64*, i64*)*, i32 (%struct.dpu_hw_vbif*, i64*, i64*)** %26, align 8
  %28 = icmp ne i32 (%struct.dpu_hw_vbif*, i64*, i64*)* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %31 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.dpu_hw_vbif*, i64*, i64*)*, i32 (%struct.dpu_hw_vbif*, i64*, i64*)** %32, align 8
  %34 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %35 = call i32 %33(%struct.dpu_hw_vbif* %34, i64* %5, i64* %6)
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38, %29
  %42 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %3, align 8
  %43 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VBIF_0, align 8
  %46 = sub nsw i64 %44, %45
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %41, %38
  br label %51

51:                                               ; preds = %50, %23, %14
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %7

55:                                               ; preds = %7
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.dpu_hw_vbif**) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
