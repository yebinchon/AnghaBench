; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_chan.c_nvkm_sw_chan_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_chan.c_nvkm_sw_chan_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_sw_chan = type { i32, i32, %struct.TYPE_4__*, %struct.nvkm_sw* }
%struct.TYPE_4__ = type { i8* (%struct.nvkm_sw_chan*)* }
%struct.nvkm_sw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nvkm_object*)* @nvkm_sw_chan_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nvkm_sw_chan_dtor(%struct.nvkm_object* %0) #0 {
  %2 = alloca %struct.nvkm_object*, align 8
  %3 = alloca %struct.nvkm_sw_chan*, align 8
  %4 = alloca %struct.nvkm_sw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %2, align 8
  %7 = load %struct.nvkm_object*, %struct.nvkm_object** %2, align 8
  %8 = call %struct.nvkm_sw_chan* @nvkm_sw_chan(%struct.nvkm_object* %7)
  store %struct.nvkm_sw_chan* %8, %struct.nvkm_sw_chan** %3, align 8
  %9 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %9, i32 0, i32 3
  %11 = load %struct.nvkm_sw*, %struct.nvkm_sw** %10, align 8
  store %struct.nvkm_sw* %11, %struct.nvkm_sw** %4, align 8
  %12 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %3, align 8
  %13 = bitcast %struct.nvkm_sw_chan* %12 to i8*
  store i8* %13, i8** %6, align 8
  %14 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8* (%struct.nvkm_sw_chan*)*, i8* (%struct.nvkm_sw_chan*)** %17, align 8
  %19 = icmp ne i8* (%struct.nvkm_sw_chan*)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %3, align 8
  %22 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8* (%struct.nvkm_sw_chan*)*, i8* (%struct.nvkm_sw_chan*)** %24, align 8
  %26 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %3, align 8
  %27 = call i8* %25(%struct.nvkm_sw_chan* %26)
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %3, align 8
  %30 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %29, i32 0, i32 1
  %31 = call i32 @nvkm_event_fini(i32* %30)
  %32 = load %struct.nvkm_sw*, %struct.nvkm_sw** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_sw, %struct.nvkm_sw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %3, align 8
  %38 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %37, i32 0, i32 0
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.nvkm_sw*, %struct.nvkm_sw** %4, align 8
  %41 = getelementptr inbounds %struct.nvkm_sw, %struct.nvkm_sw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i8*, i8** %6, align 8
  ret i8* %45
}

declare dso_local %struct.nvkm_sw_chan* @nvkm_sw_chan(%struct.nvkm_object*) #1

declare dso_local i32 @nvkm_event_fini(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
