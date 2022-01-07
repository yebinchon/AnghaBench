; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_msgqueue.c_acr_ls_pmu_post_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_msgqueue.c_acr_ls_pmu_post_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_acr = type { i64 }
%struct.nvkm_secboot = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_pmu* }
%struct.nvkm_pmu = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@NVKM_MSGQUEUE_CMDLINE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s started\0A\00", align 1
@nvkm_secboot_falcon_name = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acr_ls_pmu_post_run(%struct.nvkm_acr* %0, %struct.nvkm_secboot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_acr*, align 8
  %5 = alloca %struct.nvkm_secboot*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.nvkm_pmu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_acr* %0, %struct.nvkm_acr** %4, align 8
  store %struct.nvkm_secboot* %1, %struct.nvkm_secboot** %5, align 8
  %10 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %6, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %14, i32 0, i32 0
  %16 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %15, align 8
  store %struct.nvkm_pmu* %16, %struct.nvkm_pmu** %7, align 8
  %17 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %7, align 8
  %18 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NVKM_MSGQUEUE_CMDLINE_SIZE, align 8
  %24 = sub nsw i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %7, align 8
  %26 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %7, align 8
  %29 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @acr_ls_msgqueue_post_run(i32 %27, %struct.TYPE_6__* %30, i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %2
  %38 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %39 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %38, i32 0, i32 0
  %40 = load i32*, i32** @nvkm_secboot_falcon_name, align 8
  %41 = load %struct.nvkm_acr*, %struct.nvkm_acr** %4, align 8
  %42 = getelementptr inbounds %struct.nvkm_acr, %struct.nvkm_acr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nvkm_debug(%struct.TYPE_5__* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %37, %35
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @acr_ls_msgqueue_post_run(i32, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @nvkm_debug(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
