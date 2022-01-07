; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_chk_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_chk_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ib_qp_cap = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"invalid send wr = %d > %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid send sge = %d > %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid recv wr = %d > %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid recv sge = %d > %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"invalid max inline data = %d > %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_dev*, %struct.ib_qp_cap*, i32)* @rxe_qp_chk_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_qp_chk_cap(%struct.rxe_dev* %0, %struct.ib_qp_cap* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_dev*, align 8
  %6 = alloca %struct.ib_qp_cap*, align 8
  %7 = alloca i32, align 4
  store %struct.rxe_dev* %0, %struct.rxe_dev** %5, align 8
  store %struct.ib_qp_cap* %1, %struct.ib_qp_cap** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %9 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %12 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %10, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %18 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %21 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %23)
  br label %100

25:                                               ; preds = %3
  %26 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %27 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %30 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %36 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %39 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %41)
  br label %100

43:                                               ; preds = %25
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %83, label %46

46:                                               ; preds = %43
  %47 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %48 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %51 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %49, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %57 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %60 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %62)
  br label %100

64:                                               ; preds = %46
  %65 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %66 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %69 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %67, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %75 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %78 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %76, i64 %80)
  br label %100

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %43
  %84 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %85 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %88 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %93 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %96 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %94, i64 %97)
  br label %100

99:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %103

100:                                              ; preds = %91, %73, %55, %34, %16
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %99
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @pr_warn(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
