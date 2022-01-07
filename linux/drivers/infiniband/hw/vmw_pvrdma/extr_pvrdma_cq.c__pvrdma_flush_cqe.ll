; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cq.c__pvrdma_flush_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cq.c__pvrdma_flush_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_qp = type { i32 }
%struct.pvrdma_cq = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pvrdma_cqe = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_pvrdma_flush_cqe(%struct.pvrdma_qp* %0, %struct.pvrdma_cq* %1) #0 {
  %3 = alloca %struct.pvrdma_qp*, align 8
  %4 = alloca %struct.pvrdma_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pvrdma_cqe*, align 8
  %11 = alloca %struct.pvrdma_cqe*, align 8
  store %struct.pvrdma_qp* %0, %struct.pvrdma_qp** %3, align 8
  store %struct.pvrdma_cq* %1, %struct.pvrdma_cq** %4, align 8
  %12 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %13 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %127

17:                                               ; preds = %2
  %18 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %19 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %23 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pvrdma_idx_ring_has_data(%struct.TYPE_6__* %21, i32 %25, i32* %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %127

32:                                               ; preds = %17
  %33 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %34 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %39 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pvrdma_idx(i32* %37, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sub i32 %47, %48
  br label %59

50:                                               ; preds = %32
  %51 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %52 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sub i32 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %56, %57
  br label %59

59:                                               ; preds = %50, %46
  %60 = phi i32 [ %49, %46 ], [ %58, %50 ]
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %123, %59
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %7, align 4
  %66 = icmp sgt i32 %64, 0
  br i1 %66, label %67, label %126

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %72 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %81 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call %struct.pvrdma_cqe* @get_cqe(%struct.pvrdma_cq* %86, i32 %87)
  store %struct.pvrdma_cqe* %88, %struct.pvrdma_cqe** %11, align 8
  %89 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %11, align 8
  %90 = getelementptr inbounds %struct.pvrdma_cqe, %struct.pvrdma_cqe* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 65535
  %93 = load %struct.pvrdma_qp*, %struct.pvrdma_qp** %3, align 8
  %94 = getelementptr inbounds %struct.pvrdma_qp, %struct.pvrdma_qp* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %85
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call %struct.pvrdma_cqe* @get_cqe(%struct.pvrdma_cq* %102, i32 %103)
  store %struct.pvrdma_cqe* %104, %struct.pvrdma_cqe** %10, align 8
  %105 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %10, align 8
  %106 = load %struct.pvrdma_cqe*, %struct.pvrdma_cqe** %11, align 8
  %107 = bitcast %struct.pvrdma_cqe* %105 to i8*
  %108 = bitcast %struct.pvrdma_cqe* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 4, i1 false)
  br label %109

109:                                              ; preds = %101, %97
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %9, align 4
  br label %123

112:                                              ; preds = %85
  %113 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %114 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %4, align 8
  %119 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @pvrdma_idx_ring_inc(i32* %117, i32 %121)
  br label %123

123:                                              ; preds = %112, %109
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %8, align 4
  br label %63

126:                                              ; preds = %63
  br label %127

127:                                              ; preds = %16, %126, %17
  ret void
}

declare dso_local i32 @pvrdma_idx_ring_has_data(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pvrdma_idx(i32*, i32) #1

declare dso_local %struct.pvrdma_cqe* @get_cqe(%struct.pvrdma_cq*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pvrdma_idx_ring_inc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
