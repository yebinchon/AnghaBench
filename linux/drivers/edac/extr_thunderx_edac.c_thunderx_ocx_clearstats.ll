; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_ocx_clearstats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_ocx_clearstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunderx_ocx = type { i64 }

@OCX_RX_LANES = common dso_local global i32 0, align 4
@OCX_LNE_CFG_RX_STAT_RDCLR = common dso_local global i32 0, align 4
@OCX_LNE_CFG_RX_STAT_ENA = common dso_local global i32 0, align 4
@OCX_RX_LANE_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thunderx_ocx*)* @thunderx_ocx_clearstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunderx_ocx_clearstats(%struct.thunderx_ocx* %0) #0 {
  %2 = alloca %struct.thunderx_ocx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.thunderx_ocx* %0, %struct.thunderx_ocx** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %50, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @OCX_RX_LANES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %53

10:                                               ; preds = %6
  %11 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %2, align 8
  %12 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @OCX_LNE_CFG(i32 %14)
  %16 = add nsw i64 %13, %15
  %17 = call i32 @readq(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @OCX_LNE_CFG_RX_STAT_RDCLR, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @OCX_LNE_CFG_RX_STAT_ENA, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %2, align 8
  %27 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @OCX_LNE_CFG(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i32 @writeq(i32 %25, i64 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %46, %10
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @OCX_RX_LANE_STATS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %2, align 8
  %39 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @OCX_LNE_STAT(i32 %41, i32 %42)
  %44 = add nsw i64 %40, %43
  %45 = call i32 @readq(i64 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %33

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %6

53:                                               ; preds = %6
  ret void
}

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @OCX_LNE_CFG(i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @OCX_LNE_STAT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
