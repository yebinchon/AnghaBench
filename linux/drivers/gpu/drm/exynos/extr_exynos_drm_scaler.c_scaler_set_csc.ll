; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_set_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_set_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.scaler_context = type { i32 }
%struct.drm_format_info = type { i32 }

@scaler_set_csc.csc_mtx = internal constant [2 x [3 x [3 x %struct.TYPE_9__]]] [[3 x [3 x %struct.TYPE_9__]] [[3 x %struct.TYPE_9__] [%struct.TYPE_9__ { %struct.TYPE_7__ { i32 596, i32 0, i32 817 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_9__ zeroinitializer], [3 x %struct.TYPE_9__] [%struct.TYPE_9__ { %struct.TYPE_7__ { i32 596, i32 3896, i32 3680 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_9__ zeroinitializer], [3 x %struct.TYPE_9__] [%struct.TYPE_9__ { %struct.TYPE_7__ { i32 596, i32 1033, i32 0 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_9__ zeroinitializer]], [3 x [3 x %struct.TYPE_9__]] [[3 x %struct.TYPE_9__] [%struct.TYPE_9__ { %struct.TYPE_7__ { i32 132, i32 258, i32 50 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_9__ zeroinitializer], [3 x %struct.TYPE_9__] [%struct.TYPE_9__ { %struct.TYPE_7__ { i32 4020, i32 3947, i32 225 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_9__ zeroinitializer], [3 x %struct.TYPE_9__] [%struct.TYPE_9__ { %struct.TYPE_7__ { i32 225, i32 3908, i32 4060 }, %struct.TYPE_6__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_9__ zeroinitializer]]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scaler_context*, %struct.drm_format_info*)* @scaler_set_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scaler_set_csc(%struct.scaler_context* %0, %struct.drm_format_info* %1) #0 {
  %3 = alloca %struct.scaler_context*, align 8
  %4 = alloca %struct.drm_format_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  store %struct.scaler_context* %0, %struct.scaler_context** %3, align 8
  store %struct.drm_format_info* %1, %struct.drm_format_info** %4, align 8
  %9 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %10 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %13 [
    i32 133, label %12
    i32 130, label %12
    i32 136, label %12
    i32 129, label %12
    i32 135, label %12
    i32 128, label %12
    i32 134, label %12
    i32 131, label %12
    i32 132, label %12
  ]

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %7, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %13, %12
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %38, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x [3 x [3 x %struct.TYPE_9__]]], [2 x [3 x [3 x %struct.TYPE_9__]]]* @scaler_set_csc.csc_mtx, i64 0, i64 %24
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x [3 x %struct.TYPE_9__]], [3 x [3 x %struct.TYPE_9__]]* %25, i64 0, i64 %27
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %28, i64 0, i64 %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @SCALER_CSC_COEF(i32 %32, i32 %33)
  %35 = bitcast %struct.TYPE_9__* %8 to i8*
  %36 = bitcast %struct.TYPE_9__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 4 %36, i64 36, i1 false)
  %37 = call i32 @scaler_write(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %8, i32 %34)
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %19

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %15

45:                                               ; preds = %15
  ret void
}

declare dso_local i32 @scaler_write(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32) #1

declare dso_local i32 @SCALER_CSC_COEF(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
