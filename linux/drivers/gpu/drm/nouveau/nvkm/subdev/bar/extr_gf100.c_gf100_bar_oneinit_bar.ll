; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_gf100.c_gf100_bar_oneinit_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_gf100.c_gf100_bar_oneinit_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_bar = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.nvkm_device*, i32)* }
%struct.gf100_barN = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.lock_class_key = type { i32 }

@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bar2\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bar1\00", align 1
@NVKM_SUBDEV_BAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gf100_bar*, %struct.gf100_barN*, %struct.lock_class_key*, i32)* @gf100_bar_oneinit_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_bar_oneinit_bar(%struct.gf100_bar* %0, %struct.gf100_barN* %1, %struct.lock_class_key* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gf100_bar*, align 8
  %7 = alloca %struct.gf100_barN*, align 8
  %8 = alloca %struct.lock_class_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gf100_bar* %0, %struct.gf100_bar** %6, align 8
  store %struct.gf100_barN* %1, %struct.gf100_barN** %7, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.gf100_bar*, %struct.gf100_bar** %6, align 8
  %14 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %10, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %19 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %20 = load %struct.gf100_barN*, %struct.gf100_barN** %7, align 8
  %21 = getelementptr inbounds %struct.gf100_barN, %struct.gf100_barN* %20, i32 0, i32 0
  %22 = call i32 @nvkm_memory_new(%struct.nvkm_device* %18, i32 %19, i32 4096, i32 0, i32 0, i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %105

27:                                               ; preds = %4
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %29 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %31, align 8
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 %32(%struct.nvkm_device* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %105

41:                                               ; preds = %27
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.gf100_bar*, %struct.gf100_bar** %6, align 8
  %46 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %44, %41
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.lock_class_key*, %struct.lock_class_key** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 3
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %60 = load %struct.gf100_barN*, %struct.gf100_barN** %7, align 8
  %61 = getelementptr inbounds %struct.gf100_barN, %struct.gf100_barN* %60, i32 0, i32 1
  %62 = call i32 @nvkm_vmm_new(%struct.nvkm_device* %53, i32 0, i32 %54, i32* null, i32 0, %struct.lock_class_key* %55, i8* %59, %struct.TYPE_10__** %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %105

67:                                               ; preds = %52
  %68 = load %struct.gf100_barN*, %struct.gf100_barN** %7, align 8
  %69 = getelementptr inbounds %struct.gf100_barN, %struct.gf100_barN* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @NVKM_SUBDEV_BAR, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = call i32 @atomic_inc(i32* %74)
  %76 = load %struct.gf100_bar*, %struct.gf100_bar** %6, align 8
  %77 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.gf100_barN*, %struct.gf100_barN** %7, align 8
  %82 = getelementptr inbounds %struct.gf100_barN, %struct.gf100_barN* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %97

87:                                               ; preds = %67
  %88 = load %struct.gf100_barN*, %struct.gf100_barN** %7, align 8
  %89 = getelementptr inbounds %struct.gf100_barN, %struct.gf100_barN* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = call i32 @nvkm_vmm_boot(%struct.TYPE_10__* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %105

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %67
  %98 = load %struct.gf100_barN*, %struct.gf100_barN** %7, align 8
  %99 = getelementptr inbounds %struct.gf100_barN, %struct.gf100_barN* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load %struct.gf100_barN*, %struct.gf100_barN** %7, align 8
  %102 = getelementptr inbounds %struct.gf100_barN, %struct.gf100_barN* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @nvkm_vmm_join(%struct.TYPE_10__* %100, i32 %103)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %97, %94, %65, %38, %25
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @nvkm_memory_new(%struct.nvkm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nvkm_vmm_new(%struct.nvkm_device*, i32, i32, i32*, i32, %struct.lock_class_key*, i8*, %struct.TYPE_10__**) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nvkm_vmm_boot(%struct.TYPE_10__*) #1

declare dso_local i32 @nvkm_vmm_join(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
