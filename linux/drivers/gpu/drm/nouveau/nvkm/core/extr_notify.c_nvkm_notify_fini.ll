; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_notify.c_nvkm_notify_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_notify.c_nvkm_notify_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_notify = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_notify_fini(%struct.nvkm_notify* %0) #0 {
  %2 = alloca %struct.nvkm_notify*, align 8
  %3 = alloca i64, align 8
  store %struct.nvkm_notify* %0, %struct.nvkm_notify** %2, align 8
  %4 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %10 = call i32 @nvkm_notify_put(%struct.nvkm_notify* %9)
  %11 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %12 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %18 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %17, i32 0, i32 2
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %21 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %27 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @kfree(i8* %29)
  %31 = load %struct.nvkm_notify*, %struct.nvkm_notify** %2, align 8
  %32 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %31, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %32, align 8
  br label %33

33:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @nvkm_notify_put(%struct.nvkm_notify*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
