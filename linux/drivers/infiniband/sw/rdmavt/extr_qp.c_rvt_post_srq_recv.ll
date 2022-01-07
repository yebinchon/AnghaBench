; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.TYPE_5__*, i32, %struct.ib_recv_wr* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.rvt_srq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, %struct.rvt_krwq* }
%struct.rvt_krwq = type { i64, i32, i32 }
%struct.rvt_rwqe = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_post_srq_recv(%struct.ib_srq* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_srq*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr**, align 8
  %8 = alloca %struct.rvt_srq*, align 8
  %9 = alloca %struct.rvt_krwq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rvt_rwqe*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %5, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %7, align 8
  %14 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %15 = call %struct.rvt_srq* @ibsrq_to_rvtsrq(%struct.ib_srq* %14)
  store %struct.rvt_srq* %15, %struct.rvt_srq** %8, align 8
  br label %16

16:                                               ; preds = %159, %3
  %17 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %18 = icmp ne %struct.ib_recv_wr* %17, null
  br i1 %18, label %19, label %163

19:                                               ; preds = %16
  %20 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %21 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rvt_srq*, %struct.rvt_srq** %8, align 8
  %24 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ugt i32 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %30 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %29, %struct.ib_recv_wr** %30, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %164

33:                                               ; preds = %19
  %34 = load %struct.rvt_srq*, %struct.rvt_srq** %8, align 8
  %35 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load %struct.rvt_krwq*, %struct.rvt_krwq** %36, align 8
  %38 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %37, i32 0, i32 1
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.rvt_srq*, %struct.rvt_srq** %8, align 8
  %42 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.rvt_krwq*, %struct.rvt_krwq** %43, align 8
  store %struct.rvt_krwq* %44, %struct.rvt_krwq** %9, align 8
  %45 = load %struct.rvt_krwq*, %struct.rvt_krwq** %9, align 8
  %46 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.rvt_srq*, %struct.rvt_srq** %8, align 8
  %51 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %33
  store i64 0, i64* %12, align 8
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.rvt_krwq*, %struct.rvt_krwq** %9, align 8
  %59 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @READ_ONCE(i32 %60)
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.rvt_srq*, %struct.rvt_srq** %8, align 8
  %65 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load %struct.rvt_krwq*, %struct.rvt_krwq** %66, align 8
  %68 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %67, i32 0, i32 1
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %72 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %71, %struct.ib_recv_wr** %72, align 8
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %164

75:                                               ; preds = %56
  %76 = load %struct.rvt_srq*, %struct.rvt_srq** %8, align 8
  %77 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %76, i32 0, i32 0
  %78 = load %struct.rvt_krwq*, %struct.rvt_krwq** %9, align 8
  %79 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call %struct.rvt_rwqe* @rvt_get_rwqe_ptr(%struct.TYPE_6__* %77, i64 %80)
  store %struct.rvt_rwqe* %81, %struct.rvt_rwqe** %11, align 8
  %82 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %83 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %11, align 8
  %86 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %88 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %11, align 8
  %91 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %144, %75
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %95 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %147

98:                                               ; preds = %92
  %99 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %100 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %11, align 8
  %108 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i32 %106, i32* %113, align 4
  %114 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %115 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %11, align 8
  %123 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i32 %121, i32* %128, align 4
  %129 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %130 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %11, align 8
  %138 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i32 %136, i32* %143, align 4
  br label %144

144:                                              ; preds = %98
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %92

147:                                              ; preds = %92
  %148 = load %struct.rvt_krwq*, %struct.rvt_krwq** %9, align 8
  %149 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %148, i32 0, i32 0
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @smp_store_release(i64* %149, i64 %150)
  %152 = load %struct.rvt_srq*, %struct.rvt_srq** %8, align 8
  %153 = getelementptr inbounds %struct.rvt_srq, %struct.rvt_srq* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load %struct.rvt_krwq*, %struct.rvt_krwq** %154, align 8
  %156 = getelementptr inbounds %struct.rvt_krwq, %struct.rvt_krwq* %155, i32 0, i32 1
  %157 = load i64, i64* %10, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  br label %159

159:                                              ; preds = %147
  %160 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %161 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %160, i32 0, i32 3
  %162 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %161, align 8
  store %struct.ib_recv_wr* %162, %struct.ib_recv_wr** %6, align 8
  br label %16

163:                                              ; preds = %16
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %63, %28
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local %struct.rvt_srq* @ibsrq_to_rvtsrq(%struct.ib_srq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.rvt_rwqe* @rvt_get_rwqe_ptr(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @smp_store_release(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
