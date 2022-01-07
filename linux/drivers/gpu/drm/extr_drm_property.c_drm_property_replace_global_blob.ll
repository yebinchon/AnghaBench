; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_replace_global_blob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_replace_global_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_property_blob = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_mode_object = type { i32 }
%struct.drm_property = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_property_replace_global_blob(%struct.drm_device* %0, %struct.drm_property_blob** %1, i64 %2, i8* %3, %struct.drm_mode_object* %4, %struct.drm_property* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_property_blob**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.drm_mode_object*, align 8
  %13 = alloca %struct.drm_property*, align 8
  %14 = alloca %struct.drm_property_blob*, align 8
  %15 = alloca %struct.drm_property_blob*, align 8
  %16 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store %struct.drm_property_blob** %1, %struct.drm_property_blob*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.drm_mode_object* %4, %struct.drm_mode_object** %12, align 8
  store %struct.drm_property* %5, %struct.drm_property** %13, align 8
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %14, align 8
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %15, align 8
  %17 = load %struct.drm_property_blob**, %struct.drm_property_blob*** %9, align 8
  %18 = icmp eq %struct.drm_property_blob** %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.drm_property_blob**, %struct.drm_property_blob*** %9, align 8
  %22 = load %struct.drm_property_blob*, %struct.drm_property_blob** %21, align 8
  store %struct.drm_property_blob* %22, %struct.drm_property_blob** %15, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %6
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device* %29, i64 %30, i8* %31)
  store %struct.drm_property_blob* %32, %struct.drm_property_blob** %14, align 8
  %33 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  %34 = call i64 @IS_ERR(%struct.drm_property_blob* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  %38 = call i32 @PTR_ERR(%struct.drm_property_blob* %37)
  store i32 %38, i32* %7, align 4
  br label %70

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %25, %6
  %41 = load %struct.drm_mode_object*, %struct.drm_mode_object** %12, align 8
  %42 = icmp ne %struct.drm_mode_object* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load %struct.drm_mode_object*, %struct.drm_mode_object** %12, align 8
  %45 = load %struct.drm_property*, %struct.drm_property** %13, align 8
  %46 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  %47 = icmp ne %struct.drm_property_blob* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  %50 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i32 [ %52, %48 ], [ 0, %53 ]
  %56 = call i32 @drm_object_property_set_value(%struct.drm_mode_object* %44, %struct.drm_property* %45, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %66

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %40
  %62 = load %struct.drm_property_blob*, %struct.drm_property_blob** %15, align 8
  %63 = call i32 @drm_property_blob_put(%struct.drm_property_blob* %62)
  %64 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  %65 = load %struct.drm_property_blob**, %struct.drm_property_blob*** %9, align 8
  store %struct.drm_property_blob* %64, %struct.drm_property_blob** %65, align 8
  store i32 0, i32* %7, align 4
  br label %70

66:                                               ; preds = %59
  %67 = load %struct.drm_property_blob*, %struct.drm_property_blob** %14, align 8
  %68 = call i32 @drm_property_blob_put(%struct.drm_property_blob* %67)
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %61, %36
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device*, i64, i8*) #1

declare dso_local i64 @IS_ERR(%struct.drm_property_blob*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_property_blob*) #1

declare dso_local i32 @drm_object_property_set_value(%struct.drm_mode_object*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_property_blob_put(%struct.drm_property_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
