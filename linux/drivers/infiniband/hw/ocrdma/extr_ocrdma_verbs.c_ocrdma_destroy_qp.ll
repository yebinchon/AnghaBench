; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_pd = type { i64 }
%struct.ocrdma_qp = type { i64, %struct.ocrdma_qp*, %struct.ocrdma_qp*, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.ocrdma_pd* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ocrdma_dev = type { i32 }
%struct.ib_qp_attr = type { i32 }

@OCRDMA_QPS_RST = common dso_local global i64 0, align 8
@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_destroy_qp(%struct.ib_qp* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.ocrdma_pd*, align 8
  %6 = alloca %struct.ocrdma_qp*, align 8
  %7 = alloca %struct.ocrdma_dev*, align 8
  %8 = alloca %struct.ib_qp_attr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %11 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %12 = call %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp* %11)
  store %struct.ocrdma_qp* %12, %struct.ocrdma_qp** %6, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %14 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %15)
  store %struct.ocrdma_dev* %16, %struct.ocrdma_dev** %7, align 8
  %17 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %18 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %17, i32 0, i32 8
  %19 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %18, align 8
  store %struct.ocrdma_pd* %19, %struct.ocrdma_pd** %5, align 8
  %20 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %21 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OCRDMA_QPS_RST, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* @IB_QPS_ERR, align 4
  %27 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @IB_QP_STATE, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @_ocrdma_modify_qp(%struct.ib_qp* %29, %struct.ib_qp_attr* %8, i32 %30)
  br label %32

32:                                               ; preds = %25, %2
  %33 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %34 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %37 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %38 = call i32 @ocrdma_mbx_destroy_qp(%struct.ocrdma_dev* %36, %struct.ocrdma_qp* %37)
  %39 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %40 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %39, i32 0, i32 7
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %46 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %45, i32 0, i32 6
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %32
  %50 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %51 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %50, i32 0, i32 6
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %54 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %53, i32 0, i32 7
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %52, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %49
  %58 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %59 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %58, i32 0, i32 6
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %64 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %65 = call i32 @ocrdma_del_qpn_map(%struct.ocrdma_dev* %63, %struct.ocrdma_qp* %64)
  %66 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %67 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %66, i32 0, i32 6
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  br label %75

71:                                               ; preds = %49, %32
  %72 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %73 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %74 = call i32 @ocrdma_del_qpn_map(%struct.ocrdma_dev* %72, %struct.ocrdma_qp* %73)
  br label %75

75:                                               ; preds = %71, %57
  %76 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %77 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %76, i32 0, i32 7
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %83 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %75
  %87 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %88 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %89 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %88, i32 0, i32 7
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 @ocrdma_discard_cqes(%struct.ocrdma_qp* %87, %struct.TYPE_6__* %90)
  %92 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %93 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %94 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %93, i32 0, i32 6
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = call i32 @ocrdma_discard_cqes(%struct.ocrdma_qp* %92, %struct.TYPE_6__* %95)
  br label %97

97:                                               ; preds = %86, %75
  %98 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %99 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %102 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %140

105:                                              ; preds = %97
  %106 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %107 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %110 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %115 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @PAGE_ALIGN(i32 %117)
  %119 = call i32 @ocrdma_del_mmap(i64 %108, i32 %113, i32 %118)
  %120 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %121 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %105
  %125 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %126 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %129 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %134 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @PAGE_ALIGN(i32 %136)
  %138 = call i32 @ocrdma_del_mmap(i64 %127, i32 %132, i32 %137)
  br label %139

139:                                              ; preds = %124, %105
  br label %140

140:                                              ; preds = %139, %97
  %141 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %142 = call i32 @ocrdma_del_flush_qp(%struct.ocrdma_qp* %141)
  %143 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %144 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %143, i32 0, i32 2
  %145 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %144, align 8
  %146 = call i32 @kfree(%struct.ocrdma_qp* %145)
  %147 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %148 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %147, i32 0, i32 1
  %149 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %148, align 8
  %150 = call i32 @kfree(%struct.ocrdma_qp* %149)
  %151 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %152 = call i32 @kfree(%struct.ocrdma_qp* %151)
  ret i32 0
}

declare dso_local %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp*) #1

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @_ocrdma_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocrdma_mbx_destroy_qp(%struct.ocrdma_dev*, %struct.ocrdma_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocrdma_del_qpn_map(%struct.ocrdma_dev*, %struct.ocrdma_qp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocrdma_discard_cqes(%struct.ocrdma_qp*, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocrdma_del_mmap(i64, i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @ocrdma_del_flush_qp(%struct.ocrdma_qp*) #1

declare dso_local i32 @kfree(%struct.ocrdma_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
