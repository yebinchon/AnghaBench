; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv50.c_nv50_instobj_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv50.c_nv50_instobj_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_instmem = type { i32 }
%struct.nvkm_memory = type { i32 }
%struct.nv50_instmem = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nv50_instobj = type { i32, i32, i32, %struct.nv50_instmem*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_memory }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_instobj_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_instmem*, i32, i32, i32, %struct.nvkm_memory**)* @nv50_instobj_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_instobj_new(%struct.nvkm_instmem* %0, i32 %1, i32 %2, i32 %3, %struct.nvkm_memory** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_instmem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_memory**, align 8
  %12 = alloca %struct.nv50_instmem*, align 8
  %13 = alloca %struct.nv50_instobj*, align 8
  %14 = alloca %struct.nvkm_device*, align 8
  %15 = alloca i32, align 4
  store %struct.nvkm_instmem* %0, %struct.nvkm_instmem** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_memory** %4, %struct.nvkm_memory*** %11, align 8
  %16 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %7, align 8
  %17 = call %struct.nv50_instmem* @nv50_instmem(%struct.nvkm_instmem* %16)
  store %struct.nv50_instmem* %17, %struct.nv50_instmem** %12, align 8
  %18 = load %struct.nv50_instmem*, %struct.nv50_instmem** %12, align 8
  %19 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %21, align 8
  store %struct.nvkm_device* %22, %struct.nvkm_device** %14, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @order_base_2(i32 %23)
  %25 = call i32 @max(i32 %24, i32 12)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.nv50_instobj* @kzalloc(i32 32, i32 %26)
  store %struct.nv50_instobj* %27, %struct.nv50_instobj** %13, align 8
  %28 = icmp ne %struct.nv50_instobj* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %57

32:                                               ; preds = %5
  %33 = load %struct.nv50_instobj*, %struct.nv50_instobj** %13, align 8
  %34 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.nvkm_memory**, %struct.nvkm_memory*** %11, align 8
  store %struct.nvkm_memory* %35, %struct.nvkm_memory** %36, align 8
  %37 = load %struct.nv50_instmem*, %struct.nv50_instmem** %12, align 8
  %38 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %37, i32 0, i32 0
  %39 = load %struct.nv50_instobj*, %struct.nv50_instobj** %13, align 8
  %40 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %39, i32 0, i32 4
  %41 = call i32 @nvkm_instobj_ctor(i32* @nv50_instobj_func, %struct.TYPE_5__* %38, %struct.TYPE_6__* %40)
  %42 = load %struct.nv50_instmem*, %struct.nv50_instmem** %12, align 8
  %43 = load %struct.nv50_instobj*, %struct.nv50_instobj** %13, align 8
  %44 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %43, i32 0, i32 3
  store %struct.nv50_instmem* %42, %struct.nv50_instmem** %44, align 8
  %45 = load %struct.nv50_instobj*, %struct.nv50_instobj** %13, align 8
  %46 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %45, i32 0, i32 2
  %47 = call i32 @refcount_set(i32* %46, i32 0)
  %48 = load %struct.nv50_instobj*, %struct.nv50_instobj** %13, align 8
  %49 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %48, i32 0, i32 1
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.nv50_instobj*, %struct.nv50_instobj** %13, align 8
  %55 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %54, i32 0, i32 0
  %56 = call i32 @nvkm_ram_get(%struct.nvkm_device* %51, i32 0, i32 1, i32 %52, i32 %53, i32 1, i32 1, i32* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %32, %29
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.nv50_instmem* @nv50_instmem(%struct.nvkm_instmem*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local %struct.nv50_instobj* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_instobj_ctor(i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nvkm_ram_get(%struct.nvkm_device*, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
