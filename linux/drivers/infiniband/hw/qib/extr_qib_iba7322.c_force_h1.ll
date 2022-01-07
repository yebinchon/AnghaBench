; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_force_h1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_force_h1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SERDES_CHANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @force_h1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @force_h1(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %4 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %5 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %9 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %43

17:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SERDES_CHANS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @set_man_mode_h1(%struct.qib_pportdata* %23, i32 %24, i32 1, i32 0)
  %26 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %29 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @set_man_code(%struct.qib_pportdata* %26, i32 %27, i32 %32)
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @clock_man(%struct.qib_pportdata* %34, i32 %35)
  %37 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @set_man_mode_h1(%struct.qib_pportdata* %37, i32 %38, i32 0, i32 0)
  br label %40

40:                                               ; preds = %22
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %18

43:                                               ; preds = %16, %18
  ret void
}

declare dso_local i32 @set_man_mode_h1(%struct.qib_pportdata*, i32, i32, i32) #1

declare dso_local i32 @set_man_code(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @clock_man(%struct.qib_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
