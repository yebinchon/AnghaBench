; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_etnaviv_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_etnaviv_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.etnaviv_drm_private* }
%struct.etnaviv_drm_private = type { %struct.etnaviv_gpu**, i32, i32 }
%struct.etnaviv_gpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_sched_rq* }
%struct.drm_sched_rq = type { i32 }
%struct.drm_file = type { %struct.etnaviv_file_private* }
%struct.etnaviv_file_private = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETNA_MAX_PIPES = common dso_local global i32 0, align 4
@DRM_SCHED_PRIORITY_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*)* @etnaviv_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_open(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.etnaviv_drm_private*, align 8
  %7 = alloca %struct.etnaviv_file_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.etnaviv_gpu*, align 8
  %11 = alloca %struct.drm_sched_rq*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %13, align 8
  store %struct.etnaviv_drm_private* %14, %struct.etnaviv_drm_private** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.etnaviv_file_private* @kzalloc(i32 16, i32 %15)
  store %struct.etnaviv_file_private* %16, %struct.etnaviv_file_private** %7, align 8
  %17 = load %struct.etnaviv_file_private*, %struct.etnaviv_file_private** %7, align 8
  %18 = icmp ne %struct.etnaviv_file_private* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %6, align 8
  %24 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %6, align 8
  %27 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @etnaviv_iommu_context_init(i32 %25, i32 %28)
  %30 = load %struct.etnaviv_file_private*, %struct.etnaviv_file_private** %7, align 8
  %31 = getelementptr inbounds %struct.etnaviv_file_private, %struct.etnaviv_file_private* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.etnaviv_file_private*, %struct.etnaviv_file_private** %7, align 8
  %33 = getelementptr inbounds %struct.etnaviv_file_private, %struct.etnaviv_file_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %76

39:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %69, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ETNA_MAX_PIPES, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %6, align 8
  %46 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %45, i32 0, i32 0
  %47 = load %struct.etnaviv_gpu**, %struct.etnaviv_gpu*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %47, i64 %49
  %51 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %50, align 8
  store %struct.etnaviv_gpu* %51, %struct.etnaviv_gpu** %10, align 8
  %52 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %53 = icmp ne %struct.etnaviv_gpu* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %44
  %55 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %56 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %57, align 8
  %59 = load i64, i64* @DRM_SCHED_PRIORITY_NORMAL, align 8
  %60 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %58, i64 %59
  store %struct.drm_sched_rq* %60, %struct.drm_sched_rq** %11, align 8
  %61 = load %struct.etnaviv_file_private*, %struct.etnaviv_file_private** %7, align 8
  %62 = getelementptr inbounds %struct.etnaviv_file_private, %struct.etnaviv_file_private* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @drm_sched_entity_init(i32* %66, %struct.drm_sched_rq** %11, i32 1, i32* null)
  br label %68

68:                                               ; preds = %54, %44
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %40

72:                                               ; preds = %40
  %73 = load %struct.etnaviv_file_private*, %struct.etnaviv_file_private** %7, align 8
  %74 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %75 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %74, i32 0, i32 0
  store %struct.etnaviv_file_private* %73, %struct.etnaviv_file_private** %75, align 8
  store i32 0, i32* %3, align 4
  br label %80

76:                                               ; preds = %36
  %77 = load %struct.etnaviv_file_private*, %struct.etnaviv_file_private** %7, align 8
  %78 = call i32 @kfree(%struct.etnaviv_file_private* %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %72, %19
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.etnaviv_file_private* @kzalloc(i32, i32) #1

declare dso_local i32 @etnaviv_iommu_context_init(i32, i32) #1

declare dso_local i32 @drm_sched_entity_init(i32*, %struct.drm_sched_rq**, i32, i32*) #1

declare dso_local i32 @kfree(%struct.etnaviv_file_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
