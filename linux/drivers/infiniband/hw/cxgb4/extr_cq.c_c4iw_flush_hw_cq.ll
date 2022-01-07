; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_flush_hw_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_flush_hw_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_cq = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, %struct.t4_cqe*, i32 }
%struct.t4_cqe = type { i32 }
%struct.c4iw_qp = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.t4_swsqe*, %struct.TYPE_10__* }
%struct.t4_swsqe = type { i32, %struct.t4_cqe }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"cqid 0x%x\0A\00", align 1
@FW_RI_TERMINATE = common dso_local global i64 0, align 8
@FW_RI_READ_RESP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c4iw_flush_hw_cq(%struct.c4iw_cq* %0, %struct.c4iw_qp* %1) #0 {
  %3 = alloca %struct.c4iw_cq*, align 8
  %4 = alloca %struct.c4iw_qp*, align 8
  %5 = alloca %struct.t4_cqe*, align 8
  %6 = alloca %struct.t4_cqe*, align 8
  %7 = alloca %struct.t4_cqe, align 4
  %8 = alloca %struct.c4iw_qp*, align 8
  %9 = alloca %struct.t4_swsqe*, align 8
  %10 = alloca i32, align 4
  store %struct.c4iw_cq* %0, %struct.c4iw_cq** %3, align 8
  store %struct.c4iw_qp* %1, %struct.c4iw_qp** %4, align 8
  %11 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %12 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %17 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %16, i32 0, i32 0
  %18 = call i32 @t4_next_hw_cqe(%struct.TYPE_12__* %17, %struct.t4_cqe** %5)
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %156, %2
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %157

23:                                               ; preds = %19
  %24 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %25 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %28 = call i32 @CQE_QPID(%struct.t4_cqe* %27)
  %29 = call %struct.c4iw_qp* @get_qhp(i32 %26, i32 %28)
  store %struct.c4iw_qp* %29, %struct.c4iw_qp** %8, align 8
  %30 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %31 = icmp eq %struct.c4iw_qp* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %139

33:                                               ; preds = %23
  %34 = load %struct.c4iw_qp*, %struct.c4iw_qp** %4, align 8
  %35 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %36 = icmp ne %struct.c4iw_qp* %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %39 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %42 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %139

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %33
  %49 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %50 = call i64 @CQE_OPCODE(%struct.t4_cqe* %49)
  %51 = load i64, i64* @FW_RI_TERMINATE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %139

54:                                               ; preds = %48
  %55 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %56 = call i64 @CQE_OPCODE(%struct.t4_cqe* %55)
  %57 = load i64, i64* @FW_RI_READ_RESP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %54
  %60 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %61 = call i32 @CQE_TYPE(%struct.t4_cqe* %60)
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %139

64:                                               ; preds = %59
  %65 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %66 = call i32 @CQE_WRID_STAG(%struct.t4_cqe* %65)
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %139

69:                                               ; preds = %64
  %70 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %71 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %69
  %79 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %80 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %79, i32 0, i32 1
  %81 = call i32 @advance_oldest_read(%struct.TYPE_13__* %80)
  br label %139

82:                                               ; preds = %69
  %83 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %84 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %83, i32 0, i32 1
  %85 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %86 = call i32 @create_read_req_cqe(%struct.TYPE_13__* %84, %struct.t4_cqe* %85, %struct.t4_cqe* %7)
  store %struct.t4_cqe* %7, %struct.t4_cqe** %5, align 8
  %87 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %88 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %87, i32 0, i32 1
  %89 = call i32 @advance_oldest_read(%struct.TYPE_13__* %88)
  br label %90

