; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_set_common_qp_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_set_common_qp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32, %struct.qedr_dev*, %struct.qedr_pd*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qedr_pd = type { i32 }
%struct.ib_qp_init_attr = type { i64, i64, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@QED_ROCE_QP_STATE_RESET = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i64 0, align 8
@QEDR_MSG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RQ params:\09rq_max_sges = %d, rq_cq_id = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"QP params:\09pd = %d, qp_type = %d, max_inline_data = %d, state = %d, signaled = %d, use_srq=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"SQ params:\09sq_max_sges = %d, sq_cq_id = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, %struct.qedr_qp*, %struct.qedr_pd*, %struct.ib_qp_init_attr*)* @qedr_set_common_qp_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_set_common_qp_params(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.qedr_pd* %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.qedr_dev*, align 8
  %6 = alloca %struct.qedr_qp*, align 8
  %7 = alloca %struct.qedr_pd*, align 8
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %5, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %6, align 8
  store %struct.qedr_pd* %2, %struct.qedr_pd** %7, align 8
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %9 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %10 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %9, i32 0, i32 12
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %13 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %12, i32 0, i32 11
  %14 = call i32 @atomic_set(i32* %13, i32 1)
  %15 = load %struct.qedr_pd*, %struct.qedr_pd** %7, align 8
  %16 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %17 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %16, i32 0, i32 10
  store %struct.qedr_pd* %15, %struct.qedr_pd** %17, align 8
  %18 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %19 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %22 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %24 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %28 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %30 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %34 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @QED_ROCE_QP_STATE_RESET, align 4
  %37 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %38 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %40 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IB_SIGNAL_ALL_WR, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %47 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %49 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @get_qedr_cq(i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_10__*
  %53 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %54 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %53, i32 0, i32 1
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %54, align 8
  %55 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %56 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %57 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %56, i32 0, i32 9
  store %struct.qedr_dev* %55, %struct.qedr_dev** %57, align 8
  %58 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %59 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %4
  %63 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %64 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @get_qedr_srq(i64 %65)
  %67 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %68 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 4
  br label %96

69:                                               ; preds = %4
  %70 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %71 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @get_qedr_cq(i32 %72)
  %74 = bitcast i8* %73 to %struct.TYPE_8__*
  %75 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %76 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %75, i32 0, i32 6
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %76, align 8
  %77 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %78 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %82 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %85 = load i32, i32* @QEDR_MSG_QP, align 4
  %86 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %87 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %91 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %90, i32 0, i32 6
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.qedr_dev*, i32, i8*, i32, i32, ...) @DP_DEBUG(%struct.qedr_dev* %84, i32 %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %94)
  br label %96

96:                                               ; preds = %69, %62
  %97 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %98 = load i32, i32* @QEDR_MSG_QP, align 4
  %99 = load %struct.qedr_pd*, %struct.qedr_pd** %7, align 8
  %100 = getelementptr inbounds %struct.qedr_pd, %struct.qedr_pd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %103 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %106 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %109 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %112 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %115 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  %120 = call i32 (%struct.qedr_dev*, i32, i8*, i32, i32, ...) @DP_DEBUG(%struct.qedr_dev* %97, i32 %98, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104, i32 %107, i32 %110, i32 %113, i32 %119)
  %121 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %122 = load i32, i32* @QEDR_MSG_QP, align 4
  %123 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %124 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %128 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (%struct.qedr_dev*, i32, i8*, i32, i32, ...) @DP_DEBUG(%struct.qedr_dev* %121, i32 %122, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %131)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @get_qedr_cq(i32) #1

declare dso_local i32 @get_qedr_srq(i64) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
