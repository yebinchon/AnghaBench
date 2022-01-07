; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv40.c_nv40_ram_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv40.c_nv40_ram_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32 }
%struct.nvkm_ram = type { i32 }
%struct.nv40_ram = type { %struct.nvkm_ram }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv40_ram_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv40_ram_new_(%struct.nvkm_fb* %0, i32 %1, i32 %2, %struct.nvkm_ram** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_fb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_ram**, align 8
  %10 = alloca %struct.nv40_ram*, align 8
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_ram** %3, %struct.nvkm_ram*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nv40_ram* @kzalloc(i32 4, i32 %11)
  store %struct.nv40_ram* %12, %struct.nv40_ram** %10, align 8
  %13 = icmp ne %struct.nv40_ram* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %27

17:                                               ; preds = %4
  %18 = load %struct.nv40_ram*, %struct.nv40_ram** %10, align 8
  %19 = getelementptr inbounds %struct.nv40_ram, %struct.nv40_ram* %18, i32 0, i32 0
  %20 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %9, align 8
  store %struct.nvkm_ram* %19, %struct.nvkm_ram** %20, align 8
  %21 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.nv40_ram*, %struct.nv40_ram** %10, align 8
  %25 = getelementptr inbounds %struct.nv40_ram, %struct.nv40_ram* %24, i32 0, i32 0
  %26 = call i32 @nvkm_ram_ctor(i32* @nv40_ram_func, %struct.nvkm_fb* %21, i32 %22, i32 %23, %struct.nvkm_ram* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %17, %14
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.nv40_ram* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_ram_ctor(i32*, %struct.nvkm_fb*, i32, i32, %struct.nvkm_ram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
