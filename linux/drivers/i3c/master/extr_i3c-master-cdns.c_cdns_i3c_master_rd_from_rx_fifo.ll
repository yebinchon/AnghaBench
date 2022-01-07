; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_rd_from_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_rd_from_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_i3c_master = type { i64 }

@RX_FIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_i3c_master*, i32*, i32)* @cdns_i3c_master_rd_from_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_i3c_master_rd_from_rx_fifo(%struct.cdns_i3c_master* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.cdns_i3c_master*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cdns_i3c_master* %0, %struct.cdns_i3c_master** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %9 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RX_FIFO, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 4
  %16 = call i32 @readsl(i64 %12, i32* %13, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 3
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %22 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RX_FIFO, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readsl(i64 %25, i32* %7, i32 1)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, -4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 3
  %34 = call i32 @memcpy(i32* %31, i32* %7, i32 %33)
  br label %35

35:                                               ; preds = %20, %3
  ret void
}

declare dso_local i32 @readsl(i64, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
