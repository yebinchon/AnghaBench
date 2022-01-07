; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_cq_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_cq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_cq = type { %struct.ib_cq }
%struct.ib_cq = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ib_cq* }

@.str = private unnamed_addr constant [23 x i8] c"reporting CQ event %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_cq_event(%struct.siw_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.siw_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_event.0, align 8
  %6 = alloca %struct.ib_cq*, align 8
  store %struct.siw_cq* %0, %struct.siw_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.siw_cq*, %struct.siw_cq** %3, align 8
  %8 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %7, i32 0, i32 0
  store %struct.ib_cq* %8, %struct.ib_cq** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %12 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %16 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ib_cq* %15, %struct.ib_cq** %17, align 8
  %18 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %19 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %18, i32 0, i32 1
  %20 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.ib_event*, i32)* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.siw_cq*, %struct.siw_cq** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @siw_dbg_cq(%struct.siw_cq* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %27 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %26, i32 0, i32 1
  %28 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %27, align 8
  %29 = bitcast %struct.ib_event.0* %5 to %struct.ib_event*
  %30 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %31 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %28(%struct.ib_event* %29, i32 %32)
  br label %34

34:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @siw_dbg_cq(%struct.siw_cq*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
