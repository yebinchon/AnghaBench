; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_alloc_memfree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_alloc_memfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_qp = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@MTHCA_DB_TYPE_RQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTHCA_DB_TYPE_SQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.mthca_qp*)* @mthca_alloc_memfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_alloc_memfree(%struct.mthca_dev* %0, %struct.mthca_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.mthca_qp*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.mthca_qp* %1, %struct.mthca_qp** %5, align 8
  %6 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %7 = call i64 @mthca_is_memfree(%struct.mthca_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %2
  %10 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %11 = load i32, i32* @MTHCA_DB_TYPE_RQ, align 4
  %12 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %13 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %16 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = call i8* @mthca_alloc_db(%struct.mthca_dev* %10, i32 %11, i32 %14, i32* %17)
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %21 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %24 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %9
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %62

31:                                               ; preds = %9
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %33 = load i32, i32* @MTHCA_DB_TYPE_SQ, align 4
  %34 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %35 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %38 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = call i8* @mthca_alloc_db(%struct.mthca_dev* %32, i32 %33, i32 %36, i32* %39)
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %43 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %46 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %31
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %52 = load i32, i32* @MTHCA_DB_TYPE_RQ, align 4
  %53 = load %struct.mthca_qp*, %struct.mthca_qp** %5, align 8
  %54 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @mthca_free_db(%struct.mthca_dev* %51, i32 %52, i64 %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %31
  br label %61

61:                                               ; preds = %60, %2
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %50, %28
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i8* @mthca_alloc_db(%struct.mthca_dev*, i32, i32, i32*) #1

declare dso_local i32 @mthca_free_db(%struct.mthca_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
