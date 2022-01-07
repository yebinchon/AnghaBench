; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c__ocrdma_pd_mgr_put_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c__ocrdma_pd_mgr_put_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, i64, i32)* @_ocrdma_pd_mgr_put_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ocrdma_pd_mgr_put_bitmap(%struct.ocrdma_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %14 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %20 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i64 [ %17, %12 ], [ %23, %18 ]
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %101

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %37 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %35, %40
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %44 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %42, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %101

52:                                               ; preds = %34
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %55 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__clear_bit(i64 %53, i32 %58)
  %60 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %61 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %52
  br label %100

67:                                               ; preds = %31
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %70 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %68, %73
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %77 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %75, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %67
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %101

85:                                               ; preds = %67
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %88 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @__clear_bit(i64 %86, i32 %91)
  %93 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %94 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %66
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %82, %49, %28
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @__clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
