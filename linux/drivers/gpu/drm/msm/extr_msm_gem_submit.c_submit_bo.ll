; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_submit = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.msm_gem_object* }
%struct.msm_gem_object = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"invalid buffer index: %u (out of %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BO_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gem_submit*, i64, %struct.msm_gem_object**, i32*, i32*)* @submit_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_bo(%struct.msm_gem_submit* %0, i64 %1, %struct.msm_gem_object** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_gem_submit*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.msm_gem_object**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.msm_gem_submit* %0, %struct.msm_gem_submit** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.msm_gem_object** %2, %struct.msm_gem_object*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %7, align 8
  %14 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %7, align 8
  %20 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %68

25:                                               ; preds = %5
  %26 = load %struct.msm_gem_object**, %struct.msm_gem_object*** %9, align 8
  %27 = icmp ne %struct.msm_gem_object** %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %7, align 8
  %30 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load %struct.msm_gem_object*, %struct.msm_gem_object** %34, align 8
  %36 = load %struct.msm_gem_object**, %struct.msm_gem_object*** %9, align 8
  store %struct.msm_gem_object* %35, %struct.msm_gem_object** %36, align 8
  br label %37

37:                                               ; preds = %28, %25
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %7, align 8
  %42 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %37
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %7, align 8
  %54 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BO_VALID, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %52, %49
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %17
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
