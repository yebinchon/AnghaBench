; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_reset_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_reset_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_syncobj_array = type { i64, i64, i32 }
%struct.drm_syncobj = type { i32 }

@DRIVER_SYNCOBJ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_syncobj_reset_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_syncobj_array*, align 8
  %9 = alloca %struct.drm_syncobj**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_syncobj_array*
  store %struct.drm_syncobj_array* %13, %struct.drm_syncobj_array** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = load i32, i32* @DRIVER_SYNCOBJ, align 4
  %16 = call i32 @drm_core_check_feature(%struct.drm_device* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %73

21:                                               ; preds = %3
  %22 = load %struct.drm_syncobj_array*, %struct.drm_syncobj_array** %8, align 8
  %23 = getelementptr inbounds %struct.drm_syncobj_array, %struct.drm_syncobj_array* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %73

29:                                               ; preds = %21
  %30 = load %struct.drm_syncobj_array*, %struct.drm_syncobj_array** %8, align 8
  %31 = getelementptr inbounds %struct.drm_syncobj_array, %struct.drm_syncobj_array* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %73

37:                                               ; preds = %29
  %38 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %39 = load %struct.drm_syncobj_array*, %struct.drm_syncobj_array** %8, align 8
  %40 = getelementptr inbounds %struct.drm_syncobj_array, %struct.drm_syncobj_array* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @u64_to_user_ptr(i32 %41)
  %43 = load %struct.drm_syncobj_array*, %struct.drm_syncobj_array** %8, align 8
  %44 = getelementptr inbounds %struct.drm_syncobj_array, %struct.drm_syncobj_array* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @drm_syncobj_array_find(%struct.drm_file* %38, i32 %42, i64 %45, %struct.drm_syncobj*** %9)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %73

51:                                               ; preds = %37
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.drm_syncobj_array*, %struct.drm_syncobj_array** %8, align 8
  %55 = getelementptr inbounds %struct.drm_syncobj_array, %struct.drm_syncobj_array* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.drm_syncobj*, %struct.drm_syncobj** %59, i64 %60
  %62 = load %struct.drm_syncobj*, %struct.drm_syncobj** %61, align 8
  %63 = call i32 @drm_syncobj_replace_fence(%struct.drm_syncobj* %62, i32* null)
  br label %64

64:                                               ; preds = %58
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %52

67:                                               ; preds = %52
  %68 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %9, align 8
  %69 = load %struct.drm_syncobj_array*, %struct.drm_syncobj_array** %8, align 8
  %70 = getelementptr inbounds %struct.drm_syncobj_array, %struct.drm_syncobj_array* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @drm_syncobj_array_free(%struct.drm_syncobj** %68, i64 %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %49, %34, %26, %18
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_syncobj_array_find(%struct.drm_file*, i32, i64, %struct.drm_syncobj***) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @drm_syncobj_replace_fence(%struct.drm_syncobj*, i32*) #1

declare dso_local i32 @drm_syncobj_array_free(%struct.drm_syncobj**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
