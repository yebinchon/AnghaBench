; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ccq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ccq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cq = type { i64, i64, %struct.TYPE_7__, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32*, i32, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.i40iw_sc_cq*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.i40iw_ccq_init_info = type { i64, i64, i64, %struct.TYPE_8__*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@I40IW_MIN_CQ_SIZE = common dso_local global i64 0, align 8
@I40IW_MAX_CQ_SIZE = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@I40IW_MAX_CEQID = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_CEQ_ID = common dso_local global i32 0, align 4
@I40IW_HMC_IW_PBLE = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_PBLE_INDEX = common dso_local global i32 0, align 4
@I40IW_CQ_TYPE_CQP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cq*, %struct.i40iw_ccq_init_info*)* @i40iw_sc_ccq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_ccq_init(%struct.i40iw_sc_cq* %0, %struct.i40iw_ccq_init_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_cq*, align 8
  %5 = alloca %struct.i40iw_ccq_init_info*, align 8
  %6 = alloca i64, align 8
  store %struct.i40iw_sc_cq* %0, %struct.i40iw_sc_cq** %4, align 8
  store %struct.i40iw_ccq_init_info* %1, %struct.i40iw_ccq_init_info** %5, align 8
  %7 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %8 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @I40IW_MIN_CQ_SIZE, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %14 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @I40IW_MAX_CQ_SIZE, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @I40IW_ERR_INVALID_SIZE, align 4
  store i32 %19, i32* %3, align 4
  br label %167

20:                                               ; preds = %12
  %21 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %22 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @I40IW_MAX_CEQID, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @I40IW_ERR_INVALID_CEQ_ID, align 4
  store i32 %27, i32* %3, align 4
  br label %167

28:                                               ; preds = %20
  %29 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %30 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %29, i32 0, i32 3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* @I40IW_HMC_IW_PBLE, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  %40 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %41 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %28
  %45 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %46 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @I40IW_ERR_INVALID_PBLE_INDEX, align 4
  store i32 %51, i32* %3, align 4
  br label %167

52:                                               ; preds = %44, %28
  %53 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %54 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %53, i32 0, i32 16
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %57 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %56, i32 0, i32 14
  store i32 %55, i32* %57, align 8
  %58 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %59 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %58, i32 0, i32 15
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %62 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 7
  store i32 %60, i32* %63, align 8
  %64 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %65 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %68 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %67, i32 0, i32 13
  store i32 %66, i32* %68, align 4
  %69 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %70 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %73 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 6
  store i32 %71, i32* %74, align 4
  %75 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %76 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %79 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %78, i32 0, i32 12
  store i32 %77, i32* %79, align 8
  %80 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %81 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %80, i32 0, i32 3
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %84 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %83, i32 0, i32 11
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %84, align 8
  %85 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %86 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %89 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %91 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %94 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load i32, i32* @I40IW_CQ_TYPE_CQP, align 4
  %97 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %98 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %97, i32 0, i32 10
  store i32 %96, i32* %98, align 4
  %99 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %100 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %103 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 8
  %104 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %105 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %109 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @I40IW_RING_INIT(i32 %107, i64 %110)
  %112 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %113 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  store i64 0, i64* %114, align 8
  %115 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %116 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %119 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 4
  %120 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %121 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %124 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %123, i32 0, i32 7
  store i32 %122, i32* %124, align 8
  %125 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %126 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %129 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %131 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %134 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 8
  %136 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %137 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %140 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 8
  %141 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %142 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %145 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %144, i32 0, i32 4
  store i64 %143, i64* %145, align 8
  %146 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %147 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %150 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %152 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %155 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %157 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  store i32 1, i32* %158, align 8
  %159 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %160 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  store i32* null, i32** %161, align 8
  %162 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %163 = load %struct.i40iw_ccq_init_info*, %struct.i40iw_ccq_init_info** %5, align 8
  %164 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %163, i32 0, i32 3
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store %struct.i40iw_sc_cq* %162, %struct.i40iw_sc_cq** %166, align 8
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %52, %50, %26, %18
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @I40IW_RING_INIT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
