; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i32, %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_falcon_enable(%struct.nvkm_falcon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_falcon*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %3, align 8
  %7 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %4, align 8
  %12 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @nvkm_mc_enable(%struct.nvkm_device* %17, i32 %18)
  %20 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.nvkm_falcon*)**
  %25 = load i32 (%struct.nvkm_falcon*)*, i32 (%struct.nvkm_falcon*)** %24, align 8
  %26 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %27 = call i32 %25(%struct.nvkm_falcon* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @nvkm_mc_disable(%struct.nvkm_device* %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @nvkm_mc_enable(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_mc_disable(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
