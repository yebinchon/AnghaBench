; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_aeq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_aeq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_aeq = type { i32, i32, i64, i64, i64, i32, i32*, i32, i32, %struct.TYPE_6__*, %struct.i40iw_sc_aeqe* }
%struct.TYPE_6__ = type { %struct.i40iw_sc_aeq*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.i40iw_sc_aeqe = type { i32 }
%struct.i40iw_aeq_init_info = type { i64, i64, %struct.TYPE_6__*, i32, i32*, i64, i32, i64 }

@I40IW_MIN_AEQ_ENTRIES = common dso_local global i64 0, align 8
@I40IW_MAX_AEQ_ENTRIES = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@I40IW_HMC_IW_PBLE = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_PBLE_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_aeq*, %struct.i40iw_aeq_init_info*)* @i40iw_sc_aeq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_aeq_init(%struct.i40iw_sc_aeq* %0, %struct.i40iw_aeq_init_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_aeq*, align 8
  %5 = alloca %struct.i40iw_aeq_init_info*, align 8
  %6 = alloca i64, align 8
  store %struct.i40iw_sc_aeq* %0, %struct.i40iw_sc_aeq** %4, align 8
  store %struct.i40iw_aeq_init_info* %1, %struct.i40iw_aeq_init_info** %5, align 8
  %7 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %8 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @I40IW_MIN_AEQ_ENTRIES, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %14 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @I40IW_MAX_AEQ_ENTRIES, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @I40IW_ERR_INVALID_SIZE, align 4
  store i32 %19, i32* %3, align 4
  br label %131

20:                                               ; preds = %12
  %21 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %22 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i64, i64* @I40IW_HMC_IW_PBLE, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %33 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %20
  %37 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %38 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @I40IW_ERR_INVALID_PBLE_INDEX, align 4
  store i32 %43, i32* %3, align 4
  br label %131

44:                                               ; preds = %36, %20
  %45 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %46 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %45, i32 0, i32 0
  store i32 72, i32* %46, align 8
  %47 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %48 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %50 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.i40iw_sc_aeqe*
  %53 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %54 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %53, i32 0, i32 10
  store %struct.i40iw_sc_aeqe* %52, %struct.i40iw_sc_aeqe** %54, align 8
  %55 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %56 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %59 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %58, i32 0, i32 9
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %61 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %64 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %66 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %69 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %71 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %74 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @I40IW_RING_INIT(i32 %72, i64 %75)
  %77 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %78 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %79 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store %struct.i40iw_sc_aeq* %77, %struct.i40iw_sc_aeq** %81, align 8
  %82 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %83 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %86 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %88 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %44
  %92 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %93 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  br label %96

95:                                               ; preds = %44
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i32* [ %94, %91 ], [ null, %95 ]
  %98 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %99 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %98, i32 0, i32 6
  store i32* %97, i32** %99, align 8
  %100 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %101 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %106 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  br label %109

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108, %104
  %110 = phi i32 [ %107, %104 ], [ 0, %108 ]
  %111 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %112 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  %113 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %114 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %119 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  br label %122

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %117
  %123 = phi i64 [ %120, %117 ], [ 0, %121 ]
  %124 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %125 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  %126 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %4, align 8
  %127 = load %struct.i40iw_aeq_init_info*, %struct.i40iw_aeq_init_info** %5, align 8
  %128 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %127, i32 0, i32 2
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store %struct.i40iw_sc_aeq* %126, %struct.i40iw_sc_aeq** %130, align 8
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %122, %42, %18
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @I40IW_RING_INIT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
