; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_ah.c_rvt_create_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_ah.c_rvt_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rvt_ah = type { i32 }
%struct.rvt_dev_info = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (i32, %struct.rdma_ah_attr.0*, %struct.rvt_ah.1*)* }
%struct.rdma_ah_attr.0 = type opaque
%struct.rvt_ah.1 = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_create_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_ah*, align 8
  %7 = alloca %struct.rdma_ah_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.rvt_ah*, align 8
  %11 = alloca %struct.rvt_dev_info*, align 8
  %12 = alloca i64, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %6, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %13 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %14 = call %struct.rvt_ah* @ibah_to_rvtah(%struct.ib_ah* %13)
  store %struct.rvt_ah* %14, %struct.rvt_ah** %10, align 8
  %15 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %16 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %17)
  store %struct.rvt_dev_info* %18, %struct.rvt_dev_info** %11, align 8
  %19 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %20 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %23 = call i64 @rvt_check_ah(i32 %21, %struct.rdma_ah_attr* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %81

28:                                               ; preds = %4
  %29 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %11, align 8
  %30 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %29, i32 0, i32 2
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %11, align 8
  %34 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %11, align 8
  %37 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %11, align 8
  %44 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %43, i32 0, i32 2
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %81

49:                                               ; preds = %28
  %50 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %11, align 8
  %51 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %11, align 8
  %55 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %54, i32 0, i32 2
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.rvt_ah*, %struct.rvt_ah** %10, align 8
  %59 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %58, i32 0, i32 0
  %60 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %61 = call i32 @rdma_copy_ah_attr(i32* %59, %struct.rdma_ah_attr* %60)
  %62 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %11, align 8
  %63 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32 (i32, %struct.rdma_ah_attr.0*, %struct.rvt_ah.1*)*, i32 (i32, %struct.rdma_ah_attr.0*, %struct.rvt_ah.1*)** %64, align 8
  %66 = icmp ne i32 (i32, %struct.rdma_ah_attr.0*, %struct.rvt_ah.1*)* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %49
  %68 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %11, align 8
  %69 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32 (i32, %struct.rdma_ah_attr.0*, %struct.rvt_ah.1*)*, i32 (i32, %struct.rdma_ah_attr.0*, %struct.rvt_ah.1*)** %70, align 8
  %72 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %73 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %76 = bitcast %struct.rdma_ah_attr* %75 to %struct.rdma_ah_attr.0*
  %77 = load %struct.rvt_ah*, %struct.rvt_ah** %10, align 8
  %78 = bitcast %struct.rvt_ah* %77 to %struct.rvt_ah.1*
  %79 = call i32 %71(i32 %74, %struct.rdma_ah_attr.0* %76, %struct.rvt_ah.1* %78)
  br label %80

80:                                               ; preds = %67, %49
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %42, %25
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.rvt_ah* @ibah_to_rvtah(%struct.ib_ah*) #1

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i64 @rvt_check_ah(i32, %struct.rdma_ah_attr*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rdma_copy_ah_attr(i32*, %struct.rdma_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
