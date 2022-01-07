; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@EPB_GLOBAL_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_sd_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_sd_early(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %4 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %5 = call i32 @RXHSCTRL0(i32 0)
  %6 = load i32, i32* @EPB_GLOBAL_WR, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %4, i32 %7, i32 212, i32 255)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = call i32 @START_EQ1(i32 0)
  %15 = load i32, i32* @EPB_GLOBAL_WR, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %13, i32 %16, i32 16, i32 255)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %27

21:                                               ; preds = %12
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %23 = call i32 @START_EQ2(i32 0)
  %24 = load i32, i32* @EPB_GLOBAL_WR, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %22, i32 %25, i32 48, i32 255)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %20, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ibsd_mod_allchnls(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @RXHSCTRL0(i32) #1

declare dso_local i32 @START_EQ1(i32) #1

declare dso_local i32 @START_EQ2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
