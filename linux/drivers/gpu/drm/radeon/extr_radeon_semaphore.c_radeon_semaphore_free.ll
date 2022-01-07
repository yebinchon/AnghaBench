; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_semaphore.c_radeon_semaphore_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_semaphore.c_radeon_semaphore_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_semaphore = type { i64, i32 }
%struct.radeon_fence = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"semaphore %p has more waiters than signalers, hardware lockup imminent!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_semaphore_free(%struct.radeon_device* %0, %struct.radeon_semaphore** %1, %struct.radeon_fence* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_semaphore**, align 8
  %6 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_semaphore** %1, %struct.radeon_semaphore*** %5, align 8
  store %struct.radeon_fence* %2, %struct.radeon_fence** %6, align 8
  %7 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %8 = icmp eq %struct.radeon_semaphore** %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %11 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %10, align 8
  %12 = icmp eq %struct.radeon_semaphore* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %3
  br label %38

14:                                               ; preds = %9
  %15 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %16 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %15, align 8
  %17 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %25 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %24, align 8
  %26 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), %struct.radeon_semaphore* %25)
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %29 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %30 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %29, align 8
  %31 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %30, i32 0, i32 1
  %32 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %33 = call i32 @radeon_sa_bo_free(%struct.radeon_device* %28, i32* %31, %struct.radeon_fence* %32)
  %34 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  %35 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %34, align 8
  %36 = call i32 @kfree(%struct.radeon_semaphore* %35)
  %37 = load %struct.radeon_semaphore**, %struct.radeon_semaphore*** %5, align 8
  store %struct.radeon_semaphore* null, %struct.radeon_semaphore** %37, align 8
  br label %38

38:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, %struct.radeon_semaphore*) #1

declare dso_local i32 @radeon_sa_bo_free(%struct.radeon_device*, i32*, %struct.radeon_fence*) #1

declare dso_local i32 @kfree(%struct.radeon_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
