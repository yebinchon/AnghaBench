; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_common_supported_link_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_common_supported_link_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link_settings = type { i64, i64, i32, i32 }

@LINK_SPREAD_DISABLED = common dso_local global i32 0, align 4
@LINK_RATE_HIGH3 = common dso_local global i64 0, align 8
@LINK_RATE_HIGH2 = common dso_local global i64 0, align 8
@LINK_RATE_HIGH = common dso_local global i64 0, align 8
@LINK_RATE_LOW = common dso_local global i64 0, align 8
@LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_link_settings*, %struct.dc_link_settings*, %struct.dc_link_settings*)* @get_common_supported_link_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_common_supported_link_settings(%struct.dc_link_settings* noalias sret %0, %struct.dc_link_settings* byval(%struct.dc_link_settings) align 8 %1, %struct.dc_link_settings* byval(%struct.dc_link_settings) align 8 %2) #0 {
  %4 = bitcast %struct.dc_link_settings* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false)
  %5 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %2, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sle i64 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  br label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i64 [ %12, %10 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %1, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %2, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %1, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  br label %30

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %2, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i64 [ %26, %24 ], [ %29, %27 ]
  %32 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* @LINK_SPREAD_DISABLED, align 4
  %34 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LINK_RATE_HIGH3, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i64, i64* @LINK_RATE_HIGH3, align 8
  %41 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  br label %93

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LINK_RATE_HIGH3, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LINK_RATE_HIGH2, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* @LINK_RATE_HIGH2, align 8
  %54 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  store i64 %53, i64* %54, align 8
  br label %92

55:                                               ; preds = %47, %42
  %56 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LINK_RATE_HIGH2, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LINK_RATE_HIGH, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i64, i64* @LINK_RATE_HIGH, align 8
  %67 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  br label %91

68:                                               ; preds = %60, %55
  %69 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @LINK_RATE_HIGH, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LINK_RATE_LOW, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i64, i64* @LINK_RATE_LOW, align 8
  %80 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  store i64 %79, i64* %80, align 8
  br label %90

81:                                               ; preds = %73, %68
  %82 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @LINK_RATE_LOW, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i64, i64* @LINK_RATE_UNKNOWN, align 8
  %88 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %0, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91, %52
  br label %93

93:                                               ; preds = %92, %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
