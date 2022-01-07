; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_send_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_send_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }

@REG_MDT_XMIT_CTRL = common dso_local global i32 0, align 4
@BIT_MDT_XMIT_CTRL_EN = common dso_local global i32 0, align 4
@BIT_MDT_XMIT_CTRL_FIXED_BURST_LEN = common dso_local global i32 0, align 4
@MHL_BURST_ID_HID_PAYLOAD = common dso_local global i32 0, align 4
@REG_MDT_XMIT_WRITE_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_send_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_send_features(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca [16 x i32], align 16
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %4 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %5 = load i32, i32* @REG_MDT_XMIT_CTRL, align 4
  %6 = load i32, i32* @BIT_MDT_XMIT_CTRL_EN, align 4
  %7 = load i32, i32* @BIT_MDT_XMIT_CTRL_FIXED_BURST_LEN, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @sii8620_write(%struct.sii8620* %4, i32 %5, i32 %8)
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %11 = bitcast i32* %10 to i8*
  %12 = load i32, i32* @MHL_BURST_ID_HID_PAYLOAD, align 4
  %13 = call i32 @sii8620_mhl_burst_emsc_support_set(i8* %11, i32 %12)
  %14 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %15 = load i32, i32* @REG_MDT_XMIT_WRITE_PORT, align 4
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = call i32 @sii8620_write_buf(%struct.sii8620* %14, i32 %15, i32* %16, i32 %18)
  ret void
}

declare dso_local i32 @sii8620_write(%struct.sii8620*, i32, i32) #1

declare dso_local i32 @sii8620_mhl_burst_emsc_support_set(i8*, i32) #1

declare dso_local i32 @sii8620_write_buf(%struct.sii8620*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
