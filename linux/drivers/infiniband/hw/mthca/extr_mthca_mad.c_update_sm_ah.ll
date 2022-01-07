; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mad.c_update_sm_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mad.c_update_sm_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.ib_ah**, %struct.TYPE_4__***, i32 }
%struct.ib_ah = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rdma_ah_attr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, i32, i32, i32)* @update_sm_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_sm_ah(%struct.mthca_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_ah*, align 8
  %10 = alloca %struct.rdma_ah_attr, align 4
  %11 = alloca i64, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %14, i64 %17
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %93

24:                                               ; preds = %4
  %25 = call i32 @memset(%struct.rdma_ah_attr* %10, i32 0, i32 4)
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %27 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @rdma_ah_find_type(i32* %27, i32 %28)
  %30 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %10, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %10, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %10, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %10, i32 %35)
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %38 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %39, i64 %42
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.ib_ah* @rdma_create_ah(i32 %50, %struct.rdma_ah_attr* %10, i32 0)
  store %struct.ib_ah* %51, %struct.ib_ah** %9, align 8
  %52 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %53 = call i64 @IS_ERR(%struct.ib_ah* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %24
  br label %93

56:                                               ; preds = %24
  %57 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %58 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %62 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %61, i32 0, i32 1
  %63 = load %struct.ib_ah**, %struct.ib_ah*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ib_ah*, %struct.ib_ah** %63, i64 %66
  %68 = load %struct.ib_ah*, %struct.ib_ah** %67, align 8
  %69 = icmp ne %struct.ib_ah* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %56
  %71 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %72 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %71, i32 0, i32 1
  %73 = load %struct.ib_ah**, %struct.ib_ah*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ib_ah*, %struct.ib_ah** %73, i64 %76
  %78 = load %struct.ib_ah*, %struct.ib_ah** %77, align 8
  %79 = call i32 @rdma_destroy_ah(%struct.ib_ah* %78, i32 0)
  br label %80

80:                                               ; preds = %70, %56
  %81 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %82 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %83 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %82, i32 0, i32 1
  %84 = load %struct.ib_ah**, %struct.ib_ah*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ib_ah*, %struct.ib_ah** %84, i64 %87
  store %struct.ib_ah* %81, %struct.ib_ah** %88, align 8
  %89 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %90 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %89, i32 0, i32 0
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %80, %55, %23
  ret void
}

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rdma_ah_find_type(i32*, i32) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #1

declare dso_local %struct.ib_ah* @rdma_create_ah(i32, %struct.rdma_ah_attr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_ah*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rdma_destroy_ah(%struct.ib_ah*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
