; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_create_blob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_create_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property_blob = type { i64, i32, i32, i8*, %struct.drm_device*, i32 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ULONG_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_BLOB = common dso_local global i32 0, align 4
@drm_property_free_blob = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.drm_property_blob*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_property_blob*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* @ULONG_MAX, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 40
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.drm_property_blob* @ERR_PTR(i32 %20)
  store %struct.drm_property_blob* %21, %struct.drm_property_blob** %4, align 8
  br label %89

22:                                               ; preds = %12
  %23 = load i64, i64* %6, align 8
  %24 = add i64 40, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.drm_property_blob* @kvzalloc(i32 %25, i32 %26)
  store %struct.drm_property_blob* %27, %struct.drm_property_blob** %8, align 8
  %28 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %29 = icmp ne %struct.drm_property_blob* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.drm_property_blob* @ERR_PTR(i32 %32)
  store %struct.drm_property_blob* %33, %struct.drm_property_blob** %4, align 8
  br label %89

34:                                               ; preds = %22
  %35 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %36 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %35, i32 0, i32 5
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %39 = bitcast %struct.drm_property_blob* %38 to i8*
  %40 = getelementptr i8, i8* %39, i64 40
  %41 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %42 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %45 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %47 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %48 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %47, i32 0, i32 4
  store %struct.drm_device* %46, %struct.drm_device** %48, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %34
  %52 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %53 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @memcpy(i8* %54, i8* %55, i64 %56)
  br label %58

58:                                               ; preds = %51, %34
  %59 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %60 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %61 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %60, i32 0, i32 2
  %62 = load i32, i32* @DRM_MODE_OBJECT_BLOB, align 4
  %63 = load i32, i32* @drm_property_free_blob, align 4
  %64 = call i32 @__drm_mode_object_add(%struct.drm_device* %59, i32* %61, i32 %62, i32 1, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %69 = call i32 @kvfree(%struct.drm_property_blob* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.drm_property_blob* @ERR_PTR(i32 %71)
  store %struct.drm_property_blob* %72, %struct.drm_property_blob** %4, align 8
  br label %89

73:                                               ; preds = %58
  %74 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %79 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %78, i32 0, i32 1
  %80 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %81 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = call i32 @list_add_tail(i32* %79, i32* %82)
  %84 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %85 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  store %struct.drm_property_blob* %88, %struct.drm_property_blob** %4, align 8
  br label %89

89:                                               ; preds = %73, %67, %30, %18
  %90 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  ret %struct.drm_property_blob* %90
}

declare dso_local %struct.drm_property_blob* @ERR_PTR(i32) #1

declare dso_local %struct.drm_property_blob* @kvzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @__drm_mode_object_add(%struct.drm_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @kvfree(%struct.drm_property_blob*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
