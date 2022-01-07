; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_getunique.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_getunique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.drm_master* }
%struct.drm_master = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_unique = type { i64, i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_getunique(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_unique*, align 8
  %9 = alloca %struct.drm_master*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_unique*
  store %struct.drm_unique* %11, %struct.drm_unique** %8, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %13 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 0
  %14 = load %struct.drm_master*, %struct.drm_master** %13, align 8
  store %struct.drm_master* %14, %struct.drm_master** %9, align 8
  %15 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %16 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.drm_unique*, %struct.drm_unique** %8, align 8
  %21 = getelementptr inbounds %struct.drm_unique, %struct.drm_unique* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %24 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %3
  %28 = load %struct.drm_unique*, %struct.drm_unique** %8, align 8
  %29 = getelementptr inbounds %struct.drm_unique, %struct.drm_unique* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %32 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %35 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @copy_to_user(i32 %30, i32 %33, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %41 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %59

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47, %3
  %49 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %50 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.drm_unique*, %struct.drm_unique** %8, align 8
  %53 = getelementptr inbounds %struct.drm_unique, %struct.drm_unique* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %55 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %48, %39
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @copy_to_user(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
