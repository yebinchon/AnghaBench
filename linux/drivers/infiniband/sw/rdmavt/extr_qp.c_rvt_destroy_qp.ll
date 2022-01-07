; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.rvt_qp = type { i32, i32, i32, %struct.rvt_qp*, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.rvt_dev_info = type { i32, i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 (%struct.rvt_dev_info.0*, %struct.rvt_qp*)* }
%struct.rvt_dev_info.0 = type opaque
%struct.TYPE_6__ = type { i32 }

@IB_QPT_RC = common dso_local global i64 0, align 8
@RC_QP_SCALING_INTERVAL = common dso_local global i32 0, align 4
@rvt_release_mmap_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_destroy_qp(%struct.ib_qp* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.rvt_dev_info*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %7 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %8 = call %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp* %7)
  store %struct.rvt_qp* %8, %struct.rvt_qp** %5, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %11)
  store %struct.rvt_dev_info* %12, %struct.rvt_dev_info** %6, align 8
  %13 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %14 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %13, i32 0, i32 9
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 10
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %20 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %19, i32 0, i32 11
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %23 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %24 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %25 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rvt_reset_qp(%struct.rvt_dev_info* %22, %struct.rvt_qp* %23, i32 %26)
  %28 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %29 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %28, i32 0, i32 11
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %32 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %31, i32 0, i32 10
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %35 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %34, i32 0, i32 9
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %38 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %41 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %40, i32 0, i32 7
  %42 = call i32 @atomic_read(i32* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @wait_event(i32 %39, i32 %45)
  %47 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %48 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %47, i32 0, i32 5
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %52 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @rvt_free_qpn(i32* %50, i32 %54)
  %56 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %57 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %56, i32 0, i32 3
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %60 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %64 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IB_QPT_RC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %2
  %70 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %71 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %75 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @RC_QP_SCALING_INTERVAL, align 4
  %78 = sdiv i32 %76, %77
  %79 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %80 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %69, %2
  %82 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %83 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %82, i32 0, i32 3
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %86 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %85, i32 0, i32 5
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = icmp ne %struct.TYPE_8__* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  %90 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %91 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %90, i32 0, i32 5
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* @rvt_release_mmap_info, align 4
  %95 = call i32 @kref_put(i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %81
  %97 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %98 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @kvfree(i32 %100)
  %102 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %103 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32 (%struct.rvt_dev_info.0*, %struct.rvt_qp*)*, i32 (%struct.rvt_dev_info.0*, %struct.rvt_qp*)** %104, align 8
  %106 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %107 = bitcast %struct.rvt_dev_info* %106 to %struct.rvt_dev_info.0*
  %108 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %109 = call i32 %105(%struct.rvt_dev_info.0* %107, %struct.rvt_qp* %108)
  %110 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %111 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %110, i32 0, i32 3
  %112 = load %struct.rvt_qp*, %struct.rvt_qp** %111, align 8
  %113 = call i32 @kfree(%struct.rvt_qp* %112)
  %114 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %115 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %114, i32 0, i32 2
  %116 = call i32 @rdma_destroy_ah_attr(i32* %115)
  %117 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %118 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %117, i32 0, i32 1
  %119 = call i32 @rdma_destroy_ah_attr(i32* %118)
  %120 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %121 = call i32 @free_ud_wq_attr(%struct.rvt_qp* %120)
  %122 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %123 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @vfree(i32 %124)
  %126 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %127 = call i32 @kfree(%struct.rvt_qp* %126)
  ret i32 0
}

declare dso_local %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp*) #1

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rvt_reset_qp(%struct.rvt_dev_info*, %struct.rvt_qp*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rvt_free_qpn(i32*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(%struct.rvt_qp*) #1

declare dso_local i32 @rdma_destroy_ah_attr(i32*) #1

declare dso_local i32 @free_ud_wq_attr(%struct.rvt_qp*) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
