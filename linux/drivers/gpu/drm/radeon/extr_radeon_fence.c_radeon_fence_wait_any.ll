; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait_any.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_fence = type { i64 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_fence_wait_any(%struct.radeon_device* %0, %struct.radeon_fence** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_fence**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_fence** %1, %struct.radeon_fence*** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %46, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %17, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %26, i64 %28
  %30 = load %struct.radeon_fence*, %struct.radeon_fence** %29, align 8
  %31 = icmp ne %struct.radeon_fence* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %46

33:                                               ; preds = %22
  %34 = load %struct.radeon_fence**, %struct.radeon_fence*** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %34, i64 %36
  %38 = load %struct.radeon_fence*, %struct.radeon_fence** %37, align 8
  %39 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %17, i64 %42
  store i64 %40, i64* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %33, %32
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %18

49:                                               ; preds = %18
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %66

55:                                               ; preds = %49
  %56 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %59 = call i64 @radeon_fence_wait_seq_timeout(%struct.radeon_device* %56, i64* %17, i32 %57, i32 %58)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i64, i64* %12, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %66

65:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %66

66:                                               ; preds = %65, %62, %52
  %67 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @radeon_fence_wait_seq_timeout(%struct.radeon_device*, i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
