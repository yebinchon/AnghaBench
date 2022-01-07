; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfmon_child_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfmon_child_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_oclass = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@NVIF_CLASS_PERFDOM = common dso_local global i32 0, align 4
@nvkm_perfmon_child_new = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)* @nvkm_perfmon_child_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_perfmon_child_get(%struct.nvkm_object* %0, i32 %1, %struct.nvkm_oclass* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_oclass*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load i32, i32* @NVIF_CLASS_PERFDOM, align 4
  %12 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %13 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 8
  %15 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %16 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %19 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @nvkm_perfmon_child_new, align 4
  %22 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %23 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %4, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %10
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
