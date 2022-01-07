; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sis/extr_sis_mm.c_sis_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sis/extr_sis_mm.c_sis_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32* }

@.str = private unnamed_addr constant [30 x i8] c"Could not find register map.\0A\00", align 1
@SIS_CHIP_315 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Graphics engine idle timeout. Disabling idle check\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sis_idle(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = call i32* @sis_reg_init(%struct.drm_device* %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %77

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SIS_CHIP_315, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %77

40:                                               ; preds = %33
  %41 = load i32, i32* @jiffies, align 4
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 %42, 3
  %44 = add nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %64, %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %61, %49
  %51 = call i32 @SIS_READ(i32 34252)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* @jiffies, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @time_after_eq(i32 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, -2147483648
  %60 = icmp ne i32 %59, -2147483648
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i1 [ false, %52 ], [ %60, %57 ]
  br i1 %62, label %50, label %63

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %46

67:                                               ; preds = %46
  %68 = load i32, i32* @jiffies, align 4
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @time_after_eq(i32 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %67
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %39, %30, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32* @sis_reg_init(%struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @SIS_READ(i32) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
