; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_irq.c_via_driver_irq_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_irq.c_via_driver_irq_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_4__ = type { i32*, i32**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"called with no initialization\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@drm_via_irq_num = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Trying to wait on unknown irq %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Video IRQ %d not available on this hardware.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, i32*)* @via_driver_irq_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_driver_irq_wait(%struct.drm_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %10, align 8
  store i32 0, i32* %13, align 4
  %20 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %129

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @drm_via_irq_num, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %129

36:                                               ; preds = %27
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %129

51:                                               ; preds = %36
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  store i32** %54, i32*** %14, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %12, align 8
  %61 = load i32**, i32*** %14, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %109

69:                                               ; preds = %51
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %109, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HZ, align 4
  %78 = mul nsw i32 3, %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = load i32**, i32*** %14, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @via_read(%struct.TYPE_4__* %79, i32 %86)
  %88 = load i32**, i32*** %14, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %87, %94
  %96 = load i32**, i32*** %14, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %95, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @VIA_WAIT_ON(i32 %73, i32 %76, i32 %78, i32 %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = call i32 @atomic_read(i32* %107)
  store i32 %108, i32* %11, align 4
  br label %125

109:                                              ; preds = %69, %51
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @HZ, align 4
  %115 = mul nsw i32 3, %114
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = call i32 @atomic_read(i32* %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %119, align 4
  %121 = sub i32 %118, %120
  %122 = icmp ule i32 %121, 8388608
  %123 = zext i1 %122 to i32
  %124 = call i32 @VIA_WAIT_ON(i32 %110, i32 %113, i32 %115, i32 %123)
  br label %125

125:                                              ; preds = %109, %72
  %126 = load i32, i32* %11, align 4
  %127 = load i32*, i32** %9, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %125, %46, %31, %23
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @VIA_WAIT_ON(i32, i32, i32, i32) #1

declare dso_local i32 @via_read(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
