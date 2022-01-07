; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_object.c_nvif_object_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_object.c_nvif_object_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_object = type { %struct.TYPE_4__, %struct.nvif_client* }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.nvif_client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nvif_client*, i32*, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvif_object_unmap(%struct.nvif_object* %0) #0 {
  %2 = alloca %struct.nvif_object*, align 8
  %3 = alloca %struct.nvif_client*, align 8
  store %struct.nvif_object* %0, %struct.nvif_object** %2, align 8
  %4 = load %struct.nvif_object*, %struct.nvif_object** %2, align 8
  %5 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %4, i32 0, i32 1
  %6 = load %struct.nvif_client*, %struct.nvif_client** %5, align 8
  store %struct.nvif_client* %6, %struct.nvif_client** %3, align 8
  %7 = load %struct.nvif_object*, %struct.nvif_object** %2, align 8
  %8 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %1
  %13 = load %struct.nvif_object*, %struct.nvif_object** %2, align 8
  %14 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load %struct.nvif_client*, %struct.nvif_client** %3, align 8
  %20 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.nvif_client*, i32*, i64)*, i32 (%struct.nvif_client*, i32*, i64)** %22, align 8
  %24 = load %struct.nvif_client*, %struct.nvif_client** %3, align 8
  %25 = load %struct.nvif_object*, %struct.nvif_object** %2, align 8
  %26 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.nvif_object*, %struct.nvif_object** %2, align 8
  %30 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 %23(%struct.nvif_client* %24, i32* %28, i64 %32)
  %34 = load %struct.nvif_object*, %struct.nvif_object** %2, align 8
  %35 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %18, %12
  %38 = load %struct.nvif_object*, %struct.nvif_object** %2, align 8
  %39 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.nvif_object*, %struct.nvif_object** %2, align 8
  %42 = call i32 @nvif_object_unmap_handle(%struct.nvif_object* %41)
  br label %43

43:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @nvif_object_unmap_handle(%struct.nvif_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