90:                                               ; preds = %82, %54
  %91 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %92 = call i64 @SQ_TYPE(%struct.t4_cqe* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %90
  %95 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %96 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load %struct.t4_swsqe*, %struct.t4_swsqe** %98, align 8
  %100 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %101 = call i64 @CQE_WRID_SQ_IDX(%struct.t4_cqe* %100)
  %102 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %99, i64 %101
  store %struct.t4_swsqe* %102, %struct.t4_swsqe** %9, align 8
  %103 = load %struct.t4_swsqe*, %struct.t4_swsqe** %9, align 8
  %104 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %103, i32 0, i32 1
  %105 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %106 = bitcast %struct.t4_cqe* %104 to i8*
  %107 = bitcast %struct.t4_cqe* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 4, i1 false)
  %108 = load %struct.t4_swsqe*, %struct.t4_swsqe** %9, align 8
  %109 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  %110 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %111 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %110, i32 0, i32 1
  %112 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %113 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %112, i32 0, i32 0
  %114 = call i32 @flush_completed_wrs(%struct.TYPE_13__* %111, %struct.TYPE_12__* %113)
  br label %138

115:                                              ; preds = %90
  %116 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %117 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load %struct.t4_cqe*, %struct.t4_cqe** %118, align 8
  %120 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %121 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %119, i64 %123
  store %struct.t4_cqe* %124, %struct.t4_cqe** %6, align 8
  %125 = load %struct.t4_cqe*, %struct.t4_cqe** %6, align 8
  %126 = load %struct.t4_cqe*, %struct.t4_cqe** %5, align 8
  %127 = bitcast %struct.t4_cqe* %125 to i8*
  %128 = bitcast %struct.t4_cqe* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 4, i1 false)
  %129 = call i32 @CQE_SWCQE_V(i32 1)
  %130 = call i32 @cpu_to_be32(i32 %129)
  %131 = load %struct.t4_cqe*, %struct.t4_cqe** %6, align 8
  %132 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %136 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %135, i32 0, i32 0
  %137 = call i32 @t4_swcq_produce(%struct.TYPE_12__* %136)
  br label %138

138:                                              ; preds = %115, %94
  br label %139

139:                                              ; preds = %138, %78, %68, %63, %53, %46, %32
  %140 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %141 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %140, i32 0, i32 0
  %142 = call i32 @t4_hwcq_consume(%struct.TYPE_12__* %141)
  %143 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %144 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %143, i32 0, i32 0
  %145 = call i32 @t4_next_hw_cqe(%struct.TYPE_12__* %144, %struct.t4_cqe** %5)
  store i32 %145, i32* %10, align 4
  %146 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %147 = icmp ne %struct.c4iw_qp* %146, null
  br i1 %147, label %148, label %156

148:                                              ; preds = %139
  %149 = load %struct.c4iw_qp*, %struct.c4iw_qp** %4, align 8
  %150 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %151 = icmp ne %struct.c4iw_qp* %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %154 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %153, i32 0, i32 0
  %155 = call i32 @spin_unlock(i32* %154)
  br label %156

156:                                              ; preds = %152, %148, %139
  br label %19

157:                                              ; preds = %19
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @t4_next_hw_cqe(%struct.TYPE_12__*, %struct.t4_cqe**) #1

declare dso_local %struct.c4iw_qp* @get_qhp(i32, i32) #1

declare dso_local i32 @CQE_QPID(%struct.t4_cqe*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @CQE_OPCODE(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_TYPE(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_WRID_STAG(%struct.t4_cqe*) #1

declare dso_local i32 @advance_oldest_read(%struct.TYPE_13__*) #1

declare dso_local i32 @create_read_req_cqe(%struct.TYPE_13__*, %struct.t4_cqe*, %struct.t4_cqe*) #1

declare dso_local i64 @SQ_TYPE(%struct.t4_cqe*) #1

declare dso_local i64 @CQE_WRID_SQ_IDX(%struct.t4_cqe*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @flush_completed_wrs(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @CQE_SWCQE_V(i32) #1

declare dso_local i32 @t4_swcq_produce(%struct.TYPE_12__*) #1

declare dso_local i32 @t4_hwcq_consume(%struct.TYPE_12__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
