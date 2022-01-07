; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_gf100.c_gf100_bar_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_gf100.c_gf100_bar_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bar_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_bar = type { i32 }
%struct.gf100_bar = type { %struct.nvkm_bar, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"NvBar2Halve\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_bar_new_(%struct.nvkm_bar_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_bar** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_bar_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_bar**, align 8
  %10 = alloca %struct.gf100_bar*, align 8
  store %struct.nvkm_bar_func* %0, %struct.nvkm_bar_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_bar** %3, %struct.nvkm_bar*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gf100_bar* @kzalloc(i32 8, i32 %11)
  store %struct.gf100_bar* %12, %struct.gf100_bar** %10, align 8
  %13 = icmp ne %struct.gf100_bar* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %33

17:                                               ; preds = %4
  %18 = load %struct.nvkm_bar_func*, %struct.nvkm_bar_func** %6, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.gf100_bar*, %struct.gf100_bar** %10, align 8
  %22 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %21, i32 0, i32 0
  %23 = call i32 @nvkm_bar_ctor(%struct.nvkm_bar_func* %18, %struct.nvkm_device* %19, i32 %20, %struct.nvkm_bar* %22)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %25 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nvkm_boolopt(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  %28 = load %struct.gf100_bar*, %struct.gf100_bar** %10, align 8
  %29 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.gf100_bar*, %struct.gf100_bar** %10, align 8
  %31 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %30, i32 0, i32 0
  %32 = load %struct.nvkm_bar**, %struct.nvkm_bar*** %9, align 8
  store %struct.nvkm_bar* %31, %struct.nvkm_bar** %32, align 8
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %17, %14
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.gf100_bar* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_bar_ctor(%struct.nvkm_bar_func*, %struct.nvkm_device*, i32, %struct.nvkm_bar*) #1

declare dso_local i32 @nvkm_boolopt(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
