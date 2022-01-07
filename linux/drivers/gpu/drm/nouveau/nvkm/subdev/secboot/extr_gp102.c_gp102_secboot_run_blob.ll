; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp102.c_gp102_secboot_run_blob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp102.c_gp102_secboot_run_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_secboot = type { i32 }
%struct.nvkm_gpuobj = type { i32 }
%struct.nvkm_falcon = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_secboot*, %struct.nvkm_gpuobj*, %struct.nvkm_falcon*)* @gp102_secboot_run_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp102_secboot_run_blob(%struct.nvkm_secboot* %0, %struct.nvkm_gpuobj* %1, %struct.nvkm_falcon* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_secboot*, align 8
  %6 = alloca %struct.nvkm_gpuobj*, align 8
  %7 = alloca %struct.nvkm_falcon*, align 8
  %8 = alloca i32, align 4
  store %struct.nvkm_secboot* %0, %struct.nvkm_secboot** %5, align 8
  store %struct.nvkm_gpuobj* %1, %struct.nvkm_gpuobj** %6, align 8
  store %struct.nvkm_falcon* %2, %struct.nvkm_falcon** %7, align 8
  %9 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %10 = call i64 @gp102_secboot_scrub_required(%struct.nvkm_secboot* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %14 = call i32 @gp102_run_secure_scrub(%struct.nvkm_secboot* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %25

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %3
  %21 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %5, align 8
  %22 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %23 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %24 = call i32 @gm200_secboot_run_blob(%struct.nvkm_secboot* %21, %struct.nvkm_gpuobj* %22, %struct.nvkm_falcon* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i64 @gp102_secboot_scrub_required(%struct.nvkm_secboot*) #1

declare dso_local i32 @gp102_run_secure_scrub(%struct.nvkm_secboot*) #1

declare dso_local i32 @gm200_secboot_run_blob(%struct.nvkm_secboot*, %struct.nvkm_gpuobj*, %struct.nvkm_falcon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
