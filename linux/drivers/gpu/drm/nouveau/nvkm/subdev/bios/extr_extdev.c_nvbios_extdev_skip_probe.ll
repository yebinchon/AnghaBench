; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_extdev.c_nvbios_extdev_skip_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_extdev.c_nvbios_extdev_skip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_extdev_skip_probe(%struct.nvkm_bios* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %3, align 8
  %10 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %11 = call i32 @extdev_table(%struct.nvkm_bios* %10, i32* %4, i32* %5, i32* %6, i32* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 64
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 5
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 4
  %26 = call i32 @nvbios_rd08(%struct.nvkm_bios* %21, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %33

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %17, %14, %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @extdev_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
