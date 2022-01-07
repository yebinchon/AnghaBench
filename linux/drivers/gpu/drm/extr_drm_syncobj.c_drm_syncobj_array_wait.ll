; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_array_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_array_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_syncobj_wait = type { i8*, i32, i32, i32 }
%struct.drm_syncobj_timeline_wait = type { i8*, i32, i32, i32, i32 }
%struct.drm_syncobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, %struct.drm_syncobj_wait*, %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj**, i32)* @drm_syncobj_array_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_syncobj_array_wait(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_syncobj_wait* %2, %struct.drm_syncobj_timeline_wait* %3, %struct.drm_syncobj** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca %struct.drm_syncobj_wait*, align 8
  %11 = alloca %struct.drm_syncobj_timeline_wait*, align 8
  %12 = alloca %struct.drm_syncobj**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store %struct.drm_file* %1, %struct.drm_file** %9, align 8
  store %struct.drm_syncobj_wait* %2, %struct.drm_syncobj_wait** %10, align 8
  store %struct.drm_syncobj_timeline_wait* %3, %struct.drm_syncobj_timeline_wait** %11, align 8
  store %struct.drm_syncobj** %4, %struct.drm_syncobj*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %15, align 8
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %6
  %19 = load %struct.drm_syncobj_wait*, %struct.drm_syncobj_wait** %10, align 8
  %20 = getelementptr inbounds %struct.drm_syncobj_wait, %struct.drm_syncobj_wait* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @drm_timeout_abs_to_jiffies(i32 %21)
  store i64 %22, i64* %14, align 8
  %23 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %12, align 8
  %24 = load %struct.drm_syncobj_wait*, %struct.drm_syncobj_wait** %10, align 8
  %25 = getelementptr inbounds %struct.drm_syncobj_wait, %struct.drm_syncobj_wait* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_syncobj_wait*, %struct.drm_syncobj_wait** %10, align 8
  %28 = getelementptr inbounds %struct.drm_syncobj_wait, %struct.drm_syncobj_wait* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %14, align 8
  %31 = call i64 @drm_syncobj_array_wait_timeout(%struct.drm_syncobj** %23, i32* null, i32 %26, i32 %29, i64 %30, i8** %15)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i64, i64* %14, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  br label %69

37:                                               ; preds = %18
  %38 = load i8*, i8** %15, align 8
  %39 = load %struct.drm_syncobj_wait*, %struct.drm_syncobj_wait** %10, align 8
  %40 = getelementptr inbounds %struct.drm_syncobj_wait, %struct.drm_syncobj_wait* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %68

41:                                               ; preds = %6
  %42 = load %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj_timeline_wait** %11, align 8
  %43 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, %struct.drm_syncobj_timeline_wait* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @drm_timeout_abs_to_jiffies(i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load %struct.drm_syncobj**, %struct.drm_syncobj*** %12, align 8
  %47 = load %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj_timeline_wait** %11, align 8
  %48 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, %struct.drm_syncobj_timeline_wait* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32* @u64_to_user_ptr(i32 %49)
  %51 = load %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj_timeline_wait** %11, align 8
  %52 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, %struct.drm_syncobj_timeline_wait* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj_timeline_wait** %11, align 8
  %55 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, %struct.drm_syncobj_timeline_wait* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i64 @drm_syncobj_array_wait_timeout(%struct.drm_syncobj** %46, i32* %50, i32 %53, i32 %56, i64 %57, i8** %15)
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %41
  %62 = load i64, i64* %14, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  br label %69

64:                                               ; preds = %41
  %65 = load i8*, i8** %15, align 8
  %66 = load %struct.drm_syncobj_timeline_wait*, %struct.drm_syncobj_timeline_wait** %11, align 8
  %67 = getelementptr inbounds %struct.drm_syncobj_timeline_wait, %struct.drm_syncobj_timeline_wait* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %37
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %61, %34
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i64 @drm_timeout_abs_to_jiffies(i32) #1

declare dso_local i64 @drm_syncobj_array_wait_timeout(%struct.drm_syncobj**, i32*, i32, i32, i64, i8**) #1

declare dso_local i32* @u64_to_user_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
