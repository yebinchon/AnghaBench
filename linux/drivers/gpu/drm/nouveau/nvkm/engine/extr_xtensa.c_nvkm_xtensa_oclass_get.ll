; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_xtensa.c_nvkm_xtensa_oclass_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_xtensa.c_nvkm_xtensa_oclass_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oclass = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.nvkm_xtensa = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_oclass*, i32)* @nvkm_xtensa_oclass_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_xtensa_oclass_get(%struct.nvkm_oclass* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_oclass*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_xtensa*, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.nvkm_xtensa* @nvkm_xtensa(i32 %10)
  store %struct.nvkm_xtensa* %11, %struct.nvkm_xtensa** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %43, %2
  %13 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %4, align 8
  %31 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %30, i32 0, i32 0
  %32 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %6, align 8
  %33 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = bitcast %struct.TYPE_3__* %31 to i8*
  %41 = bitcast %struct.TYPE_3__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %24
  br label %12

44:                                               ; preds = %12
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %29
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.nvkm_xtensa* @nvkm_xtensa(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
