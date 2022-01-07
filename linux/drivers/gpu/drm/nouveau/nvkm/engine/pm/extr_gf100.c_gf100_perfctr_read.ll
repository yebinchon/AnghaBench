; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_gf100.c_gf100_perfctr_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_gf100.c_gf100_perfctr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_perfdom = type { i64, i8* }
%struct.nvkm_perfctr = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_pm*, %struct.nvkm_perfdom*, %struct.nvkm_perfctr*)* @gf100_perfctr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_perfctr_read(%struct.nvkm_pm* %0, %struct.nvkm_perfdom* %1, %struct.nvkm_perfctr* %2) #0 {
  %4 = alloca %struct.nvkm_pm*, align 8
  %5 = alloca %struct.nvkm_perfdom*, align 8
  %6 = alloca %struct.nvkm_perfctr*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_pm* %0, %struct.nvkm_pm** %4, align 8
  store %struct.nvkm_perfdom* %1, %struct.nvkm_perfdom** %5, align 8
  store %struct.nvkm_perfctr* %2, %struct.nvkm_perfctr** %6, align 8
  %8 = load %struct.nvkm_pm*, %struct.nvkm_pm** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_pm, %struct.nvkm_pm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %7, align 8
  %13 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %52 [
    i32 0, label %16
    i32 1, label %25
    i32 2, label %34
    i32 3, label %43
  ]

16:                                               ; preds = %3
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %18 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 140
  %22 = call i8* @nvkm_rd32(%struct.nvkm_device* %17, i64 %21)
  %23 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %6, align 8
  %24 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %52

25:                                               ; preds = %3
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %27 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %28 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 136
  %31 = call i8* @nvkm_rd32(%struct.nvkm_device* %26, i64 %30)
  %32 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %6, align 8
  %33 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %52

34:                                               ; preds = %3
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %36 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %37 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 128
  %40 = call i8* @nvkm_rd32(%struct.nvkm_device* %35, i64 %39)
  %41 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %6, align 8
  %42 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %52

43:                                               ; preds = %3
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %45 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %46 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 144
  %49 = call i8* @nvkm_rd32(%struct.nvkm_device* %44, i64 %48)
  %50 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %6, align 8
  %51 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %3, %43, %34, %25, %16
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %54 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %55 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 112
  %58 = call i8* @nvkm_rd32(%struct.nvkm_device* %53, i64 %57)
  %59 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %60 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  ret void
}

declare dso_local i8* @nvkm_rd32(%struct.nvkm_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
