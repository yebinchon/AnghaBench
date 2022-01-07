; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ceq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ceq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_ceq = type { i32, i64, i64, i64, i32, %struct.TYPE_6__*, i32, i32, i32, i64, i32*, i32, i32, %struct.i40iw_ceqe* }
%struct.TYPE_6__ = type { %struct.i40iw_sc_ceq**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.i40iw_ceqe = type { i32 }
%struct.i40iw_ceq_init_info = type { i64, i64, i64, i32, i32, i32*, i32, i64, i32, %struct.TYPE_6__*, i64 }

@I40IW_MIN_CEQ_ENTRIES = common dso_local global i64 0, align 8
@I40IW_MAX_CEQ_ENTRIES = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@I40IW_MAX_CEQID = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_CEQ_ID = common dso_local global i32 0, align 4
@I40IW_HMC_IW_PBLE = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_PBLE_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_ceq*, %struct.i40iw_ceq_init_info*)* @i40iw_sc_ceq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_ceq_init(%struct.i40iw_sc_ceq* %0, %struct.i40iw_ceq_init_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_ceq*, align 8
  %5 = alloca %struct.i40iw_ceq_init_info*, align 8
  %6 = alloca i64, align 8
  store %struct.i40iw_sc_ceq* %0, %struct.i40iw_sc_ceq** %4, align 8
  store %struct.i40iw_ceq_init_info* %1, %struct.i40iw_ceq_init_info** %5, align 8
  %7 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %8 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @I40IW_MIN_CEQ_ENTRIES, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %14 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @I40IW_MAX_CEQ_ENTRIES, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @I40IW_ERR_INVALID_SIZE, align 4
  store i32 %19, i32* %3, align 4
  br label %154

20:                                               ; preds = %12
  %21 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %22 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @I40IW_MAX_CEQID, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @I40IW_ERR_INVALID_CEQ_ID, align 4
  store i32 %27, i32* %3, align 4
  br label %154

28:                                               ; preds = %20
  %29 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %30 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %29, i32 0, i32 9
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* @I40IW_HMC_IW_PBLE, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  %40 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %41 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %28
  %45 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %46 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @I40IW_ERR_INVALID_PBLE_INDEX, align 4
  store i32 %51, i32* %3, align 4
  br label %154

52:                                               ; preds = %44, %28
  %53 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %54 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %53, i32 0, i32 0
  store i32 96, i32* %54, align 8
  %55 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %56 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %55, i32 0, i32 10
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.i40iw_ceqe*
  %59 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %60 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %59, i32 0, i32 13
  store %struct.i40iw_ceqe* %58, %struct.i40iw_ceqe** %60, align 8
  %61 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %62 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %65 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %67 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %66, i32 0, i32 9
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %70 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %69, i32 0, i32 5
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %70, align 8
  %71 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %72 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %75 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %77 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %80 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %79, i32 0, i32 12
  store i32 %78, i32* %80, align 4
  %81 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %82 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %85 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %84, i32 0, i32 9
  store i64 %83, i64* %85, align 8
  %86 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %87 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %52
  %91 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %92 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  br label %95

94:                                               ; preds = %52
  br label %95

95:                                               ; preds = %94, %90
  %96 = phi i32 [ %93, %90 ], [ 0, %94 ]
  %97 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %98 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %97, i32 0, i32 11
  store i32 %96, i32* %98, align 8
  %99 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %100 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %99, i32 0, i32 9
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %105 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  br label %108

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi i64 [ %106, %103 ], [ 0, %107 ]
  %110 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %111 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  %112 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %113 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %112, i32 0, i32 9
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %118 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  br label %121

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %116
  %122 = phi i32* [ %119, %116 ], [ null, %120 ]
  %123 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %124 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %123, i32 0, i32 10
  store i32* %122, i32** %124, align 8
  %125 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %126 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %129 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 8
  %130 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %131 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %134 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 4
  %135 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %136 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %135, i32 0, i32 4
  store i32 1, i32* %136, align 8
  %137 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %138 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %141 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @I40IW_RING_INIT(i32 %139, i64 %142)
  %144 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %145 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %4, align 8
  %146 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %145, i32 0, i32 5
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load %struct.i40iw_sc_ceq**, %struct.i40iw_sc_ceq*** %148, align 8
  %150 = load %struct.i40iw_ceq_init_info*, %struct.i40iw_ceq_init_info** %5, align 8
  %151 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %149, i64 %152
  store %struct.i40iw_sc_ceq* %144, %struct.i40iw_sc_ceq** %153, align 8
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %121, %50, %26, %18
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @I40IW_RING_INIT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
