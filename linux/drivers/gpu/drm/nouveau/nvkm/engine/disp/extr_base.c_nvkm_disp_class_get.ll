; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_base.c_nvkm_disp_class_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_base.c_nvkm_disp_class_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device_oclass = type { i32 }
%struct.nvkm_oclass = type { %struct.nvkm_disp_oclass*, i32, i32 }
%struct.nvkm_disp_oclass = type { i32 }
%struct.nvkm_disp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_disp_oclass* (%struct.nvkm_disp*)* }

@nvkm_disp_sclass = common dso_local global %struct.nvkm_device_oclass zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)* @nvkm_disp_class_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_disp_class_get(%struct.nvkm_oclass* %0, i32 %1, %struct.nvkm_device_oclass** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_oclass*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_device_oclass**, align 8
  %8 = alloca %struct.nvkm_disp*, align 8
  %9 = alloca %struct.nvkm_disp_oclass*, align 8
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_device_oclass** %2, %struct.nvkm_device_oclass*** %7, align 8
  %10 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nvkm_disp* @nvkm_disp(i32 %12)
  store %struct.nvkm_disp* %13, %struct.nvkm_disp** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.nvkm_disp*, %struct.nvkm_disp** %8, align 8
  %18 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_disp_oclass* (%struct.nvkm_disp*)*, %struct.nvkm_disp_oclass* (%struct.nvkm_disp*)** %20, align 8
  %22 = load %struct.nvkm_disp*, %struct.nvkm_disp** %8, align 8
  %23 = call %struct.nvkm_disp_oclass* %21(%struct.nvkm_disp* %22)
  store %struct.nvkm_disp_oclass* %23, %struct.nvkm_disp_oclass** %9, align 8
  %24 = load %struct.nvkm_disp_oclass*, %struct.nvkm_disp_oclass** %9, align 8
  %25 = getelementptr inbounds %struct.nvkm_disp_oclass, %struct.nvkm_disp_oclass* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %28 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.nvkm_disp_oclass*, %struct.nvkm_disp_oclass** %9, align 8
  %30 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %31 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %30, i32 0, i32 0
  store %struct.nvkm_disp_oclass* %29, %struct.nvkm_disp_oclass** %31, align 8
  %32 = load %struct.nvkm_device_oclass**, %struct.nvkm_device_oclass*** %7, align 8
  store %struct.nvkm_device_oclass* @nvkm_disp_sclass, %struct.nvkm_device_oclass** %32, align 8
  store i32 0, i32* %4, align 4
  br label %34

33:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.nvkm_disp* @nvkm_disp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
