; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h_tcm_reserve_1d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h_tcm_reserve_1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm = type { i32, {}*, i64 }
%struct.tcm_area = type { i32, %struct.tcm* }

@ENODEV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcm*, i32, %struct.tcm_area*)* @tcm_reserve_1d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcm_reserve_1d(%struct.tcm* %0, i32 %1, %struct.tcm_area* %2) #0 {
  %4 = alloca %struct.tcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcm_area*, align 8
  %7 = alloca i64, align 8
  store %struct.tcm* %0, %struct.tcm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tcm_area* %2, %struct.tcm_area** %6, align 8
  %8 = load %struct.tcm*, %struct.tcm** %4, align 8
  %9 = icmp eq %struct.tcm* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i64, i64* @ENODEV, align 8
  %12 = sub nsw i64 0, %11
  br label %41

13:                                               ; preds = %3
  %14 = load %struct.tcm_area*, %struct.tcm_area** %6, align 8
  %15 = icmp eq %struct.tcm_area* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %13
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub nsw i64 0, %20
  br label %39

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.tcm*, %struct.tcm** %4, align 8
  %25 = getelementptr inbounds %struct.tcm, %struct.tcm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tcm*, %struct.tcm** %4, align 8
  %28 = getelementptr inbounds %struct.tcm, %struct.tcm* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = mul nsw i32 %26, %30
  %32 = icmp sgt i32 %23, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i64, i64* @ENOMEM, align 8
  %35 = sub nsw i64 0, %34
  br label %37

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i64 [ %35, %33 ], [ 0, %36 ]
  br label %39

39:                                               ; preds = %37, %19
  %40 = phi i64 [ %21, %19 ], [ %38, %37 ]
  br label %41

41:                                               ; preds = %39, %10
  %42 = phi i64 [ %12, %10 ], [ %40, %39 ]
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %41
  %46 = load %struct.tcm_area*, %struct.tcm_area** %6, align 8
  %47 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.tcm*, %struct.tcm** %4, align 8
  %49 = getelementptr inbounds %struct.tcm, %struct.tcm* %48, i32 0, i32 1
  %50 = bitcast {}** %49 to i64 (%struct.tcm*, i32, %struct.tcm_area*)**
  %51 = load i64 (%struct.tcm*, i32, %struct.tcm_area*)*, i64 (%struct.tcm*, i32, %struct.tcm_area*)** %50, align 8
  %52 = load %struct.tcm*, %struct.tcm** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.tcm_area*, %struct.tcm_area** %6, align 8
  %55 = call i64 %51(%struct.tcm* %52, i32 %53, %struct.tcm_area* %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %61

59:                                               ; preds = %45
  %60 = load %struct.tcm*, %struct.tcm** %4, align 8
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi %struct.tcm* [ null, %58 ], [ %60, %59 ]
  %63 = load %struct.tcm_area*, %struct.tcm_area** %6, align 8
  %64 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %63, i32 0, i32 1
  store %struct.tcm* %62, %struct.tcm** %64, align 8
  br label %65

65:                                               ; preds = %61, %41
  %66 = load i64, i64* %7, align 8
  ret i64 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
