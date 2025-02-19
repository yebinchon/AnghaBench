; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_plane.c_fsl_dcu_drm_init_planes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_plane.c_fsl_dcu_drm_init_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.fsl_dcu_drm_device* }
%struct.fsl_dcu_drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_dcu_drm_init_planes(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.fsl_dcu_drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %7, align 8
  store %struct.fsl_dcu_drm_device* %8, %struct.fsl_dcu_drm_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %9
  store i32 1, i32* %5, align 4
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %21 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %19, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %28 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @DCU_CTRLDESCLN(i32 %30, i32 %31)
  %33 = call i32 @regmap_write(i32 %29, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %18

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %9

41:                                               ; preds = %9
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @DCU_CTRLDESCLN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
