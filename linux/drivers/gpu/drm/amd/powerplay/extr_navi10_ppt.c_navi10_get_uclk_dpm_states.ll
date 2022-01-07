; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_get_uclk_dpm_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_get_uclk_dpm_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PPCLK_UCLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i64*, i64*)* @navi10_get_uclk_dpm_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_get_uclk_dpm_states(%struct.smu_context* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.smu_table_context*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64* null, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %14 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %13, i32 0, i32 0
  store %struct.smu_table_context* %14, %struct.smu_table_context** %11, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i64*, i64** %7, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.smu_table_context*, %struct.smu_table_context** %11, align 8
  %22 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %17, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %70

28:                                               ; preds = %20
  %29 = load %struct.smu_table_context*, %struct.smu_table_context** %11, align 8
  %30 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %12, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* @PPCLK_UCLK, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  store i64* %41, i64** %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %28
  %45 = load i64*, i64** %9, align 8
  %46 = icmp eq i64* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %28
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %70

50:                                               ; preds = %44
  %51 = load i64, i64* %8, align 8
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  store i64 0, i64* %10, align 8
  br label %53

53:                                               ; preds = %66, %50
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %58, align 8
  %60 = mul nsw i64 %59, 1000
  %61 = load i64*, i64** %6, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i64*, i64** %6, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %6, align 8
  %64 = load i64*, i64** %9, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %9, align 8
  br label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %10, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %53

69:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %47, %25
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
