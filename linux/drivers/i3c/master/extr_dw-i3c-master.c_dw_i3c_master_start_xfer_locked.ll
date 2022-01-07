; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_start_xfer_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_start_xfer_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i3c_master = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dw_i3c_xfer* }
%struct.dw_i3c_xfer = type { i32, %struct.dw_i3c_cmd* }
%struct.dw_i3c_cmd = type { i32, i32, i32, i32 }

@QUEUE_THLD_CTRL = common dso_local global i64 0, align 8
@QUEUE_THLD_CTRL_RESP_BUF_MASK = common dso_local global i32 0, align 4
@COMMAND_QUEUE_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i3c_master*)* @dw_i3c_master_start_xfer_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_i3c_master_start_xfer_locked(%struct.dw_i3c_master* %0) #0 {
  %2 = alloca %struct.dw_i3c_master*, align 8
  %3 = alloca %struct.dw_i3c_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_i3c_cmd*, align 8
  %7 = alloca %struct.dw_i3c_cmd*, align 8
  store %struct.dw_i3c_master* %0, %struct.dw_i3c_master** %2, align 8
  %8 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %2, align 8
  %9 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %10, align 8
  store %struct.dw_i3c_xfer* %11, %struct.dw_i3c_xfer** %3, align 8
  %12 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %3, align 8
  %13 = icmp ne %struct.dw_i3c_xfer* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %98

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %37, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %3, align 8
  %19 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %3, align 8
  %24 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %23, i32 0, i32 1
  %25 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %25, i64 %27
  store %struct.dw_i3c_cmd* %28, %struct.dw_i3c_cmd** %6, align 8
  %29 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %2, align 8
  %30 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %6, align 8
  %31 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %6, align 8
  %34 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dw_i3c_master_wr_tx_fifo(%struct.dw_i3c_master* %29, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %2, align 8
  %42 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @QUEUE_THLD_CTRL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @QUEUE_THLD_CTRL_RESP_BUF_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %3, align 8
  %52 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @QUEUE_THLD_CTRL_RESP_BUF(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %2, align 8
  %59 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @QUEUE_THLD_CTRL, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %95, %40
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %3, align 8
  %67 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %64
  %71 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %3, align 8
  %72 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %71, i32 0, i32 1
  %73 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %73, i64 %75
  store %struct.dw_i3c_cmd* %76, %struct.dw_i3c_cmd** %7, align 8
  %77 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %2, align 8
  %81 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @COMMAND_QUEUE_PORT, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  %86 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %2, align 8
  %90 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @COMMAND_QUEUE_PORT, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  br label %95

95:                                               ; preds = %70
  %96 = load i32, i32* %4, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %64

98:                                               ; preds = %14, %64
  ret void
}

declare dso_local i32 @dw_i3c_master_wr_tx_fifo(%struct.dw_i3c_master*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @QUEUE_THLD_CTRL_RESP_BUF(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
