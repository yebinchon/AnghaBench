; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/extr_base.c_nvkm_iccsense_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/extr_base.c_nvkm_iccsense_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_iccsense = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_iccsense_new_(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_iccsense** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_iccsense**, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_iccsense** %2, %struct.nvkm_iccsense*** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nvkm_iccsense* @kzalloc(i32 8, i32 %8)
  %10 = load %struct.nvkm_iccsense**, %struct.nvkm_iccsense*** %7, align 8
  store %struct.nvkm_iccsense* %9, %struct.nvkm_iccsense** %10, align 8
  %11 = icmp ne %struct.nvkm_iccsense* %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.nvkm_iccsense**, %struct.nvkm_iccsense*** %7, align 8
  %17 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_iccsense, %struct.nvkm_iccsense* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.nvkm_iccsense**, %struct.nvkm_iccsense*** %7, align 8
  %21 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_iccsense, %struct.nvkm_iccsense* %21, i32 0, i32 0
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.nvkm_iccsense**, %struct.nvkm_iccsense*** %7, align 8
  %27 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %26, align 8
  %28 = call i32 @nvkm_iccsense_ctor(%struct.nvkm_device* %24, i32 %25, %struct.nvkm_iccsense* %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %15, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.nvkm_iccsense* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nvkm_iccsense_ctor(%struct.nvkm_device*, i32, %struct.nvkm_iccsense*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
