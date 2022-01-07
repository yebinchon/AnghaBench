; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_gk20a.c_gk20a_instmem_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_gk20a.c_gk20a_instmem_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_device_tegra* (%struct.nvkm_device*)* }
%struct.nvkm_device_tegra = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.nvkm_instmem = type { i32 }
%struct.gk20a_instmem = type { i32, i32, %struct.nvkm_instmem, i32, i32, i64, i32*, i32*, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gk20a_instmem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"using IOMMU\0A\00", align 1
@DMA_ATTR_NON_CONSISTENT = common dso_local global i32 0, align 4
@DMA_ATTR_WEAK_ORDERING = common dso_local global i32 0, align 4
@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"using DMA API\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_instmem_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_instmem** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_instmem**, align 8
  %8 = alloca %struct.nvkm_device_tegra*, align 8
  %9 = alloca %struct.gk20a_instmem*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_instmem** %2, %struct.nvkm_instmem*** %7, align 8
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device_tegra* (%struct.nvkm_device*)*, %struct.nvkm_device_tegra* (%struct.nvkm_device*)** %13, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %16 = call %struct.nvkm_device_tegra* %14(%struct.nvkm_device* %15)
  store %struct.nvkm_device_tegra* %16, %struct.nvkm_device_tegra** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.gk20a_instmem* @kzalloc(i32 72, i32 %17)
  store %struct.gk20a_instmem* %18, %struct.gk20a_instmem** %9, align 8
  %19 = icmp ne %struct.gk20a_instmem* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %94

23:                                               ; preds = %3
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %27 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %26, i32 0, i32 2
  %28 = call i32 @nvkm_instmem_ctor(i32* @gk20a_instmem, %struct.nvkm_device* %24, i32 %25, %struct.nvkm_instmem* %27)
  %29 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %30 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %29, i32 0, i32 10
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %33 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %32, i32 0, i32 2
  %34 = load %struct.nvkm_instmem**, %struct.nvkm_instmem*** %7, align 8
  store %struct.nvkm_instmem* %33, %struct.nvkm_instmem** %34, align 8
  %35 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %36 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %35, i32 0, i32 9
  store i64 0, i64* %36, align 8
  %37 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %38 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %37, i32 0, i32 0
  store i32 1048576, i32* %38, align 8
  %39 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %40 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %39, i32 0, i32 8
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %8, align 8
  %43 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %23
  %48 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %8, align 8
  %49 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %52 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %51, i32 0, i32 7
  store i32* %50, i32** %52, align 8
  %53 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %8, align 8
  %54 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %57 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %56, i32 0, i32 6
  store i32* %55, i32** %57, align 8
  %58 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %8, align 8
  %59 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %63 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %62, i32 0, i32 5
  store i64 %61, i64* %63, align 8
  %64 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %8, align 8
  %65 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %69 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.nvkm_device_tegra*, %struct.nvkm_device_tegra** %8, align 8
  %71 = getelementptr inbounds %struct.nvkm_device_tegra, %struct.nvkm_device_tegra* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %76 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %78 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %78, i32 0, i32 0
  %80 = call i32 @nvkm_info(i32* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %93

81:                                               ; preds = %23
  %82 = load i32, i32* @DMA_ATTR_NON_CONSISTENT, align 4
  %83 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %88 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %9, align 8
  %90 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %90, i32 0, i32 0
  %92 = call i32 @nvkm_info(i32* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %81, %47
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %20
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.gk20a_instmem* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_instmem_ctor(i32*, %struct.nvkm_device*, i32, %struct.nvkm_instmem*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nvkm_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
