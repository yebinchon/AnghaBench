; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_set_man_mode_h1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_set_man_mode_h1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32, i32, i32)* @set_man_mode_h1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_man_mode_h1(%struct.qib_pportdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %13 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %16 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IBSD(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 1
  %22 = add nsw i32 %19, %21
  %23 = call i32 @ahb_mod(i32 %14, i32 %18, i32 %22, i32 1, i32 3072, i32 31744)
  br label %37

24:                                               ; preds = %4
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %29 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IBSD(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 1
  %35 = add nsw i32 %32, %34
  %36 = call i32 @ahb_mod(i32 %27, i32 %31, i32 %35, i32 1, i32 0, i32 31744)
  br label %37

37:                                               ; preds = %24, %11
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
