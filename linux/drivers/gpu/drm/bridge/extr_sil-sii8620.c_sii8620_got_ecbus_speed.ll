; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_got_ecbus_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_got_ecbus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }

@CURR_ECBUS_MODE = common dso_local global i32 0, align 4
@MHL_XDS_ECBUS_S = common dso_local global i32 0, align 4
@MHL_XDS_SLOT_MODE_8BIT = common dso_local global i32 0, align 4
@MHL_RAP_CBUS_MODE_UP = common dso_local global i32 0, align 4
@sii8620_ecbus_up = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*, i32)* @sii8620_got_ecbus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_got_ecbus_speed(%struct.sii8620* %0, i32 %1) #0 {
  %3 = alloca %struct.sii8620*, align 8
  %4 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %22

8:                                                ; preds = %2
  %9 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %10 = load i32, i32* @CURR_ECBUS_MODE, align 4
  %11 = call i32 @MHL_XDS_REG(i32 %10)
  %12 = load i32, i32* @MHL_XDS_ECBUS_S, align 4
  %13 = load i32, i32* @MHL_XDS_SLOT_MODE_8BIT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @sii8620_mt_write_stat(%struct.sii8620* %9, i32 %11, i32 %14)
  %16 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %17 = load i32, i32* @MHL_RAP_CBUS_MODE_UP, align 4
  %18 = call i32 @sii8620_mt_rap(%struct.sii8620* %16, i32 %17)
  %19 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %20 = load i32, i32* @sii8620_ecbus_up, align 4
  %21 = call i32 @sii8620_mt_set_cont(%struct.sii8620* %19, i32 %20)
  br label %22

22:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @sii8620_mt_write_stat(%struct.sii8620*, i32, i32) #1

declare dso_local i32 @MHL_XDS_REG(i32) #1

declare dso_local i32 @sii8620_mt_rap(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_mt_set_cont(%struct.sii8620*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
