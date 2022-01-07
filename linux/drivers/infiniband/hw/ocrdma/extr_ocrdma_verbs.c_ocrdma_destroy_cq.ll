; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_cq = type { i64, %struct.TYPE_6__*, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_eq = type { i32 }
%struct.ocrdma_dev = type { %struct.TYPE_5__, %struct.ocrdma_eq*, i32** }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocrdma_destroy_cq(%struct.ib_cq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.ocrdma_cq*, align 8
  %6 = alloca %struct.ocrdma_eq*, align 8
  %7 = alloca %struct.ocrdma_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %11 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %12 = call %struct.ocrdma_cq* @get_ocrdma_cq(%struct.ib_cq* %11)
  store %struct.ocrdma_cq* %12, %struct.ocrdma_cq** %5, align 8
  store %struct.ocrdma_eq* null, %struct.ocrdma_eq** %6, align 8
  %13 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %14 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %15)
  store %struct.ocrdma_dev* %16, %struct.ocrdma_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %18 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %17, i32 0, i32 2
  %19 = load i32**, i32*** %18, align 8
  %20 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %21 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  store i32* null, i32** %23, align 8
  %24 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %25 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %26 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @ocrdma_get_eq_table_index(%struct.ocrdma_dev* %24, i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %30 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %29, i32 0, i32 1
  %31 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %31, i64 %32
  store %struct.ocrdma_eq* %33, %struct.ocrdma_eq** %6, align 8
  %34 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %35 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %6, align 8
  %36 = call i64 @ocrdma_get_irq(%struct.ocrdma_dev* %34, %struct.ocrdma_eq* %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @synchronize_irq(i64 %37)
  %39 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %40 = call i32 @ocrdma_flush_cq(%struct.ocrdma_cq* %39)
  %41 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %42 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %43 = call i32 @ocrdma_mbx_destroy_cq(%struct.ocrdma_dev* %41, %struct.ocrdma_cq* %42)
  %44 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %45 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %79

48:                                               ; preds = %2
  %49 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %50 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %57 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %60 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %64 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @PAGE_ALIGN(i32 %65)
  %67 = call i32 @ocrdma_del_mmap(%struct.TYPE_6__* %58, i32 %62, i32 %66)
  %68 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %5, align 8
  %69 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ocrdma_get_db_addr(%struct.ocrdma_dev* %71, i32 %72)
  %74 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %75 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ocrdma_del_mmap(%struct.TYPE_6__* %70, i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %48, %2
  ret void
}

declare dso_local %struct.ocrdma_cq* @get_ocrdma_cq(%struct.ib_cq*) #1

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i64 @ocrdma_get_eq_table_index(%struct.ocrdma_dev*, i32) #1

declare dso_local i64 @ocrdma_get_irq(%struct.ocrdma_dev*, %struct.ocrdma_eq*) #1

declare dso_local i32 @synchronize_irq(i64) #1

declare dso_local i32 @ocrdma_flush_cq(%struct.ocrdma_cq*) #1

declare dso_local i32 @ocrdma_mbx_destroy_cq(%struct.ocrdma_dev*, %struct.ocrdma_cq*) #1

declare dso_local i32 @ocrdma_del_mmap(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @ocrdma_get_db_addr(%struct.ocrdma_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
