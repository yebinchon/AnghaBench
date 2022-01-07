; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_umem.c_nvkm_umem_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_umem.c_nvkm_umem_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_umem = type { i32*, i32*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*)* @nvkm_umem_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_umem_unmap(%struct.nvkm_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_object*, align 8
  %4 = alloca %struct.nvkm_umem*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %3, align 8
  %6 = load %struct.nvkm_object*, %struct.nvkm_object** %3, align 8
  %7 = call %struct.nvkm_umem* @nvkm_umem(%struct.nvkm_object* %6)
  store %struct.nvkm_umem* %7, %struct.nvkm_umem** %4, align 8
  %8 = load %struct.nvkm_umem*, %struct.nvkm_umem** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EEXIST, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.nvkm_umem*, %struct.nvkm_umem** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load %struct.nvkm_umem*, %struct.nvkm_umem** %4, align 8
  %22 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @IS_ERR(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.nvkm_umem*, %struct.nvkm_umem** %4, align 8
  %28 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %31, align 8
  store %struct.nvkm_device* %32, %struct.nvkm_device** %5, align 8
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %34 = call i32 @nvkm_bar_bar1_vmm(%struct.nvkm_device* %33)
  %35 = load %struct.nvkm_umem*, %struct.nvkm_umem** %4, align 8
  %36 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %35, i32 0, i32 1
  %37 = call i32 @nvkm_vmm_put(i32 %34, i32** %36)
  br label %41

38:                                               ; preds = %20
  %39 = load %struct.nvkm_umem*, %struct.nvkm_umem** %4, align 8
  %40 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %38, %26
  br label %49

42:                                               ; preds = %15
  %43 = load %struct.nvkm_umem*, %struct.nvkm_umem** %4, align 8
  %44 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @vunmap(i32* %45)
  %47 = load %struct.nvkm_umem*, %struct.nvkm_umem** %4, align 8
  %48 = getelementptr inbounds %struct.nvkm_umem, %struct.nvkm_umem* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %41
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.nvkm_umem* @nvkm_umem(%struct.nvkm_object*) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @nvkm_vmm_put(i32, i32**) #1

declare dso_local i32 @nvkm_bar_bar1_vmm(%struct.nvkm_device*) #1

declare dso_local i32 @vunmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
