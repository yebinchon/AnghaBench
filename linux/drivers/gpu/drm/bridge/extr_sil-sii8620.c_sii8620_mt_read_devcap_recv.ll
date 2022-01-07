; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mt_read_devcap_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mt_read_devcap_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }
%struct.sii8620_mt_msg = type { i64* }

@BIT_EDID_CTRL_DEVCAP_SELECT_DEVCAP = common dso_local global i32 0, align 4
@BIT_EDID_CTRL_EDID_FIFO_ADDR_AUTO = common dso_local global i32 0, align 4
@BIT_EDID_CTRL_EDID_MODE_EN = common dso_local global i32 0, align 4
@MHL_READ_XDEVCAP = common dso_local global i64 0, align 8
@BIT_EDID_CTRL_XDEVCAP_EN = common dso_local global i32 0, align 4
@REG_INTR9_MASK = common dso_local global i32 0, align 4
@BIT_INTR9_DEVCAP_DONE = common dso_local global i32 0, align 4
@BIT_INTR9_EDID_DONE = common dso_local global i32 0, align 4
@BIT_INTR9_EDID_ERROR = common dso_local global i32 0, align 4
@REG_EDID_CTRL = common dso_local global i32 0, align 4
@REG_EDID_FIFO_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*, %struct.sii8620_mt_msg*)* @sii8620_mt_read_devcap_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_mt_read_devcap_recv(%struct.sii8620* %0, %struct.sii8620_mt_msg* %1) #0 {
  %3 = alloca %struct.sii8620*, align 8
  %4 = alloca %struct.sii8620_mt_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %3, align 8
  store %struct.sii8620_mt_msg* %1, %struct.sii8620_mt_msg** %4, align 8
  %6 = load i32, i32* @BIT_EDID_CTRL_DEVCAP_SELECT_DEVCAP, align 4
  %7 = load i32, i32* @BIT_EDID_CTRL_EDID_FIFO_ADDR_AUTO, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @BIT_EDID_CTRL_EDID_MODE_EN, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %4, align 8
  %12 = getelementptr inbounds %struct.sii8620_mt_msg, %struct.sii8620_mt_msg* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MHL_READ_XDEVCAP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @BIT_EDID_CTRL_XDEVCAP_EN, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %24 = load i32, i32* @REG_INTR9_MASK, align 4
  %25 = load i32, i32* @BIT_INTR9_DEVCAP_DONE, align 4
  %26 = load i32, i32* @BIT_INTR9_EDID_DONE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BIT_INTR9_EDID_ERROR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @REG_EDID_CTRL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @REG_EDID_FIFO_ADDR, align 4
  %33 = call i32 @sii8620_write_seq(%struct.sii8620* %23, i32 %24, i32 %29, i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %4, align 8
  %35 = getelementptr inbounds %struct.sii8620_mt_msg, %struct.sii8620_mt_msg* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MHL_READ_XDEVCAP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %43 = call i32 @sii8620_mr_xdevcap(%struct.sii8620* %42)
  br label %47

44:                                               ; preds = %22
  %45 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %46 = call i32 @sii8620_mr_devcap(%struct.sii8620* %45)
  br label %47

47:                                               ; preds = %44, %41
  ret void
}

declare dso_local i32 @sii8620_write_seq(%struct.sii8620*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sii8620_mr_xdevcap(%struct.sii8620*) #1

declare dso_local i32 @sii8620_mr_devcap(%struct.sii8620*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
