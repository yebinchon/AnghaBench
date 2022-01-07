; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_falcon*)* }
%struct.TYPE_3__ = type { i32, %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_falcon_disable(%struct.nvkm_falcon* %0) #0 {
  %2 = alloca %struct.nvkm_falcon*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %2, align 8
  %5 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %3, align 8
  %10 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %2, align 8
  %11 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @nvkm_mc_enabled(%struct.nvkm_device* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %2, align 8
  %22 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.nvkm_falcon*)*, i32 (%struct.nvkm_falcon*)** %24, align 8
  %26 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %2, align 8
  %27 = call i32 %25(%struct.nvkm_falcon* %26)
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @nvkm_mc_disable(%struct.nvkm_device* %28, i32 %29)
  br label %31

31:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @nvkm_mc_enabled(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_mc_disable(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
