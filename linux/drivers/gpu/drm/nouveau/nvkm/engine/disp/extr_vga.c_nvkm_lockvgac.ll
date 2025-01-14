; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_vga.c_nvkm_lockvgac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_vga.c_nvkm_lockvgac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i64, i32 }

@NV_50 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_lockvgac(%struct.nvkm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %8 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %7, i32 0, i32 31)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 153, i32 87
  store i32 %15, i32* %6, align 4
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NV_50, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @nvkm_wrvgac(%struct.nvkm_device* %22, i32 0, i32 31, i32 %23)
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @nvkm_wrvgac(%struct.nvkm_device* %26, i32 0, i32 63, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 17
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %36 = call i32 @nvkm_rd32(%struct.nvkm_device* %35, i32 4228)
  %37 = and i32 %36, 268435456
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @nvkm_wrvgac(%struct.nvkm_device* %40, i32 1, i32 31, i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @nvkm_rdvgac(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_wrvgac(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
