; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_flush_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_flush_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_qp = type { %struct.TYPE_3__, %struct.t4_wq }
%struct.TYPE_3__ = type { i32 }
%struct.t4_wq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.t4_swsqe*, %struct.t4_swsqe* }
%struct.t4_swsqe = type { i32 }
%struct.c4iw_cq = type { %struct.t4_cq }
%struct.t4_cq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_flush_sq(%struct.c4iw_qp* %0) #0 {
  %2 = alloca %struct.c4iw_qp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.t4_wq*, align 8
  %5 = alloca %struct.c4iw_cq*, align 8
  %6 = alloca %struct.t4_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.t4_swsqe*, align 8
  store %struct.c4iw_qp* %0, %struct.c4iw_qp** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.c4iw_qp*, %struct.c4iw_qp** %2, align 8
  %10 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %9, i32 0, i32 1
  store %struct.t4_wq* %10, %struct.t4_wq** %4, align 8
  %11 = load %struct.c4iw_qp*, %struct.c4iw_qp** %2, align 8
  %12 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.c4iw_cq* @to_c4iw_cq(i32 %14)
  store %struct.c4iw_cq* %15, %struct.c4iw_cq** %5, align 8
  %16 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %17 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %16, i32 0, i32 0
  store %struct.t4_cq* %17, %struct.t4_cq** %6, align 8
  %18 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %19 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %25 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %29 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  br label %31

31:                                               ; preds = %23, %1
  %32 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %33 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %77, %31
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %39 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %37, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %36
  %44 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %45 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load %struct.t4_swsqe*, %struct.t4_swsqe** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %47, i64 %49
  store %struct.t4_swsqe* %50, %struct.t4_swsqe** %8, align 8
  %51 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %52 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %54 = load %struct.t4_cq*, %struct.t4_cq** %6, align 8
  %55 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %56 = call i32 @insert_sq_cqe(%struct.t4_wq* %53, %struct.t4_cq* %54, %struct.t4_swsqe* %55)
  %57 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %58 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load %struct.t4_swsqe*, %struct.t4_swsqe** %59, align 8
  %61 = load %struct.t4_swsqe*, %struct.t4_swsqe** %8, align 8
  %62 = icmp eq %struct.t4_swsqe* %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %43
  %64 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %65 = call i32 @advance_oldest_read(%struct.t4_wq* %64)
  br label %66

66:                                               ; preds = %63, %43
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  %71 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %72 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %66
  br label %36

78:                                               ; preds = %36
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %81 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, %79
  store i32 %84, i32* %82, align 8
  %85 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %86 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %90 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %88, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %78
  %95 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %96 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %100 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, %98
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %94, %78
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.c4iw_cq* @to_c4iw_cq(i32) #1

declare dso_local i32 @insert_sq_cqe(%struct.t4_wq*, %struct.t4_cq*, %struct.t4_swsqe*) #1

declare dso_local i32 @advance_oldest_read(%struct.t4_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
