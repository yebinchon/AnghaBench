; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chan.c_nvkm_fifo_chan_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chan.c_nvkm_fifo_chan_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_fifo_chan = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i64, i64, i32, i32, %struct.TYPE_3__*, %struct.nvkm_fifo* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* (%struct.nvkm_fifo_chan*)* }
%struct.nvkm_fifo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nvkm_object*)* @nvkm_fifo_chan_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nvkm_fifo_chan_dtor(%struct.nvkm_object* %0) #0 {
  %2 = alloca %struct.nvkm_object*, align 8
  %3 = alloca %struct.nvkm_fifo_chan*, align 8
  %4 = alloca %struct.nvkm_fifo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %2, align 8
  %7 = load %struct.nvkm_object*, %struct.nvkm_object** %2, align 8
  %8 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan(%struct.nvkm_object* %7)
  store %struct.nvkm_fifo_chan* %8, %struct.nvkm_fifo_chan** %3, align 8
  %9 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %9, i32 0, i32 7
  %11 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %10, align 8
  store %struct.nvkm_fifo* %11, %struct.nvkm_fifo** %4, align 8
  %12 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %12, i32 0, i32 6
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8* (%struct.nvkm_fifo_chan*)*, i8* (%struct.nvkm_fifo_chan*)** %15, align 8
  %17 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %18 = call i8* %16(%struct.nvkm_fifo_chan* %17)
  store i8* %18, i8** %5, align 8
  %19 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %24 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %23, i32 0, i32 4
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %1
  %28 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %29 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %4, align 8
  %32 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__clear_bit(i32 %30, i32 %33)
  %35 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %36 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %35, i32 0, i32 4
  %37 = call i32 @list_del(i32* %36)
  br label %38

38:                                               ; preds = %27, %1
  %39 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %4, align 8
  %40 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %44 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %49 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @iounmap(i64 %50)
  br label %52

52:                                               ; preds = %47, %38
  %53 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %54 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %59 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %62 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nvkm_vmm_part(i64 %60, i32 %65)
  %67 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %68 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %67, i32 0, i32 2
  %69 = call i32 @nvkm_vmm_unref(i64* %68)
  br label %70

70:                                               ; preds = %57, %52
  %71 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %72 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %71, i32 0, i32 1
  %73 = call i32 @nvkm_gpuobj_del(%struct.TYPE_4__** %72)
  %74 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %75 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %74, i32 0, i32 0
  %76 = call i32 @nvkm_gpuobj_del(%struct.TYPE_4__** %75)
  %77 = load i8*, i8** %5, align 8
  ret i8* %77
}

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan(%struct.nvkm_object*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @nvkm_vmm_part(i64, i32) #1

declare dso_local i32 @nvkm_vmm_unref(i64*) #1

declare dso_local i32 @nvkm_gpuobj_del(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
