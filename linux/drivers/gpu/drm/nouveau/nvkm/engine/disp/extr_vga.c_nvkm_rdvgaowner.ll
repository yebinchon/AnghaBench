; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_vga.c_nvkm_rdvgaowner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_vga.c_nvkm_rdvgaowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i64, i32 }

@NV_50 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_rdvgaowner(%struct.nvkm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %3, align 8
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NV_50, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %1
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 17
  br i1 %18, label %19, label %62

19:                                               ; preds = %14
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 4228)
  %22 = and i32 %21, 268435456
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %19
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %28 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %27, i32 0, i32 40)
  %29 = and i32 %28, 128
  store i32 %29, i32* %5, align 4
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %31 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %30, i32 0, i32 51)
  %32 = and i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %34 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %33, i32 1, i32 40)
  %35 = and i32 %34, 128
  store i32 %35, i32* %7, align 4
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %37 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %36, i32 1, i32 51)
  %38 = and i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %66

45:                                               ; preds = %41, %26
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 3, i32* %2, align 4
  br label %66

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %66

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 3, i32* %2, align 4
  br label %66

60:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %66

61:                                               ; preds = %19
  store i32 4, i32* %2, align 4
  br label %66

62:                                               ; preds = %14
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %64 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %63, i32 0, i32 68)
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %62, %61, %60, %59, %55, %51, %44
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_rdvgac(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
