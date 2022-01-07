; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv04.c_nv04_disp_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv04.c_nv04_disp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_disp = type { i32 }

@nv04_disp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_disp_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_disp** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_disp**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_disp** %2, %struct.nvkm_disp*** %7, align 8
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.nvkm_disp**, %struct.nvkm_disp*** %7, align 8
  %13 = call i32 @nvkm_disp_new_(i32* @nv04_disp, %struct.nvkm_device* %10, i32 %11, %struct.nvkm_disp** %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.nvkm_disp**, %struct.nvkm_disp*** %7, align 8
  %24 = load %struct.nvkm_disp*, %struct.nvkm_disp** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @nv04_head_new(%struct.nvkm_disp* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %19

35:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %29, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @nvkm_disp_new_(i32*, %struct.nvkm_device*, i32, %struct.nvkm_disp**) #1

declare dso_local i32 @nv04_head_new(%struct.nvkm_disp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
