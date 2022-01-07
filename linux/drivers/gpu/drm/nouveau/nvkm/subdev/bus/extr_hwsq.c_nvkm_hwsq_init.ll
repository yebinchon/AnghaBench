; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_hwsq.c_nvkm_hwsq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_hwsq.c_nvkm_hwsq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_hwsq = type { %struct.TYPE_2__, i32, i32, %struct.nvkm_subdev* }
%struct.TYPE_2__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_hwsq_init(%struct.nvkm_subdev* %0, %struct.nvkm_hwsq** %1) #0 {
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_hwsq**, align 8
  %5 = alloca %struct.nvkm_hwsq*, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  store %struct.nvkm_hwsq** %1, %struct.nvkm_hwsq*** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nvkm_hwsq* @kmalloc(i32 32, i32 %6)
  %8 = load %struct.nvkm_hwsq**, %struct.nvkm_hwsq*** %4, align 8
  store %struct.nvkm_hwsq* %7, %struct.nvkm_hwsq** %8, align 8
  store %struct.nvkm_hwsq* %7, %struct.nvkm_hwsq** %5, align 8
  %9 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %10 = icmp ne %struct.nvkm_hwsq* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %13 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %13, i32 0, i32 3
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %14, align 8
  %15 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %15, i32 0, i32 2
  store i32 -1, i32* %16, align 4
  %17 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %17, i32 0, i32 1
  store i32 -1, i32* %18, align 8
  %19 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %20 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @memset(i32 %22, i32 127, i32 4)
  %24 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_hwsq, %struct.nvkm_hwsq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %11, %2
  %28 = load %struct.nvkm_hwsq*, %struct.nvkm_hwsq** %5, align 8
  %29 = icmp ne %struct.nvkm_hwsq* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  br label %34

34:                                               ; preds = %31, %30
  %35 = phi i32 [ 0, %30 ], [ %33, %31 ]
  ret i32 %35
}

declare dso_local %struct.nvkm_hwsq* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
