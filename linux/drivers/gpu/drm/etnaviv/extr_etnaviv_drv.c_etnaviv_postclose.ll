; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_etnaviv_postclose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_etnaviv_postclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.etnaviv_drm_private* }
%struct.etnaviv_drm_private = type { %struct.etnaviv_gpu** }
%struct.etnaviv_gpu = type { i32 }
%struct.drm_file = type { %struct.etnaviv_file_private* }
%struct.etnaviv_file_private = type { i32, i32* }

@ETNA_MAX_PIPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_file*)* @etnaviv_postclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_postclose(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.etnaviv_drm_private*, align 8
  %6 = alloca %struct.etnaviv_file_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.etnaviv_gpu*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %10, align 8
  store %struct.etnaviv_drm_private* %11, %struct.etnaviv_drm_private** %5, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %13 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 0
  %14 = load %struct.etnaviv_file_private*, %struct.etnaviv_file_private** %13, align 8
  store %struct.etnaviv_file_private* %14, %struct.etnaviv_file_private** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %38, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ETNA_MAX_PIPES, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %5, align 8
  %21 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %20, i32 0, i32 0
  %22 = load %struct.etnaviv_gpu**, %struct.etnaviv_gpu*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %22, i64 %24
  %26 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %25, align 8
  store %struct.etnaviv_gpu* %26, %struct.etnaviv_gpu** %8, align 8
  %27 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %8, align 8
  %28 = icmp ne %struct.etnaviv_gpu* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.etnaviv_file_private*, %struct.etnaviv_file_private** %6, align 8
  %31 = getelementptr inbounds %struct.etnaviv_file_private, %struct.etnaviv_file_private* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @drm_sched_entity_destroy(i32* %35)
  br label %37

37:                                               ; preds = %29, %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %15

41:                                               ; preds = %15
  %42 = load %struct.etnaviv_file_private*, %struct.etnaviv_file_private** %6, align 8
  %43 = getelementptr inbounds %struct.etnaviv_file_private, %struct.etnaviv_file_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @etnaviv_iommu_context_put(i32 %44)
  %46 = load %struct.etnaviv_file_private*, %struct.etnaviv_file_private** %6, align 8
  %47 = call i32 @kfree(%struct.etnaviv_file_private* %46)
  ret void
}

declare dso_local i32 @drm_sched_entity_destroy(i32*) #1

declare dso_local i32 @etnaviv_iommu_context_put(i32) #1

declare dso_local i32 @kfree(%struct.etnaviv_file_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
