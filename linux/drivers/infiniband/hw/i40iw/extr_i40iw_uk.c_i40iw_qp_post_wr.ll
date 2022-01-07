; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_qp_post_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_qp_post_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@I40IW_QP_DBSA_HW_SQ_TAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_qp_post_wr(%struct.i40iw_qp_uk* %0) #0 {
  %2 = alloca %struct.i40iw_qp_uk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %2, align 8
  %6 = call i32 (...) @mb()
  %7 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %8 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @get_64bit_val(i32 %9, i32 0, i32* %3)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @I40IW_QP_DBSA_HW_SQ_TAIL, align 4
  %13 = call i64 @RS_64(i32 %11, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %15 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @I40IW_RING_GETCURRENT_HEAD(i64 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %25 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %23, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %32 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %30, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %42 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %45 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @writel(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %40, %36, %29
  br label %77

49:                                               ; preds = %22
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %52 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %59 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %57, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63, %56
  %68 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %69 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %72 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @writel(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %67, %63
  br label %76

76:                                               ; preds = %75, %49
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %1
  %79 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %80 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %2, align 8
  %84 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @get_64bit_val(i32, i32, i32*) #1

declare dso_local i64 @RS_64(i32, i32) #1

declare dso_local i64 @I40IW_RING_GETCURRENT_HEAD(i64) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
