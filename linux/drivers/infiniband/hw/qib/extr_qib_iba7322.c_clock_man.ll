; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_clock_man.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_clock_man.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32)* @clock_man to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clock_man(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %6 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %9 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IBSD(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 1
  %15 = add nsw i32 %12, %14
  %16 = call i32 @ahb_mod(i32 %7, i32 %11, i32 %15, i32 4, i32 16384, i32 16384)
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %18 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %21 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IBSD(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 1
  %27 = add nsw i32 %24, %26
  %28 = call i32 @ahb_mod(i32 %19, i32 %23, i32 %27, i32 4, i32 0, i32 16384)
  %29 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %30 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %33 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IBSD(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 1
  %39 = add nsw i32 %36, %38
  %40 = call i32 @ahb_mod(i32 %31, i32 %35, i32 %39, i32 4, i32 16384, i32 16384)
  %41 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %42 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @IBSD(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = ashr i32 %49, 1
  %51 = add nsw i32 %48, %50
  %52 = call i32 @ahb_mod(i32 %43, i32 %47, i32 %51, i32 4, i32 0, i32 16384)
  ret void
}

declare dso_local i32 @ahb_mod(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IBSD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
