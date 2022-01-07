; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_func = type { i64 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_fifo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_fifo_func* }

@NVKM_FIFO_CHID_NR = common dso_local global i32 0, align 4
@nvkm_fifo = common dso_local global i32 0, align 4
@nvkm_fifo_uevent_func = common dso_local global i32 0, align 4
@nvkm_fifo_cevent_func = common dso_local global i32 0, align 4
@nvkm_fifo_kevent_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_fifo_ctor(%struct.nvkm_fifo_func* %0, %struct.nvkm_device* %1, i32 %2, i32 %3, %struct.nvkm_fifo* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_fifo_func*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_fifo*, align 8
  %12 = alloca i32, align 4
  store %struct.nvkm_fifo_func* %0, %struct.nvkm_fifo_func** %7, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_fifo* %4, %struct.nvkm_fifo** %11, align 8
  %13 = load %struct.nvkm_fifo_func*, %struct.nvkm_fifo_func** %7, align 8
  %14 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %15 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %14, i32 0, i32 8
  store %struct.nvkm_fifo_func* %13, %struct.nvkm_fifo_func** %15, align 8
  %16 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %17 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %16, i32 0, i32 7
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %20 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %19, i32 0, i32 6
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %23 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NVKM_FIFO_CHID_NR, align 4
  %26 = icmp sgt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load i32, i32* @NVKM_FIFO_CHID_NR, align 4
  %32 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %33 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %38

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %37 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %40 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %43 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bitmap_clear(i32 %41, i32 0, i32 %44)
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %49 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %48, i32 0, i32 4
  %50 = call i32 @nvkm_engine_ctor(i32* @nvkm_fifo, %struct.nvkm_device* %46, i32 %47, i32 1, i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %6, align 4
  br label %82

55:                                               ; preds = %38
  %56 = load %struct.nvkm_fifo_func*, %struct.nvkm_fifo_func** %7, align 8
  %57 = getelementptr inbounds %struct.nvkm_fifo_func, %struct.nvkm_fifo_func* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %62 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %61, i32 0, i32 3
  %63 = call i32 @nvkm_event_init(i32* @nvkm_fifo_uevent_func, i32 1, i32 1, i32* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %6, align 4
  br label %82

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %55
  %70 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %71 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %70, i32 0, i32 2
  %72 = call i32 @nvkm_event_init(i32* @nvkm_fifo_cevent_func, i32 1, i32 1, i32* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %6, align 4
  br label %82

77:                                               ; preds = %69
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %11, align 8
  %80 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %79, i32 0, i32 1
  %81 = call i32 @nvkm_event_init(i32* @nvkm_fifo_kevent_func, i32 1, i32 %78, i32* %80)
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %75, %66, %53
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

declare dso_local i32 @nvkm_engine_ctor(i32*, %struct.nvkm_device*, i32, i32, i32*) #1

declare dso_local i32 @nvkm_event_init(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
