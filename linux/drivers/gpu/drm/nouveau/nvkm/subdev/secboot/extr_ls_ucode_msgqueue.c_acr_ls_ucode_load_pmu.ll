; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_msgqueue.c_acr_ls_ucode_load_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_msgqueue.c_acr_ls_ucode_load_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_secboot = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_pmu* }
%struct.nvkm_pmu = type { i32, i32 }
%struct.ls_ucode_img = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pmu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acr_ls_ucode_load_pmu(%struct.nvkm_secboot* %0, i32 %1, %struct.ls_ucode_img* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_secboot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ls_ucode_img*, align 8
  %8 = alloca %struct.nvkm_pmu*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_secboot* %0, %struct.nvkm_secboot** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ls_ucode_img* %2, %struct.ls_ucode_img** %7, align 8
  %10 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %14, align 8
  store %struct.nvkm_pmu* %15, %struct.nvkm_pmu** %8, align 8
  %16 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %20 = call i32 @acr_ls_ucode_load_msgqueue(%struct.TYPE_6__* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18, %struct.ls_ucode_img* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %3
  %26 = load %struct.ls_ucode_img*, %struct.ls_ucode_img** %7, align 8
  %27 = getelementptr inbounds %struct.ls_ucode_img, %struct.ls_ucode_img* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %8, align 8
  %31 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %34 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %8, align 8
  %35 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %34, i32 0, i32 0
  %36 = call i32 @nvkm_msgqueue_new(i32 %29, i32 %32, %struct.nvkm_secboot* %33, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %39, %23
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @acr_ls_ucode_load_msgqueue(%struct.TYPE_6__*, i8*, i32, %struct.ls_ucode_img*) #1

declare dso_local i32 @nvkm_msgqueue_new(i32, i32, %struct.nvkm_secboot*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
