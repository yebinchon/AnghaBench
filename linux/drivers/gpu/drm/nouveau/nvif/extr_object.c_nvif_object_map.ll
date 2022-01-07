; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_object.c_nvif_object_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_object.c_nvif_object_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_object = type { %struct.TYPE_4__, %struct.nvif_client* }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.nvif_client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* (%struct.nvif_client*, i64, i64)* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_object_map(%struct.nvif_object* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvif_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvif_client*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nvif_object* %0, %struct.nvif_object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %13 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %12, i32 0, i32 1
  %14 = load %struct.nvif_client*, %struct.nvif_client** %13, align 8
  store %struct.nvif_client* %14, %struct.nvif_client** %8, align 8
  %15 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @nvif_object_map_handle(%struct.nvif_object* %15, i8* %16, i32 %17, i64* %9, i64* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = load %struct.nvif_client*, %struct.nvif_client** %8, align 8
  %26 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8* (%struct.nvif_client*, i64, i64)*, i8* (%struct.nvif_client*, i64, i64)** %28, align 8
  %30 = load %struct.nvif_client*, %struct.nvif_client** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i8* %29(%struct.nvif_client* %30, i64 %31, i64 %32)
  %34 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %35 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %40 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %24
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %47 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i64 %45, i64* %48, align 8
  store i32 0, i32* %4, align 4
  br label %61

49:                                               ; preds = %24
  br label %56

50:                                               ; preds = %21
  %51 = load i64, i64* %9, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %54 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  store i32 0, i32* %4, align 4
  br label %61

56:                                               ; preds = %49
  %57 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %58 = call i32 @nvif_object_unmap_handle(%struct.nvif_object* %57)
  br label %59

59:                                               ; preds = %56, %3
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %50, %44
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @nvif_object_map_handle(%struct.nvif_object*, i8*, i32, i64*, i64*) #1

declare dso_local i32 @nvif_object_unmap_handle(%struct.nvif_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
