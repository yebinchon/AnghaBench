; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_pin_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_pin_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_submit = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.msm_gem_object* }
%struct.msm_gem_object = type { i32 }

@BO_PINNED = common dso_local global i32 0, align 4
@BO_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gem_submit*)* @submit_pin_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_pin_objects(%struct.msm_gem_submit* %0) #0 {
  %2 = alloca %struct.msm_gem_submit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_gem_object*, align 8
  %6 = alloca i64, align 8
  store %struct.msm_gem_submit* %0, %struct.msm_gem_submit** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %8 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %88, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %12 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %91

15:                                               ; preds = %9
  %16 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %17 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load %struct.msm_gem_object*, %struct.msm_gem_object** %22, align 8
  store %struct.msm_gem_object* %23, %struct.msm_gem_object** %5, align 8
  %24 = load %struct.msm_gem_object*, %struct.msm_gem_object** %5, align 8
  %25 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %24, i32 0, i32 0
  %26 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %27 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @msm_gem_get_and_pin_iova(i32* %25, i32 %28, i64* %6)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %91

33:                                               ; preds = %15
  %34 = load i32, i32* @BO_PINNED, align 4
  %35 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %36 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %34
  store i32 %43, i32* %41, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %46 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %44, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %33
  %55 = load i32, i32* @BO_VALID, align 4
  %56 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %57 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %55
  store i32 %64, i32* %62, align 8
  br label %87

65:                                               ; preds = %33
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %68 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 %66, i64* %73, align 8
  %74 = load i32, i32* @BO_VALID, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %77 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %75
  store i32 %84, i32* %82, align 8
  %85 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %2, align 8
  %86 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %65, %54
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %9

91:                                               ; preds = %32, %9
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @msm_gem_get_and_pin_iova(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
