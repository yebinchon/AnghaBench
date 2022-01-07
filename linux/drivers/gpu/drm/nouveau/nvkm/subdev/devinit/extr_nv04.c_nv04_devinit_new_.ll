; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_nv04_devinit_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_nv04_devinit_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_devinit = type { i32 }
%struct.nv04_devinit = type { i32, %struct.nvkm_devinit }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_devinit_new_(%struct.nvkm_devinit_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_devinit** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_devinit_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_devinit**, align 8
  %10 = alloca %struct.nv04_devinit*, align 8
  store %struct.nvkm_devinit_func* %0, %struct.nvkm_devinit_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_devinit** %3, %struct.nvkm_devinit*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nv04_devinit* @kzalloc(i32 8, i32 %11)
  store %struct.nv04_devinit* %12, %struct.nv04_devinit** %10, align 8
  %13 = icmp ne %struct.nv04_devinit* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %29

17:                                               ; preds = %4
  %18 = load %struct.nv04_devinit*, %struct.nv04_devinit** %10, align 8
  %19 = getelementptr inbounds %struct.nv04_devinit, %struct.nv04_devinit* %18, i32 0, i32 1
  %20 = load %struct.nvkm_devinit**, %struct.nvkm_devinit*** %9, align 8
  store %struct.nvkm_devinit* %19, %struct.nvkm_devinit** %20, align 8
  %21 = load %struct.nvkm_devinit_func*, %struct.nvkm_devinit_func** %6, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.nv04_devinit*, %struct.nv04_devinit** %10, align 8
  %25 = getelementptr inbounds %struct.nv04_devinit, %struct.nv04_devinit* %24, i32 0, i32 1
  %26 = call i32 @nvkm_devinit_ctor(%struct.nvkm_devinit_func* %21, %struct.nvkm_device* %22, i32 %23, %struct.nvkm_devinit* %25)
  %27 = load %struct.nv04_devinit*, %struct.nv04_devinit** %10, align 8
  %28 = getelementptr inbounds %struct.nv04_devinit, %struct.nv04_devinit* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %17, %14
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.nv04_devinit* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_devinit_ctor(%struct.nvkm_devinit_func*, %struct.nvkm_device*, i32, %struct.nvkm_devinit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
