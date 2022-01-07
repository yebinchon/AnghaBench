; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp102.c_gp102_secboot_scrub_required.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp102.c_gp102_secboot_scrub_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_secboot = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_secboot*)* @gp102_secboot_scrub_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp102_secboot_scrub_required(%struct.nvkm_secboot* %0) #0 {
  %2 = alloca %struct.nvkm_secboot*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_secboot* %0, %struct.nvkm_secboot** %2, align 8
  %6 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %6, i32 0, i32 0
  store %struct.nvkm_subdev* %7, %struct.nvkm_subdev** %3, align 8
  %8 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %4, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %12 = call i32 @nvkm_wr32(%struct.nvkm_device* %11, i32 1051856, i32 2)
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %14 = call i32 @nvkm_rd32(%struct.nvkm_device* %13, i32 1051856)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @BIT(i32 4)
  %17 = and i32 %15, %16
  ret i32 %17
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
