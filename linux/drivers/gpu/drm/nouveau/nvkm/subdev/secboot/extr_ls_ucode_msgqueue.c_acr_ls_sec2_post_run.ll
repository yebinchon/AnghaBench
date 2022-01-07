; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_msgqueue.c_acr_ls_sec2_post_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_msgqueue.c_acr_ls_sec2_post_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_acr = type { i64 }
%struct.nvkm_secboot = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_sec2* }
%struct.nvkm_sec2 = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s started\0A\00", align 1
@nvkm_secboot_falcon_name = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acr_ls_sec2_post_run(%struct.nvkm_acr* %0, %struct.nvkm_secboot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_acr*, align 8
  %5 = alloca %struct.nvkm_secboot*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.nvkm_sec2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_acr* %0, %struct.nvkm_acr** %4, align 8
  store %struct.nvkm_secboot* %1, %struct.nvkm_secboot** %5, align 8
  %11 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %11, i32 0, i32 0
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %6, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %7, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %16, i32 0, i32 0
  %18 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %17, align 8
  store %struct.nvkm_sec2* %18, %struct.nvkm_sec2** %8, align 8
  store i32 16777216, i32* %9, align 4
  %19 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %8, align 8
  %23 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @acr_ls_msgqueue_post_run(i32 %21, i32 %24, i32 16777216)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %32 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %31, i32 0, i32 0
  %33 = load i32*, i32** @nvkm_secboot_falcon_name, align 8
  %34 = load %struct.nvkm_acr*, %struct.nvkm_acr** %4, align 8
  %35 = getelementptr inbounds %struct.nvkm_acr, %struct.nvkm_acr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nvkm_debug(%struct.nvkm_subdev* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %28
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @acr_ls_msgqueue_post_run(i32, i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
