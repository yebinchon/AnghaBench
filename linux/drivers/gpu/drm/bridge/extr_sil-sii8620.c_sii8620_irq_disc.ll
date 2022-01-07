; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_disc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }

@REG_CBUS_DISC_INTR0 = common dso_local global i32 0, align 4
@VAL_CBUS_MHL_DISCON = common dso_local global i32 0, align 4
@BIT_RGND_READY_INT = common dso_local global i32 0, align 4
@REG_DISC_STAT2 = common dso_local global i32 0, align 4
@MSK_DISC_STAT2_RGND = common dso_local global i32 0, align 4
@VAL_RGND_1K = common dso_local global i32 0, align 4
@REG_DISC_CTRL9 = common dso_local global i32 0, align 4
@BIT_DISC_CTRL9_WAKE_DRVFLT = common dso_local global i32 0, align 4
@BIT_DISC_CTRL9_NOMHL_EST = common dso_local global i32 0, align 4
@BIT_DISC_CTRL9_WAKE_PULSE_BYPASS = common dso_local global i32 0, align 4
@REG_CBUS_DISC_INTR0_MASK = common dso_local global i32 0, align 4
@BIT_CBUS_MHL3_DISCON_INT = common dso_local global i32 0, align 4
@BIT_CBUS_MHL12_DISCON_INT = common dso_local global i32 0, align 4
@BIT_NOT_MHL_EST_INT = common dso_local global i32 0, align 4
@BIT_MHL_EST_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_irq_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_irq_disc(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %5 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %6 = load i32, i32* @REG_CBUS_DISC_INTR0, align 4
  %7 = call i32 @sii8620_readb(%struct.sii8620* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @VAL_CBUS_MHL_DISCON, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %14 = call i32 @sii8620_mhl_disconnected(%struct.sii8620* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @BIT_RGND_READY_INT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %22 = load i32, i32* @REG_DISC_STAT2, align 4
  %23 = call i32 @sii8620_readb(%struct.sii8620* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MSK_DISC_STAT2_RGND, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @VAL_RGND_1K, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %31 = call i32 @sii8620_mhl_discover(%struct.sii8620* %30)
  br label %49

32:                                               ; preds = %20
  %33 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %34 = load i32, i32* @REG_DISC_CTRL9, align 4
  %35 = load i32, i32* @BIT_DISC_CTRL9_WAKE_DRVFLT, align 4
  %36 = load i32, i32* @BIT_DISC_CTRL9_NOMHL_EST, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @BIT_DISC_CTRL9_WAKE_PULSE_BYPASS, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @REG_CBUS_DISC_INTR0_MASK, align 4
  %41 = load i32, i32* @BIT_RGND_READY_INT, align 4
  %42 = load i32, i32* @BIT_CBUS_MHL3_DISCON_INT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BIT_CBUS_MHL12_DISCON_INT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @BIT_NOT_MHL_EST_INT, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @sii8620_write_seq_static(%struct.sii8620* %33, i32 %34, i32 %39, i32 %40, i32 %47)
  br label %49

49:                                               ; preds = %32, %29
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @BIT_MHL_EST_INT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %57 = call i32 @sii8620_mhl_init(%struct.sii8620* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %60 = load i32, i32* @REG_CBUS_DISC_INTR0, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @sii8620_write(%struct.sii8620* %59, i32 %60, i32 %61)
  ret void
}

declare dso_local i32 @sii8620_readb(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_mhl_disconnected(%struct.sii8620*) #1

declare dso_local i32 @sii8620_mhl_discover(%struct.sii8620*) #1

declare dso_local i32 @sii8620_write_seq_static(%struct.sii8620*, i32, i32, i32, i32) #1

declare dso_local i32 @sii8620_mhl_init(%struct.sii8620*) #1

declare dso_local i32 @sii8620_write(%struct.sii8620*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
