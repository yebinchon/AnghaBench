; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sync.c_radeon_sync_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sync.c_radeon_sync_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_sync = type { %struct.radeon_fence*, %struct.radeon_fence** }
%struct.radeon_fence = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_sync_fence(%struct.radeon_sync* %0, %struct.radeon_fence* %1) #0 {
  %3 = alloca %struct.radeon_sync*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_fence*, align 8
  store %struct.radeon_sync* %0, %struct.radeon_sync** %3, align 8
  store %struct.radeon_fence* %1, %struct.radeon_fence** %4, align 8
  %6 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %7 = icmp ne %struct.radeon_fence* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %43

9:                                                ; preds = %2
  %10 = load %struct.radeon_sync*, %struct.radeon_sync** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_sync, %struct.radeon_sync* %10, i32 0, i32 1
  %12 = load %struct.radeon_fence**, %struct.radeon_fence*** %11, align 8
  %13 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %12, i64 %15
  %17 = load %struct.radeon_fence*, %struct.radeon_fence** %16, align 8
  store %struct.radeon_fence* %17, %struct.radeon_fence** %5, align 8
  %18 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %19 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  %20 = call i8* @radeon_fence_later(%struct.radeon_fence* %18, %struct.radeon_fence* %19)
  %21 = bitcast i8* %20 to %struct.radeon_fence*
  %22 = load %struct.radeon_sync*, %struct.radeon_sync** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_sync, %struct.radeon_sync* %22, i32 0, i32 1
  %24 = load %struct.radeon_fence**, %struct.radeon_fence*** %23, align 8
  %25 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.radeon_fence*, %struct.radeon_fence** %24, i64 %27
  store %struct.radeon_fence* %21, %struct.radeon_fence** %28, align 8
  %29 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %9
  %34 = load %struct.radeon_sync*, %struct.radeon_sync** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_sync, %struct.radeon_sync* %34, i32 0, i32 0
  %36 = load %struct.radeon_fence*, %struct.radeon_fence** %35, align 8
  store %struct.radeon_fence* %36, %struct.radeon_fence** %5, align 8
  %37 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %38 = load %struct.radeon_fence*, %struct.radeon_fence** %5, align 8
  %39 = call i8* @radeon_fence_later(%struct.radeon_fence* %37, %struct.radeon_fence* %38)
  %40 = bitcast i8* %39 to %struct.radeon_fence*
  %41 = load %struct.radeon_sync*, %struct.radeon_sync** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_sync, %struct.radeon_sync* %41, i32 0, i32 0
  store %struct.radeon_fence* %40, %struct.radeon_fence** %42, align 8
  br label %43

43:                                               ; preds = %8, %33, %9
  ret void
}

declare dso_local i8* @radeon_fence_later(%struct.radeon_fence*, %struct.radeon_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
