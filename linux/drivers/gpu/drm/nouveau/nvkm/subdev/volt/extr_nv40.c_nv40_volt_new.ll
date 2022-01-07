; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_nv40.c_nv40_volt_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_nv40.c_nv40_volt_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_volt = type { i32 }

@nv40_volt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv40_volt_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_volt** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_volt**, align 8
  %8 = alloca %struct.nvkm_volt*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_volt** %2, %struct.nvkm_volt*** %7, align 8
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @nvkm_volt_new_(i32* @nv40_volt, %struct.nvkm_device* %10, i32 %11, %struct.nvkm_volt** %8)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %14 = load %struct.nvkm_volt**, %struct.nvkm_volt*** %7, align 8
  store %struct.nvkm_volt* %13, %struct.nvkm_volt** %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %21 = call i32 @nvkm_voltgpio_init(%struct.nvkm_volt* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @nvkm_volt_new_(i32*, %struct.nvkm_device*, i32, %struct.nvkm_volt**) #1

declare dso_local i32 @nvkm_voltgpio_init(%struct.nvkm_volt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
