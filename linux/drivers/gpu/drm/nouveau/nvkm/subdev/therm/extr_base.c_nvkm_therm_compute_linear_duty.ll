; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_compute_linear_duty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_compute_linear_duty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 (%struct.nvkm_therm*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_therm*, i64, i64)* @nvkm_therm_compute_linear_duty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_therm_compute_linear_duty(%struct.nvkm_therm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_therm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64 (%struct.nvkm_therm*)*, i64 (%struct.nvkm_therm*)** %13, align 8
  %15 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %16 = call i64 %14(%struct.nvkm_therm* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %22 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %75

27:                                               ; preds = %3
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %75

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %9, align 8
  %43 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %44 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %50 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %48, %54
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %9, align 8
  %58 = mul nsw i64 %57, %56
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load i64, i64* %9, align 8
  %63 = sdiv i64 %62, %61
  store i64 %63, i64* %9, align 8
  %64 = load %struct.nvkm_therm*, %struct.nvkm_therm** %5, align 8
  %65 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %39, %31, %20
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
