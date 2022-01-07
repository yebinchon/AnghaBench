; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_alloc_rq_inline_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_alloc_rq_inline_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_qp = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.hns_roce_rinl_wqe* }
%struct.hns_roce_rinl_wqe = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_qp*, %struct.ib_qp_init_attr*)* @alloc_rq_inline_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_rq_inline_buf(%struct.hns_roce_qp* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_qp*, align 8
  %5 = alloca %struct.ib_qp_init_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_rinl_wqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hns_roce_qp* %0, %struct.hns_roce_qp** %4, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %5, align 8
  %10 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %11 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %15 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kcalloc(i32 %18, i32 8, i32 %19)
  %21 = bitcast i8* %20 to %struct.hns_roce_rinl_wqe*
  store %struct.hns_roce_rinl_wqe* %21, %struct.hns_roce_rinl_wqe** %7, align 8
  %22 = load %struct.hns_roce_rinl_wqe*, %struct.hns_roce_rinl_wqe** %7, align 8
  %23 = icmp ne %struct.hns_roce_rinl_wqe* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %78

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kcalloc(i32 %26, i32 %30, i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.hns_roce_rinl_wqe*, %struct.hns_roce_rinl_wqe** %7, align 8
  %35 = getelementptr inbounds %struct.hns_roce_rinl_wqe, %struct.hns_roce_rinl_wqe* %34, i64 0
  %36 = getelementptr inbounds %struct.hns_roce_rinl_wqe, %struct.hns_roce_rinl_wqe* %35, i32 0, i32 0
  store i32* %33, i32** %36, align 8
  %37 = load %struct.hns_roce_rinl_wqe*, %struct.hns_roce_rinl_wqe** %7, align 8
  %38 = getelementptr inbounds %struct.hns_roce_rinl_wqe, %struct.hns_roce_rinl_wqe* %37, i64 0
  %39 = getelementptr inbounds %struct.hns_roce_rinl_wqe, %struct.hns_roce_rinl_wqe* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %25
  br label %75

43:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.hns_roce_rinl_wqe*, %struct.hns_roce_rinl_wqe** %7, align 8
  %50 = getelementptr inbounds %struct.hns_roce_rinl_wqe, %struct.hns_roce_rinl_wqe* %49, i64 0
  %51 = getelementptr inbounds %struct.hns_roce_rinl_wqe, %struct.hns_roce_rinl_wqe* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load %struct.hns_roce_rinl_wqe*, %struct.hns_roce_rinl_wqe** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hns_roce_rinl_wqe, %struct.hns_roce_rinl_wqe* %58, i64 %60
  %62 = getelementptr inbounds %struct.hns_roce_rinl_wqe, %struct.hns_roce_rinl_wqe* %61, i32 0, i32 0
  store i32* %57, i32** %62, align 8
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load %struct.hns_roce_rinl_wqe*, %struct.hns_roce_rinl_wqe** %7, align 8
  %68 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %69 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store %struct.hns_roce_rinl_wqe* %67, %struct.hns_roce_rinl_wqe** %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %73 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  store i32 0, i32* %3, align 4
  br label %81

75:                                               ; preds = %42
  %76 = load %struct.hns_roce_rinl_wqe*, %struct.hns_roce_rinl_wqe** %7, align 8
  %77 = call i32 @kfree(%struct.hns_roce_rinl_wqe* %76)
  br label %78

78:                                               ; preds = %75, %24
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %66
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.hns_roce_rinl_wqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
