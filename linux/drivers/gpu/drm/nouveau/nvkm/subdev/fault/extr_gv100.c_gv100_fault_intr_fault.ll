; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_gv100.c_gv100_fault_intr_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_gv100.c_gv100_fault_intr_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fault = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_fault_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fault*)* @gv100_fault_intr_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv100_fault_intr_fault(%struct.nvkm_fault* %0) #0 {
  %2 = alloca %struct.nvkm_fault*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvkm_fault_data, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_fault* %0, %struct.nvkm_fault** %2, align 8
  %11 = load %struct.nvkm_fault*, %struct.nvkm_fault** %2, align 8
  %12 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %11, i32 0, i32 0
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %3, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %4, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 1052236)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 1052240)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 1052244)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 1052248)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 1052252)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 32
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 %31, 32
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, -4096
  %35 = or i32 %32, %34
  %36 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %5, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %5, i32 0, i32 9
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %5, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, -2147483648
  %43 = lshr i32 %42, 31
  %44 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %5, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 520093696
  %47 = ashr i32 %46, 24
  %48 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %5, i32 0, i32 4
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 1048576
  %51 = ashr i32 %50, 20
  %52 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %5, i32 0, i32 5
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 983040
  %55 = ashr i32 %54, 16
  %56 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %5, i32 0, i32 6
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 32512
  %59 = ashr i32 %58, 8
  %60 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %5, i32 0, i32 7
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 31
  %63 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %5, i32 0, i32 8
  store i32 %62, i32* %63, align 8
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %65 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @nvkm_fifo_fault(i32 %66, %struct.nvkm_fault_data* %5)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_fifo_fault(i32, %struct.nvkm_fault_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
