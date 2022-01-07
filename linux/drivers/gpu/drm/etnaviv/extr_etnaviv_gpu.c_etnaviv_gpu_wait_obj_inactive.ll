; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_wait_obj_inactive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_wait_obj_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32 }
%struct.etnaviv_gem_object = type { i32 }
%struct.timespec = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_gpu_wait_obj_inactive(%struct.etnaviv_gpu* %0, %struct.etnaviv_gem_object* %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.etnaviv_gpu*, align 8
  %6 = alloca %struct.etnaviv_gem_object*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %5, align 8
  store %struct.etnaviv_gem_object* %1, %struct.etnaviv_gem_object** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %10 = load %struct.timespec*, %struct.timespec** %7, align 8
  %11 = icmp ne %struct.timespec* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %6, align 8
  %14 = call i32 @is_active(%struct.etnaviv_gem_object* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ 0, %16 ], [ %19, %17 ]
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %3
  %23 = load %struct.timespec*, %struct.timespec** %7, align 8
  %24 = call i64 @etnaviv_timeout_to_jiffies(%struct.timespec* %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %26 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %6, align 8
  %29 = call i32 @is_active(%struct.etnaviv_gem_object* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @wait_event_interruptible_timeout(i32 %27, i32 %32, i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %50

38:                                               ; preds = %22
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @ERESTARTSYS, align 8
  %41 = sub nsw i64 0, %40
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i64, i64* @ERESTARTSYS, align 8
  %45 = sub nsw i64 0, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %43, %37, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @is_active(%struct.etnaviv_gem_object*) #1

declare dso_local i64 @etnaviv_timeout_to_jiffies(%struct.timespec*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
