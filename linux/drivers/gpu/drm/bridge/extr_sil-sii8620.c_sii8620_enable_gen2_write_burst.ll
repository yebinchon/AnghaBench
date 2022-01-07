; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_enable_gen2_write_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_enable_gen2_write_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32, i64 }

@BIT_MDT_RCV_CTRL_MDT_RCV_EN = common dso_local global i32 0, align 4
@CM_MHL1 = common dso_local global i64 0, align 8
@BIT_MDT_RCV_CTRL_MDT_DELAY_RCV_EN = common dso_local global i32 0, align 4
@REG_MDT_RCV_TIMEOUT = common dso_local global i32 0, align 4
@REG_MDT_RCV_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_enable_gen2_write_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_enable_gen2_write_burst(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %4 = load i32, i32* @BIT_MDT_RCV_CTRL_MDT_RCV_EN, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %6 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %12 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CM_MHL1, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @BIT_MDT_RCV_CTRL_MDT_DELAY_RCV_EN, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %10
  %21 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %22 = load i32, i32* @REG_MDT_RCV_TIMEOUT, align 4
  %23 = load i32, i32* @REG_MDT_RCV_CTRL, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @sii8620_write_seq(%struct.sii8620* %21, i32 %22, i32 100, i32 %23, i32 %24)
  %26 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %27 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @sii8620_write_seq(%struct.sii8620*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
