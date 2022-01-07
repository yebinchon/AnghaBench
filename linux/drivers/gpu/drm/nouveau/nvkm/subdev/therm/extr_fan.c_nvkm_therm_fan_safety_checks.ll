; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fan.c_nvkm_therm_fan_safety_checks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_fan.c_nvkm_therm_fan_safety_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_therm*)* @nvkm_therm_fan_safety_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_therm_fan_safety_checks(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %3 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 100
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %12 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 100, i32* %15, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %18 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 100
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %26 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 100, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %16
  %31 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %32 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %38 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %36, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %30
  %45 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %46 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %52 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  br label %56

56:                                               ; preds = %44, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
