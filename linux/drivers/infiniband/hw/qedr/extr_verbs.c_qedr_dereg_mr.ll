; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.qedr_mr = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qedr_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@QEDR_MR_DMA = common dso_local global i64 0, align 8
@QEDR_MR_FRMR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_dereg_mr(%struct.ib_mr* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.qedr_mr*, align 8
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %9 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %10 = call %struct.qedr_mr* @get_qedr_mr(%struct.ib_mr* %9)
  store %struct.qedr_mr* %10, %struct.qedr_mr** %6, align 8
  %11 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %12 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.qedr_dev* @get_qedr_dev(i32 %13)
  store %struct.qedr_dev* %14, %struct.qedr_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %16 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %21 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %24 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %19(i32 %22, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %75

32:                                               ; preds = %2
  %33 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %34 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %39 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %42 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 %37(i32 %40, i32 %44)
  %46 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %47 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @QEDR_MR_DMA, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %32
  %52 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %53 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @QEDR_MR_FRMR, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %59 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %60 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %63 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @qedr_free_pbl(%struct.qedr_dev* %58, i32* %61, i32 %65)
  br label %67

67:                                               ; preds = %57, %51, %32
  %68 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %69 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ib_umem_release(i32 %70)
  %72 = load %struct.qedr_mr*, %struct.qedr_mr** %6, align 8
  %73 = call i32 @kfree(%struct.qedr_mr* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %30
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.qedr_mr* @get_qedr_mr(%struct.ib_mr*) #1

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local i32 @qedr_free_pbl(%struct.qedr_dev*, i32*, i32) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @kfree(%struct.qedr_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
