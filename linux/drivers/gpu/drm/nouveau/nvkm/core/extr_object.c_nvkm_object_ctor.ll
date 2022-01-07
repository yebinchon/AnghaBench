; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_object.c_nvkm_object_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_object.c_nvkm_object_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object_func = type { i32 }
%struct.nvkm_oclass = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_object = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_object_func* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_object_ctor(%struct.nvkm_object_func* %0, %struct.nvkm_oclass* %1, %struct.nvkm_object* %2) #0 {
  %4 = alloca %struct.nvkm_object_func*, align 8
  %5 = alloca %struct.nvkm_oclass*, align 8
  %6 = alloca %struct.nvkm_object*, align 8
  store %struct.nvkm_object_func* %0, %struct.nvkm_object_func** %4, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %5, align 8
  store %struct.nvkm_object* %2, %struct.nvkm_object** %6, align 8
  %7 = load %struct.nvkm_object_func*, %struct.nvkm_object_func** %4, align 8
  %8 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %9 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %8, i32 0, i32 10
  store %struct.nvkm_object_func* %7, %struct.nvkm_object_func** %9, align 8
  %10 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 4
  %15 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nvkm_engine_ref(i32 %17)
  %19 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %20 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %22 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %26 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %28 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %31 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %36 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %38 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %41 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %43 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %46 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %48 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %47, i32 0, i32 3
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %51 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %50, i32 0, i32 2
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %54 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %53, i32 0, i32 1
  %55 = call i32 @RB_CLEAR_NODE(i32* %54)
  %56 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %57 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @IS_ERR(i32 %58)
  %60 = call i32 @WARN_ON(i32 %59)
  ret void
}

declare dso_local i32 @nvkm_engine_ref(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
