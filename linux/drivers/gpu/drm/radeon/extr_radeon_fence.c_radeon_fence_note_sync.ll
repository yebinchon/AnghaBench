; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_note_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_note_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_fence = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_fence_driver* }
%struct.radeon_fence_driver = type { i32* }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_fence_note_sync(%struct.radeon_fence* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_fence*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_fence_driver*, align 8
  %6 = alloca %struct.radeon_fence_driver*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_fence* %0, %struct.radeon_fence** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  %9 = icmp ne %struct.radeon_fence* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %71

11:                                               ; preds = %2
  %12 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %71

18:                                               ; preds = %11
  %19 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %22, align 8
  %24 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %23, i64 %27
  store %struct.radeon_fence_driver* %28, %struct.radeon_fence_driver** %6, align 8
  %29 = load %struct.radeon_fence*, %struct.radeon_fence** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %33, i64 %35
  store %struct.radeon_fence_driver* %36, %struct.radeon_fence_driver** %5, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %68, %18
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %68

46:                                               ; preds = %41
  %47 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %5, align 8
  %48 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %6, align 8
  %55 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @max(i32 %53, i32 %60)
  %62 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %46, %45
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %37

71:                                               ; preds = %10, %17, %37
  ret void
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
