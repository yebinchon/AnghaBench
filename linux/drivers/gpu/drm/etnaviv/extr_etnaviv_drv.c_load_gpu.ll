; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_load_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_load_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.etnaviv_drm_private* }
%struct.etnaviv_drm_private = type { %struct.etnaviv_gpu** }
%struct.etnaviv_gpu = type { i32 }

@ETNA_MAX_PIPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @load_gpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_gpu(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.etnaviv_drm_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.etnaviv_gpu*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %8, align 8
  store %struct.etnaviv_drm_private* %9, %struct.etnaviv_drm_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %38, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ETNA_MAX_PIPES, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %3, align 8
  %16 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %15, i32 0, i32 0
  %17 = load %struct.etnaviv_gpu**, %struct.etnaviv_gpu*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %17, i64 %19
  %21 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %20, align 8
  store %struct.etnaviv_gpu* %21, %struct.etnaviv_gpu** %5, align 8
  %22 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %23 = icmp ne %struct.etnaviv_gpu* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %26 = call i32 @etnaviv_gpu_init(%struct.etnaviv_gpu* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %3, align 8
  %31 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %30, i32 0, i32 0
  %32 = load %struct.etnaviv_gpu**, %struct.etnaviv_gpu*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %32, i64 %34
  store %struct.etnaviv_gpu* null, %struct.etnaviv_gpu** %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  br label %37

37:                                               ; preds = %36, %14
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %10

41:                                               ; preds = %10
  ret void
}

declare dso_local i32 @etnaviv_gpu_init(%struct.etnaviv_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
