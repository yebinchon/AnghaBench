; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_etnaviv_ioctl_pm_query_dom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_etnaviv_ioctl_pm_query_dom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.etnaviv_drm_private* }
%struct.etnaviv_drm_private = type { %struct.etnaviv_gpu** }
%struct.etnaviv_gpu = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_etnaviv_pm_domain = type { i64 }

@ETNA_MAX_PIPES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @etnaviv_ioctl_pm_query_dom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_ioctl_pm_query_dom(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.etnaviv_drm_private*, align 8
  %9 = alloca %struct.drm_etnaviv_pm_domain*, align 8
  %10 = alloca %struct.etnaviv_gpu*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %12, align 8
  store %struct.etnaviv_drm_private* %13, %struct.etnaviv_drm_private** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_etnaviv_pm_domain*
  store %struct.drm_etnaviv_pm_domain* %15, %struct.drm_etnaviv_pm_domain** %9, align 8
  %16 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %9, align 8
  %17 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ETNA_MAX_PIPES, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %8, align 8
  %26 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %25, i32 0, i32 0
  %27 = load %struct.etnaviv_gpu**, %struct.etnaviv_gpu*** %26, align 8
  %28 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %9, align 8
  %29 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, %struct.drm_etnaviv_pm_domain* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %27, i64 %30
  %32 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %31, align 8
  store %struct.etnaviv_gpu* %32, %struct.etnaviv_gpu** %10, align 8
  %33 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %34 = icmp ne %struct.etnaviv_gpu* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %24
  %39 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %10, align 8
  %40 = load %struct.drm_etnaviv_pm_domain*, %struct.drm_etnaviv_pm_domain** %9, align 8
  %41 = call i32 @etnaviv_pm_query_dom(%struct.etnaviv_gpu* %39, %struct.drm_etnaviv_pm_domain* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %35, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @etnaviv_pm_query_dom(%struct.etnaviv_gpu*, %struct.drm_etnaviv_pm_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
