; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }

@REG_INTR9 = common dso_local global i32 0, align 4
@BIT_INTR9_DEVCAP_DONE = common dso_local global i32 0, align 4
@MT_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_irq_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_irq_edid(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %4 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %5 = load i32, i32* @REG_INTR9, align 4
  %6 = call i32 @sii8620_readb(%struct.sii8620* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %8 = load i32, i32* @REG_INTR9, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @sii8620_write(%struct.sii8620* %7, i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @BIT_INTR9_DEVCAP_DONE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @MT_STATE_DONE, align 4
  %17 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %18 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @sii8620_readb(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_write(%struct.sii8620*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
