; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h_tcm_reserve_2d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h_tcm_reserve_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm = type { i64, i64, {}* }
%struct.tcm_area = type { i32, %struct.tcm* }

@ENODEV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcm*, i64, i64, i64, i32, i64, %struct.tcm_area*)* @tcm_reserve_2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcm_reserve_2d(%struct.tcm* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5, %struct.tcm_area* %6) #0 {
  %8 = alloca %struct.tcm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.tcm_area*, align 8
  %15 = alloca i64, align 8
  store %struct.tcm* %0, %struct.tcm** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.tcm_area* %6, %struct.tcm_area** %14, align 8
  %16 = load %struct.tcm*, %struct.tcm** %8, align 8
  %17 = icmp eq %struct.tcm* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %7
  %19 = load i64, i64* @ENODEV, align 8
  %20 = sub nsw i64 0, %19
  br label %59

21:                                               ; preds = %7
  %22 = load %struct.tcm_area*, %struct.tcm_area** %14, align 8
  %23 = icmp eq %struct.tcm_area* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = sub nsw i64 %32, 1
  %34 = and i64 %31, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %27, %24, %21
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub nsw i64 0, %37
  br label %57

39:                                               ; preds = %30
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.tcm*, %struct.tcm** %8, align 8
  %42 = getelementptr inbounds %struct.tcm, %struct.tcm* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.tcm*, %struct.tcm** %8, align 8
  %48 = getelementptr inbounds %struct.tcm, %struct.tcm* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %39
  %52 = load i64, i64* @ENOMEM, align 8
  %53 = sub nsw i64 0, %52
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i64 [ %53, %51 ], [ 0, %54 ]
  br label %57

57:                                               ; preds = %55, %36
  %58 = phi i64 [ %38, %36 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %18
  %60 = phi i64 [ %20, %18 ], [ %58, %57 ]
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %59
  %64 = load %struct.tcm_area*, %struct.tcm_area** %14, align 8
  %65 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.tcm*, %struct.tcm** %8, align 8
  %67 = getelementptr inbounds %struct.tcm, %struct.tcm* %66, i32 0, i32 2
  %68 = bitcast {}** %67 to i64 (%struct.tcm*, i64, i64, i64, i32, i64, %struct.tcm_area*)**
  %69 = load i64 (%struct.tcm*, i64, i64, i64, i32, i64, %struct.tcm_area*)*, i64 (%struct.tcm*, i64, i64, i64, i32, i64, %struct.tcm_area*)** %68, align 8
  %70 = load %struct.tcm*, %struct.tcm** %8, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.tcm_area*, %struct.tcm_area** %14, align 8
  %77 = call i64 %69(%struct.tcm* %70, i64 %71, i64 %72, i64 %73, i32 %74, i64 %75, %struct.tcm_area* %76)
  store i64 %77, i64* %15, align 8
  %78 = load i64, i64* %15, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  br label %83

81:                                               ; preds = %63
  %82 = load %struct.tcm*, %struct.tcm** %8, align 8
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi %struct.tcm* [ null, %80 ], [ %82, %81 ]
  %85 = load %struct.tcm_area*, %struct.tcm_area** %14, align 8
  %86 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %85, i32 0, i32 1
  store %struct.tcm* %84, %struct.tcm** %86, align 8
  br label %87

87:                                               ; preds = %83, %59
  %88 = load i64, i64* %15, align 8
  ret i64 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
