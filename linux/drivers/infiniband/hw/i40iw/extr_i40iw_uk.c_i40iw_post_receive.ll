; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_post_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_post_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i64, i32, i32* }
%struct.i40iw_post_rq_info = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@I40IW_ERR_INVALID_FRAG_COUNT = common dso_local global i32 0, align 4
@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@I40IWQPSQ_ADDFRAGCNT = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_qp_uk*, %struct.i40iw_post_rq_info*)* @i40iw_post_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_post_receive(%struct.i40iw_qp_uk* %0, %struct.i40iw_post_rq_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_qp_uk*, align 8
  %5 = alloca %struct.i40iw_post_rq_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %4, align 8
  store %struct.i40iw_post_rq_info* %1, %struct.i40iw_post_rq_info** %5, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %13 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.i40iw_post_rq_info*, %struct.i40iw_post_rq_info** %5, align 8
  %16 = getelementptr inbounds %struct.i40iw_post_rq_info, %struct.i40iw_post_rq_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @I40IW_ERR_INVALID_FRAG_COUNT, align 4
  store i32 %20, i32* %3, align 4
  br label %110

21:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.i40iw_post_rq_info*, %struct.i40iw_post_rq_info** %5, align 8
  %25 = getelementptr inbounds %struct.i40iw_post_rq_info, %struct.i40iw_post_rq_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load %struct.i40iw_post_rq_info*, %struct.i40iw_post_rq_info** %5, align 8
  %30 = getelementptr inbounds %struct.i40iw_post_rq_info, %struct.i40iw_post_rq_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %28
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %22

41:                                               ; preds = %22
  %42 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %43 = call i32* @i40iw_qp_get_next_recv_wqe(%struct.i40iw_qp_uk* %42, i64* %9)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  store i32 %47, i32* %3, align 4
  br label %110

48:                                               ; preds = %41
  %49 = load %struct.i40iw_post_rq_info*, %struct.i40iw_post_rq_info** %5, align 8
  %50 = getelementptr inbounds %struct.i40iw_post_rq_info, %struct.i40iw_post_rq_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %53 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @set_64bit_val(i32* %57, i32 16, i32 0)
  %59 = load %struct.i40iw_post_rq_info*, %struct.i40iw_post_rq_info** %5, align 8
  %60 = getelementptr inbounds %struct.i40iw_post_rq_info, %struct.i40iw_post_rq_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ugt i64 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.i40iw_post_rq_info*, %struct.i40iw_post_rq_info** %5, align 8
  %65 = getelementptr inbounds %struct.i40iw_post_rq_info, %struct.i40iw_post_rq_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %66, 1
  br label %69

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68, %63
  %70 = phi i64 [ %67, %63 ], [ 0, %68 ]
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @I40IWQPSQ_ADDFRAGCNT, align 4
  %73 = call i32 @LS_64(i32 %71, i32 %72)
  %74 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %75 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %78 = call i32 @LS_64(i32 %76, i32 %77)
  %79 = or i32 %73, %78
  store i32 %79, i32* %7, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.i40iw_post_rq_info*, %struct.i40iw_post_rq_info** %5, align 8
  %82 = getelementptr inbounds %struct.i40iw_post_rq_info, %struct.i40iw_post_rq_info* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = call i32 @i40iw_set_fragment(i32* %80, i64 0, %struct.TYPE_2__* %83)
  store i64 1, i64* %10, align 8
  store i64 32, i64* %11, align 8
  br label %85

85:                                               ; preds = %102, %69
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.i40iw_post_rq_info*, %struct.i40iw_post_rq_info** %5, align 8
  %88 = getelementptr inbounds %struct.i40iw_post_rq_info, %struct.i40iw_post_rq_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load i32*, i32** %6, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.i40iw_post_rq_info*, %struct.i40iw_post_rq_info** %5, align 8
  %95 = getelementptr inbounds %struct.i40iw_post_rq_info, %struct.i40iw_post_rq_info* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = call i32 @i40iw_set_fragment(i32* %92, i64 %93, %struct.TYPE_2__* %98)
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %100, 16
  store i64 %101, i64* %11, align 8
  br label %102

102:                                              ; preds = %91
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %10, align 8
  br label %85

105:                                              ; preds = %85
  %106 = call i32 (...) @wmb()
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @set_64bit_val(i32* %107, i32 24, i32 %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %105, %46, %19
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32* @i40iw_qp_get_next_recv_wqe(%struct.i40iw_qp_uk*, i64*) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_set_fragment(i32*, i64, %struct.TYPE_2__*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
