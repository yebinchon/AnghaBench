; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_enable_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_enable_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32 (i32, i32, i32)*, %struct.qib_ctxtdata**, i64, i32 (i64, i32)* }
%struct.qib_ctxtdata = type { i32 }

@QIB_SENDCTRL_SEND_ENB = common dso_local global i32 0, align 4
@QIB_SENDCTRL_AVAIL_ENB = common dso_local global i32 0, align 4
@QIB_RCVCTRL_CTXT_ENB = common dso_local global i32 0, align 4
@QIB_RCVCTRL_INTRAVAIL_ENB = common dso_local global i32 0, align 4
@QIB_NODMA_RTAIL = common dso_local global i32 0, align 4
@QIB_RCVCTRL_TAILUPD_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_TAILUPD_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @enable_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_chip(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_ctxtdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %9 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %6
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 6
  %15 = load i32 (i64, i32)*, i32 (i64, i32)** %14, align 8
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i32, i32* @QIB_SENDCTRL_SEND_ENB, align 4
  %23 = load i32, i32* @QIB_SENDCTRL_AVAIL_ENB, align 4
  %24 = or i32 %22, %23
  %25 = call i32 %15(i64 %21, i32 %24)
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %6

29:                                               ; preds = %6
  %30 = load i32, i32* @QIB_RCVCTRL_CTXT_ENB, align 4
  %31 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_ENB, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @QIB_NODMA_RTAIL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @QIB_RCVCTRL_TAILUPD_DIS, align 4
  br label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @QIB_RCVCTRL_TAILUPD_ENB, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %81, %43
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 4
  %50 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %49, align 8
  %51 = icmp ne %struct.qib_ctxtdata** %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br label %58

58:                                               ; preds = %52, %47
  %59 = phi i1 [ false, %47 ], [ %57, %52 ]
  br i1 %59, label %60, label %84

60:                                               ; preds = %58
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %62 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %61, i32 0, i32 4
  %63 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %63, i64 %65
  %67 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %66, align 8
  store %struct.qib_ctxtdata* %67, %struct.qib_ctxtdata** %5, align 8
  %68 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %69 = icmp ne %struct.qib_ctxtdata* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %72 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %71, i32 0, i32 3
  %73 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %72, align 8
  %74 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %75 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 %73(i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %70, %60
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %47

84:                                               ; preds = %58
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
