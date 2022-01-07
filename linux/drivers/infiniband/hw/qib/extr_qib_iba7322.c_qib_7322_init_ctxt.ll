; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_init_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_init_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NUM_IB_PORTS = common dso_local global i64 0, align 8
@KCTXT0_EGRCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ctxtdata*)* @qib_7322_init_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7322_init_ctxt(%struct.qib_ctxtdata* %0) #0 {
  %2 = alloca %struct.qib_ctxtdata*, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %2, align 8
  %3 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %4 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NUM_IB_PORTS, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %10 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %33

15:                                               ; preds = %8
  %16 = load i32, i32* @KCTXT0_EGRCNT, align 4
  %17 = sdiv i32 %16, 2
  %18 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %21 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  br label %29

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  %31 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %32 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  br label %39

33:                                               ; preds = %8
  %34 = load i32, i32* @KCTXT0_EGRCNT, align 4
  %35 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %36 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %38 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %29
  br label %66

40:                                               ; preds = %1
  %41 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %42 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %49 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @KCTXT0_EGRCNT, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %53 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NUM_IB_PORTS, align 8
  %56 = sub nsw i64 %54, %55
  %57 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %58 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %56, %60
  %62 = add nsw i64 %51, %61
  %63 = trunc i64 %62 to i32
  %64 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %2, align 8
  %65 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %40, %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
