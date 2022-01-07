; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_base.c_nvkm_gr_ctxsw_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_base.c_nvkm_gr_ctxsw_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.nvkm_gr* }
%struct.nvkm_gr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.nvkm_gr*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_gr_ctxsw_resume(%struct.nvkm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nvkm_gr*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %3, align 8
  %5 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %6 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %5, i32 0, i32 0
  %7 = load %struct.nvkm_gr*, %struct.nvkm_gr** %6, align 8
  store %struct.nvkm_gr* %7, %struct.nvkm_gr** %4, align 8
  %8 = load %struct.nvkm_gr*, %struct.nvkm_gr** %4, align 8
  %9 = icmp ne %struct.nvkm_gr* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.nvkm_gr*, %struct.nvkm_gr** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_gr, %struct.nvkm_gr* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.nvkm_gr*)*, i32 (%struct.nvkm_gr*)** %15, align 8
  %17 = icmp ne i32 (%struct.nvkm_gr*)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = load %struct.nvkm_gr*, %struct.nvkm_gr** %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_gr, %struct.nvkm_gr* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.nvkm_gr*)*, i32 (%struct.nvkm_gr*)** %23, align 8
  %25 = load %struct.nvkm_gr*, %struct.nvkm_gr** %4, align 8
  %26 = call i32 %24(%struct.nvkm_gr* %25)
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
