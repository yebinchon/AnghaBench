; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_qp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { %struct.TYPE_3__, %struct.ib_qp* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_qp = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.ib_qp* }

@SIW_QP_IN_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"reporting event %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_qp_event(%struct.siw_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_event.0, align 8
  %6 = alloca %struct.ib_qp*, align 8
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %8 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %7, i32 0, i32 1
  %9 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  store %struct.ib_qp* %9, %struct.ib_qp** %6, align 8
  %10 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %11 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SIW_QP_IN_DESTROY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %44

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %22 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %26 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.ib_qp* %25, %struct.ib_qp** %27, align 8
  %28 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %29 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %28, i32 0, i32 1
  %30 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.ib_event*, i32)* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %18
  %33 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @siw_dbg_qp(%struct.siw_qp* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %37 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %36, i32 0, i32 1
  %38 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %37, align 8
  %39 = bitcast %struct.ib_event.0* %5 to %struct.ib_event*
  %40 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %41 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %38(%struct.ib_event* %39, i32 %42)
  br label %44

44:                                               ; preds = %17, %32, %18
  ret void
}

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
