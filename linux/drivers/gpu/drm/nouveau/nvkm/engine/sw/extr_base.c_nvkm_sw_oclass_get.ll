; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_base.c_nvkm_sw_oclass_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_base.c_nvkm_sw_oclass_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oclass = type { %struct.TYPE_4__, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.nvkm_sw = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@nvkm_sw_oclass_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_oclass*, i32)* @nvkm_sw_oclass_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_sw_oclass_get(%struct.nvkm_oclass* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_oclass*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_sw*, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.nvkm_sw* @nvkm_sw(i32 %10)
  store %struct.nvkm_sw* %11, %struct.nvkm_sw** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %58, %2
  %13 = load %struct.nvkm_sw*, %struct.nvkm_sw** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_sw, %struct.nvkm_sw* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %24
  %30 = load %struct.nvkm_sw*, %struct.nvkm_sw** %6, align 8
  %31 = getelementptr inbounds %struct.nvkm_sw, %struct.nvkm_sw* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %4, align 8
  %39 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %38, i32 0, i32 1
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %39, align 8
  %40 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %4, align 8
  %41 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %40, i32 0, i32 0
  %42 = load %struct.nvkm_sw*, %struct.nvkm_sw** %6, align 8
  %43 = getelementptr inbounds %struct.nvkm_sw, %struct.nvkm_sw* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = bitcast %struct.TYPE_4__* %41 to i8*
  %52 = bitcast %struct.TYPE_4__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 4, i1 false)
  %53 = load i32, i32* @nvkm_sw_oclass_new, align 4
  %54 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %4, align 8
  %55 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %24
  br label %12

59:                                               ; preds = %12
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %29
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.nvkm_sw* @nvkm_sw(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
