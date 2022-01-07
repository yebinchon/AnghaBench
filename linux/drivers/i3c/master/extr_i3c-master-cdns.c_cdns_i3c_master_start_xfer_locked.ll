; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_start_xfer_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_start_xfer_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_i3c_master = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cdns_i3c_xfer* }
%struct.cdns_i3c_xfer = type { i32, %struct.cdns_i3c_cmd* }
%struct.cdns_i3c_cmd = type { i32, i32, i32, i32 }

@MST_INT_CMDD_EMP = common dso_local global i32 0, align 4
@MST_ICR = common dso_local global i64 0, align 8
@CMD1_FIFO = common dso_local global i64 0, align 8
@CMD0_FIFO = common dso_local global i64 0, align 8
@CTRL = common dso_local global i64 0, align 8
@CTRL_MCS = common dso_local global i32 0, align 4
@MST_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_i3c_master*)* @cdns_i3c_master_start_xfer_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_i3c_master_start_xfer_locked(%struct.cdns_i3c_master* %0) #0 {
  %2 = alloca %struct.cdns_i3c_master*, align 8
  %3 = alloca %struct.cdns_i3c_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdns_i3c_cmd*, align 8
  %6 = alloca %struct.cdns_i3c_cmd*, align 8
  store %struct.cdns_i3c_master* %0, %struct.cdns_i3c_master** %2, align 8
  %7 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %8 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %9, align 8
  store %struct.cdns_i3c_xfer* %10, %struct.cdns_i3c_xfer** %3, align 8
  %11 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %3, align 8
  %12 = icmp ne %struct.cdns_i3c_xfer* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %106

14:                                               ; preds = %1
  %15 = load i32, i32* @MST_INT_CMDD_EMP, align 4
  %16 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %17 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MST_ICR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %43, %14
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %3, align 8
  %25 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %3, align 8
  %30 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %29, i32 0, i32 1
  %31 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %31, i64 %33
  store %struct.cdns_i3c_cmd* %34, %struct.cdns_i3c_cmd** %5, align 8
  %35 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %36 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cdns_i3c_master_wr_to_tx_fifo(%struct.cdns_i3c_master* %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %22

46:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %81, %46
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %3, align 8
  %50 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %47
  %54 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %3, align 8
  %55 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %54, i32 0, i32 1
  %56 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %56, i64 %58
  store %struct.cdns_i3c_cmd* %59, %struct.cdns_i3c_cmd** %6, align 8
  %60 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @CMD1_FIFO_CMDID(i32 %63)
  %65 = or i32 %62, %64
  %66 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %67 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CMD1_FIFO, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %76 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CMD0_FIFO, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  br label %81

81:                                               ; preds = %53
  %82 = load i32, i32* %4, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %47

84:                                               ; preds = %47
  %85 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %86 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CTRL, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  %91 = load i32, i32* @CTRL_MCS, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %94 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CTRL, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load i32, i32* @MST_INT_CMDD_EMP, align 4
  %100 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %101 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MST_IER, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  br label %106

106:                                              ; preds = %84, %13
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cdns_i3c_master_wr_to_tx_fifo(%struct.cdns_i3c_master*, i32, i32) #1

declare dso_local i32 @CMD1_FIFO_CMDID(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
