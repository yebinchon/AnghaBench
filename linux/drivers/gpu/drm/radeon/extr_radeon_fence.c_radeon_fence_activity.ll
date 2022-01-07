; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_activity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @radeon_fence_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_fence_activity(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @atomic64_read(i32* %16)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %69, %2
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @radeon_fence_read(%struct.radeon_device* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, -4294967296
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = or i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %18
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = and i64 %47, -4294967296
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = or i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %44, %18
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  br label %81

62:                                               ; preds = %57
  store i32 1, i32* %9, align 4
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = icmp ugt i32 %64, 10
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %81

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @atomic64_xchg(i32* %76, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %18, label %81

81:                                               ; preds = %69, %67, %61
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @radeon_fence_schedule_check(%struct.radeon_device* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @radeon_fence_read(%struct.radeon_device*, i32) #1

declare dso_local i32 @atomic64_xchg(i32*, i32) #1

declare dso_local i32 @radeon_fence_schedule_check(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
