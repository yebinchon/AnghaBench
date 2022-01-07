; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_base.c_nvkm_ltc_tags_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_base.c_nvkm_ltc_tags_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.nvkm_ltc* }
%struct.nvkm_ltc = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.nvkm_ltc*)*, i32 (%struct.nvkm_ltc*, i64, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_ltc_tags_clear(%struct.nvkm_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_ltc*, align 8
  %8 = alloca i64, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %9, i32 0, i32 0
  %11 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %10, align 8
  store %struct.nvkm_ltc* %11, %struct.nvkm_ltc** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add nsw i64 %12, %13
  %15 = sub nsw i64 %14, 1
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %22 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ true, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %30 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %34 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32 (%struct.nvkm_ltc*, i64, i64)*, i32 (%struct.nvkm_ltc*, i64, i64)** %36, align 8
  %38 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 %37(%struct.nvkm_ltc* %38, i64 %39, i64 %40)
  %42 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %43 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.nvkm_ltc*)*, i32 (%struct.nvkm_ltc*)** %45, align 8
  %47 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %48 = call i32 %46(%struct.nvkm_ltc* %47)
  %49 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %7, align 8
  %50 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
