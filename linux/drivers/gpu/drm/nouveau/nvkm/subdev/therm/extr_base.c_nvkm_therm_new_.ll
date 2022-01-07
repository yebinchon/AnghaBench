; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_therm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_therm_new_(%struct.nvkm_therm_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_therm** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_therm_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_therm**, align 8
  %10 = alloca %struct.nvkm_therm*, align 8
  store %struct.nvkm_therm_func* %0, %struct.nvkm_therm_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_therm** %3, %struct.nvkm_therm*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nvkm_therm* @kzalloc(i32 4, i32 %11)
  %13 = load %struct.nvkm_therm**, %struct.nvkm_therm*** %9, align 8
  store %struct.nvkm_therm* %12, %struct.nvkm_therm** %13, align 8
  store %struct.nvkm_therm* %12, %struct.nvkm_therm** %10, align 8
  %14 = icmp ne %struct.nvkm_therm* %12, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %24

18:                                               ; preds = %4
  %19 = load %struct.nvkm_therm*, %struct.nvkm_therm** %10, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.nvkm_therm_func*, %struct.nvkm_therm_func** %6, align 8
  %23 = call i32 @nvkm_therm_ctor(%struct.nvkm_therm* %19, %struct.nvkm_device* %20, i32 %21, %struct.nvkm_therm_func* %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local %struct.nvkm_therm* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_therm_ctor(%struct.nvkm_therm*, %struct.nvkm_device*, i32, %struct.nvkm_therm_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
