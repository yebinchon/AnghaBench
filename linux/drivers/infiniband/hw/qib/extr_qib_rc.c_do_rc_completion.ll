; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_do_rc_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_do_rc_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.rvt_swqe = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.qib_ibport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@ib_qib_wc_opcode = common dso_local global i32* null, align 8
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@SEND_LAST = common dso_local global i32 0, align 4
@IB_QPS_SQD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rvt_swqe* (%struct.rvt_qp*, %struct.rvt_swqe*, %struct.qib_ibport*)* @do_rc_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rvt_swqe* @do_rc_completion(%struct.rvt_qp* %0, %struct.rvt_swqe* %1, %struct.qib_ibport* %2) #0 {
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca %struct.rvt_swqe*, align 8
  %6 = alloca %struct.qib_ibport*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store %struct.rvt_swqe* %1, %struct.rvt_swqe** %5, align 8
  store %struct.qib_ibport* %2, %struct.qib_ibport** %6, align 8
  %7 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %8 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @qib_cmp24(i32 %9, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %20 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @qib_cmp24(i32 %18, i32 %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %15, %3
  %25 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %26 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %27 = load i32*, i32** @ib_qib_wc_opcode, align 8
  %28 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %29 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IB_WC_SUCCESS, align 4
  %35 = call i32 @rvt_qp_complete_swqe(%struct.rvt_qp* %25, %struct.rvt_swqe* %26, i32 %33, i32 %34)
  br label %43

36:                                               ; preds = %15
  %37 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %38 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @this_cpu_inc(i32 %41)
  br label %43

43:                                               ; preds = %36, %24
  %44 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %45 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %48 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %50 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %51 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @update_last_psn(%struct.rvt_qp* %49, i32 %52)
  %54 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %55 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %58 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %102

61:                                               ; preds = %43
  %62 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %63 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %67 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %72 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %61
  %74 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %75 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %78 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %80 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %81 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %79, i64 %82)
  store %struct.rvt_swqe* %83, %struct.rvt_swqe** %5, align 8
  %84 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %85 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %88 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %73
  %92 = load i32, i32* @SEND_LAST, align 4
  %93 = call i32 @OP(i32 %92)
  %94 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %95 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %97 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %100 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %91, %73
  br label %137

102:                                              ; preds = %43
  %103 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %104 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %108 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %106, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %113 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %111, %102
  %115 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %116 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @IB_QPS_SQD, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %114
  %121 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %122 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %125 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %130 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %129, i32 0, i32 5
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %120, %114
  %132 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %133 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %134 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %132, i64 %135)
  store %struct.rvt_swqe* %136, %struct.rvt_swqe** %5, align 8
  br label %137

137:                                              ; preds = %131, %101
  %138 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  ret %struct.rvt_swqe* %138
}

declare dso_local i64 @qib_cmp24(i32, i32) #1

declare dso_local i32 @rvt_qp_complete_swqe(%struct.rvt_qp*, %struct.rvt_swqe*, i32, i32) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @update_last_psn(%struct.rvt_qp*, i32) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i32 @OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
