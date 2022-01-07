; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_c4iw_log_wr_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_c4iw_log_wr_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, %struct.wr_log_entry*, %struct.TYPE_7__, i32 }
%struct.wr_log_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.t4_cqe = type { i32 }

@FW_RI_RECEIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c4iw_log_wr_stats(%struct.t4_wq* %0, %struct.t4_cqe* %1) #0 {
  %3 = alloca %struct.t4_wq*, align 8
  %4 = alloca %struct.t4_cqe*, align 8
  %5 = alloca %struct.wr_log_entry, align 4
  %6 = alloca i32, align 4
  store %struct.t4_wq* %0, %struct.t4_wq** %3, align 8
  store %struct.t4_cqe* %1, %struct.t4_cqe** %4, align 8
  %7 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %8 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %7, i32 0, i32 0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load %struct.wr_log_entry*, %struct.wr_log_entry** %10, align 8
  %12 = icmp ne %struct.wr_log_entry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %129

14:                                               ; preds = %2
  %15 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %16 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = call i32 @atomic_inc_return(i32* %18)
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %22 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %20, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %29 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cxgb4_read_sge_timestamp(i32 %35)
  %37 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 8
  store i32 %36, i32* %37, align 4
  %38 = call i32 (...) @ktime_get()
  %39 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 7
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %42 = call i32 @CQE_TS(%struct.t4_cqe* %41)
  %43 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 6
  store i32 %42, i32* %43, align 4
  %44 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %45 = call i64 @SQ_TYPE(%struct.t4_cqe* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %14
  %48 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %49 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 5
  store i32 %51, i32* %52, align 4
  %53 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %54 = call i32 @CQE_OPCODE(%struct.t4_cqe* %53)
  %55 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 4
  store i32 %54, i32* %55, align 4
  %56 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %57 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %61 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 3
  store i32 %66, i32* %67, align 4
  %68 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %69 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %73 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %81 = call i32 @CQE_WRID_SQ_IDX(%struct.t4_cqe* %80)
  %82 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  br label %118

83:                                               ; preds = %14
  %84 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %85 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 5
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @FW_RI_RECEIVE, align 4
  %90 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 4
  store i32 %89, i32* %90, align 4
  %91 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %92 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %96 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 3
  store i32 %101, i32* %102, align 4
  %103 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %104 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %108 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  %115 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %116 = call i32 @CQE_WRID_MSN(%struct.t4_cqe* %115)
  %117 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %5, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %83, %47
  %119 = load %struct.t4_wq*, %struct.t4_wq** %3, align 8
  %120 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load %struct.wr_log_entry*, %struct.wr_log_entry** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.wr_log_entry, %struct.wr_log_entry* %123, i64 %125
  %127 = bitcast %struct.wr_log_entry* %126 to i8*
  %128 = bitcast %struct.wr_log_entry* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 36, i1 false)
  br label %129

129:                                              ; preds = %118, %13
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @cxgb4_read_sge_timestamp(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @CQE_TS(%struct.t4_cqe*) #1

declare dso_local i64 @SQ_TYPE(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_OPCODE(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_WRID_SQ_IDX(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_WRID_MSN(%struct.t4_cqe*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
