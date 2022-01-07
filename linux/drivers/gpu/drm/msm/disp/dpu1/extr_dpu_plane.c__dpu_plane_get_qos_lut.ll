; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_get_qos_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_get_qos_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_qos_lut_tbl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_qos_lut_tbl*, i64)* @_dpu_plane_get_qos_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_plane_get_qos_lut(%struct.dpu_qos_lut_tbl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_qos_lut_tbl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dpu_qos_lut_tbl* %0, %struct.dpu_qos_lut_tbl** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.dpu_qos_lut_tbl*, %struct.dpu_qos_lut_tbl** %4, align 8
  %8 = icmp ne %struct.dpu_qos_lut_tbl* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.dpu_qos_lut_tbl*, %struct.dpu_qos_lut_tbl** %4, align 8
  %11 = getelementptr inbounds %struct.dpu_qos_lut_tbl, %struct.dpu_qos_lut_tbl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.dpu_qos_lut_tbl*, %struct.dpu_qos_lut_tbl** %4, align 8
  %16 = getelementptr inbounds %struct.dpu_qos_lut_tbl, %struct.dpu_qos_lut_tbl* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %9, %2
  store i32 0, i32* %3, align 4
  br label %73

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.dpu_qos_lut_tbl*, %struct.dpu_qos_lut_tbl** %4, align 8
  %24 = getelementptr inbounds %struct.dpu_qos_lut_tbl, %struct.dpu_qos_lut_tbl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.dpu_qos_lut_tbl*, %struct.dpu_qos_lut_tbl** %4, align 8
  %30 = getelementptr inbounds %struct.dpu_qos_lut_tbl, %struct.dpu_qos_lut_tbl* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %28, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load %struct.dpu_qos_lut_tbl*, %struct.dpu_qos_lut_tbl** %4, align 8
  %40 = getelementptr inbounds %struct.dpu_qos_lut_tbl, %struct.dpu_qos_lut_tbl* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %3, align 4
  br label %73

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %21

51:                                               ; preds = %21
  %52 = load %struct.dpu_qos_lut_tbl*, %struct.dpu_qos_lut_tbl** %4, align 8
  %53 = getelementptr inbounds %struct.dpu_qos_lut_tbl, %struct.dpu_qos_lut_tbl* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %51
  %63 = load %struct.dpu_qos_lut_tbl*, %struct.dpu_qos_lut_tbl** %4, align 8
  %64 = getelementptr inbounds %struct.dpu_qos_lut_tbl, %struct.dpu_qos_lut_tbl* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %62, %38, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
