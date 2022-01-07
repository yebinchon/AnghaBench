; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_set_dds_vals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_set_dds_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }
%struct.dds_init = type { i32* }

@DDS_REG_MAP = common dso_local global i32 0, align 4
@NUM_DDS_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, %struct.dds_init*)* @set_dds_vals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dds_vals(%struct.qib_devdata* %0, %struct.dds_init* %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca %struct.dds_init*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store %struct.dds_init* %1, %struct.dds_init** %4, align 8
  %10 = load i32, i32* @DDS_REG_MAP, align 4
  store i32 %10, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %36, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NUM_DDS_REGS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.dds_init*, %struct.dds_init** %4, align 8
  %21 = getelementptr inbounds %struct.dds_init, %struct.dds_init* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @EPB_LOC(i32 0, i32 9, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %27, i32 %29, i32 %30, i32 255)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  br label %39

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %11

39:                                               ; preds = %34, %11
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @ibsd_mod_allchnls(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @EPB_LOC(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
