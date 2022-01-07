; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_falcon.c_nvkm_falcon_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_falcon.c_nvkm_falcon_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nvkm_falcon = type { %struct.TYPE_7__, %struct.TYPE_6__, i64, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_engine*, i32)* @nvkm_falcon_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_falcon_fini(%struct.nvkm_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_falcon*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i64, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %9 = call %struct.nvkm_falcon* @nvkm_falcon(%struct.nvkm_engine* %8)
  store %struct.nvkm_falcon* %9, %struct.nvkm_falcon** %5, align 8
  %10 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %6, align 8
  %15 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %2
  %21 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %22 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %21, i32 0, i32 3
  %23 = call i32 @nvkm_memory_unref(i32* %22)
  %24 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @vfree(i32* %32)
  %34 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %35 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @vfree(i32* %37)
  %39 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %40 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %28, %20
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %45 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %46 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nvkm_mc_enabled(%struct.nvkm_device* %44, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, 72
  %55 = call i32 @nvkm_mask(%struct.nvkm_device* %52, i64 %54, i32 3, i32 0)
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, 20
  %59 = call i32 @nvkm_wr32(%struct.nvkm_device* %56, i64 %58, i32 -1)
  br label %60

60:                                               ; preds = %51, %43
  ret i32 0
}

declare dso_local %struct.nvkm_falcon* @nvkm_falcon(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_memory_unref(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i64 @nvkm_mc_enabled(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i64, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
