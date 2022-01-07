; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_release_lp_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_release_lp_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_free_mr = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.hns_roce_qp** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hns_roce_qp = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.hns_roce_free_mr }

@HNS_ROCE_V1_RESV_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Destroy qp %d for mr free failed(%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*)* @hns_roce_v1_release_lp_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v1_release_lp_qp(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hns_roce_free_mr*, align 8
  %5 = alloca %struct.hns_roce_v1_priv*, align 8
  %6 = alloca %struct.hns_roce_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %16, %struct.hns_roce_v1_priv** %5, align 8
  %17 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %18 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %17, i32 0, i32 0
  store %struct.hns_roce_free_mr* %18, %struct.hns_roce_free_mr** %4, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %46, %1
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @HNS_ROCE_V1_RESV_QP, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %4, align 8
  %25 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %24, i32 0, i32 2
  %26 = load %struct.hns_roce_qp**, %struct.hns_roce_qp*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.hns_roce_qp*, %struct.hns_roce_qp** %26, i64 %28
  %30 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %29, align 8
  store %struct.hns_roce_qp* %30, %struct.hns_roce_qp** %6, align 8
  %31 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %6, align 8
  %32 = icmp ne %struct.hns_roce_qp* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %46

34:                                               ; preds = %23
  %35 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %6, align 8
  %36 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %35, i32 0, i32 0
  %37 = call i32 @hns_roce_v1_destroy_qp(i32* %36, i32* null)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %19

49:                                               ; preds = %19
  %50 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %4, align 8
  %51 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @hns_roce_ib_destroy_cq(i32* %53, i32* null)
  %55 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %4, align 8
  %56 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @kfree(i32* %58)
  %60 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %4, align 8
  %61 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @hns_roce_dealloc_pd(i32* %63, i32* null)
  %65 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %4, align 8
  %66 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @kfree(i32* %68)
  ret void
}

declare dso_local i32 @hns_roce_v1_destroy_qp(i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @hns_roce_ib_destroy_cq(i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @hns_roce_dealloc_pd(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
