; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_update_trip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_update_trip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.nvbios_therm_trip_point*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.nvbios_therm_trip_point = type { i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.nvbios_therm_trip_point* }
%struct.TYPE_4__ = type { i64 (%struct.nvkm_therm*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_therm*)* @nvkm_therm_update_trip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_therm_update_trip(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  %3 = alloca %struct.nvbios_therm_trip_point*, align 8
  %4 = alloca %struct.nvbios_therm_trip_point*, align 8
  %5 = alloca %struct.nvbios_therm_trip_point*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %9 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %13, align 8
  store %struct.nvbios_therm_trip_point* %14, %struct.nvbios_therm_trip_point** %3, align 8
  store %struct.nvbios_therm_trip_point* null, %struct.nvbios_therm_trip_point** %4, align 8
  %15 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %16 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %15, i32 0, i32 0
  %17 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %16, align 8
  store %struct.nvbios_therm_trip_point* %17, %struct.nvbios_therm_trip_point** %5, align 8
  %18 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %19 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64 (%struct.nvkm_therm*)*, i64 (%struct.nvkm_therm*)** %21, align 8
  %23 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %24 = call i64 %22(%struct.nvkm_therm* %23)
  store i64 %24, i64* %6, align 8
  store %struct.nvbios_therm_trip_point* null, %struct.nvbios_therm_trip_point** %4, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %47, %1
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %28 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %26, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %25
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %3, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %36, i64 %37
  %39 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %35, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %3, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %43, i64 %44
  store %struct.nvbios_therm_trip_point* %45, %struct.nvbios_therm_trip_point** %4, align 8
  br label %46

46:                                               ; preds = %42, %34
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %25

50:                                               ; preds = %25
  %51 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %5, align 8
  %52 = icmp ne %struct.nvbios_therm_trip_point* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %5, align 8
  %56 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %5, align 8
  %62 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %5, align 8
  %65 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = icmp sgt i64 %60, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %5, align 8
  store %struct.nvbios_therm_trip_point* %70, %struct.nvbios_therm_trip_point** %4, align 8
  br label %71

71:                                               ; preds = %69, %59, %53, %50
  %72 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %4, align 8
  %73 = icmp ne %struct.nvbios_therm_trip_point* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %4, align 8
  %76 = getelementptr inbounds %struct.nvbios_therm_trip_point, %struct.nvbios_therm_trip_point* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %7, align 8
  %78 = load %struct.nvbios_therm_trip_point*, %struct.nvbios_therm_trip_point** %4, align 8
  %79 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %80 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %79, i32 0, i32 0
  store %struct.nvbios_therm_trip_point* %78, %struct.nvbios_therm_trip_point** %80, align 8
  br label %84

81:                                               ; preds = %71
  store i64 0, i64* %7, align 8
  %82 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %83 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %82, i32 0, i32 0
  store %struct.nvbios_therm_trip_point* null, %struct.nvbios_therm_trip_point** %83, align 8
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i64, i64* %7, align 8
  %86 = trunc i64 %85 to i32
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
