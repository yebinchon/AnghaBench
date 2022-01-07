; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ramht.c_nvkm_ramht_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ramht.c_nvkm_ramht_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ramht = type { i32, %struct.TYPE_5__*, i32, %struct.nvkm_ramht_data* }
%struct.TYPE_5__ = type { i64 }
%struct.nvkm_ramht_data = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.nvkm_object = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@NV_50 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ramht*, i32, %struct.nvkm_object*, i32, i32, i32, i32)* @nvkm_ramht_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ramht_update(%struct.nvkm_ramht* %0, i32 %1, %struct.nvkm_object* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_ramht*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nvkm_ramht_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvkm_ramht* %0, %struct.nvkm_ramht** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.nvkm_object* %2, %struct.nvkm_object** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %9, align 8
  %20 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %19, i32 0, i32 3
  %21 = load %struct.nvkm_ramht_data*, %struct.nvkm_ramht_data** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nvkm_ramht_data, %struct.nvkm_ramht_data* %21, i64 %23
  store %struct.nvkm_ramht_data* %24, %struct.nvkm_ramht_data** %16, align 8
  store i32 64, i32* %17, align 4
  %25 = load %struct.nvkm_ramht_data*, %struct.nvkm_ramht_data** %16, align 8
  %26 = getelementptr inbounds %struct.nvkm_ramht_data, %struct.nvkm_ramht_data* %25, i32 0, i32 2
  %27 = call i32 @nvkm_gpuobj_del(%struct.TYPE_7__** %26)
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.nvkm_ramht_data*, %struct.nvkm_ramht_data** %16, align 8
  %30 = getelementptr inbounds %struct.nvkm_ramht_data, %struct.nvkm_ramht_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load %struct.nvkm_ramht_data*, %struct.nvkm_ramht_data** %16, align 8
  %33 = getelementptr inbounds %struct.nvkm_ramht_data, %struct.nvkm_ramht_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nvkm_object*, %struct.nvkm_object** %11, align 8
  %35 = icmp ne %struct.nvkm_object* %34, null
  br i1 %35, label %36, label %103

36:                                               ; preds = %7
  %37 = load %struct.nvkm_object*, %struct.nvkm_object** %11, align 8
  %38 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %9, align 8
  %39 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nvkm_ramht_data*, %struct.nvkm_ramht_data** %16, align 8
  %42 = getelementptr inbounds %struct.nvkm_ramht_data, %struct.nvkm_ramht_data* %41, i32 0, i32 2
  %43 = call i32 @nvkm_object_bind(%struct.nvkm_object* %37, i32 %40, i32 16, %struct.TYPE_7__** %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %36
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.nvkm_ramht_data*, %struct.nvkm_ramht_data** %16, align 8
  %53 = getelementptr inbounds %struct.nvkm_ramht_data, %struct.nvkm_ramht_data* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %8, align 4
  br label %130

55:                                               ; preds = %46
  %56 = load %struct.nvkm_ramht_data*, %struct.nvkm_ramht_data** %16, align 8
  %57 = getelementptr inbounds %struct.nvkm_ramht_data, %struct.nvkm_ramht_data* %56, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %57, align 8
  br label %58

58:                                               ; preds = %55, %36
  %59 = load %struct.nvkm_ramht_data*, %struct.nvkm_ramht_data** %16, align 8
  %60 = getelementptr inbounds %struct.nvkm_ramht_data, %struct.nvkm_ramht_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = icmp ne %struct.TYPE_7__* %61, null
  br i1 %62, label %63, label %86

63:                                               ; preds = %58
  %64 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %9, align 8
  %65 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NV_50, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.nvkm_ramht_data*, %struct.nvkm_ramht_data** %16, align 8
  %73 = getelementptr inbounds %struct.nvkm_ramht_data, %struct.nvkm_ramht_data* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %17, align 4
  br label %85

79:                                               ; preds = %63
  %80 = load %struct.nvkm_ramht_data*, %struct.nvkm_ramht_data** %16, align 8
  %81 = getelementptr inbounds %struct.nvkm_ramht_data, %struct.nvkm_ramht_data* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %17, align 4
  br label %85

85:                                               ; preds = %79, %71
  br label %86

86:                                               ; preds = %85, %58
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %13, align 4
  %92 = sub nsw i32 0, %91
  %93 = shl i32 %90, %92
  %94 = load i32, i32* %15, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %15, align 4
  br label %102

96:                                               ; preds = %86
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %13, align 4
  %99 = ashr i32 %97, %98
  %100 = load i32, i32* %15, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %96, %89
  br label %103

103:                                              ; preds = %102, %7
  %104 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %9, align 8
  %105 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @nvkm_kmap(i32 %106)
  %108 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %9, align 8
  %109 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = shl i32 %111, 3
  %113 = add nsw i32 %112, 0
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @nvkm_wo32(i32 %110, i32 %113, i32 %114)
  %116 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %9, align 8
  %117 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = shl i32 %119, 3
  %121 = add nsw i32 %120, 4
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @nvkm_wo32(i32 %118, i32 %121, i32 %122)
  %124 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %9, align 8
  %125 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @nvkm_done(i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %103, %51
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local i32 @nvkm_gpuobj_del(%struct.TYPE_7__**) #1

declare dso_local i32 @nvkm_object_bind(%struct.nvkm_object*, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @nvkm_wo32(i32, i32, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
