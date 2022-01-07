; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_ddc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_ddc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }

@REG_INTR3 = common dso_local global i32 0, align 4
@BIT_DDC_CMD_DONE = common dso_local global i32 0, align 4
@REG_INTR3_MASK = common dso_local global i32 0, align 4
@RCHANGE = common dso_local global i32 0, align 4
@MHL_INT_RC_FEAT_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_irq_ddc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_irq_ddc(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %4 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %5 = load i32, i32* @REG_INTR3, align 4
  %6 = call i32 @sii8620_readb(%struct.sii8620* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @BIT_DDC_CMD_DONE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %13 = load i32, i32* @REG_INTR3_MASK, align 4
  %14 = call i32 @sii8620_write(%struct.sii8620* %12, i32 %13, i32 0)
  %15 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %16 = call i64 @sii8620_is_mhl3(%struct.sii8620* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %20 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %25 = load i32, i32* @RCHANGE, align 4
  %26 = call i32 @MHL_INT_REG(i32 %25)
  %27 = load i32, i32* @MHL_INT_RC_FEAT_REQ, align 4
  %28 = call i32 @sii8620_mt_set_int(%struct.sii8620* %24, i32 %26, i32 %27)
  br label %32

29:                                               ; preds = %18, %11
  %30 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %31 = call i32 @sii8620_enable_hpd(%struct.sii8620* %30)
  br label %32

32:                                               ; preds = %29, %23
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %35 = load i32, i32* @REG_INTR3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @sii8620_write(%struct.sii8620* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @sii8620_readb(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_write(%struct.sii8620*, i32, i32) #1

declare dso_local i64 @sii8620_is_mhl3(%struct.sii8620*) #1

declare dso_local i32 @sii8620_mt_set_int(%struct.sii8620*, i32, i32) #1

declare dso_local i32 @MHL_INT_REG(i32) #1

declare dso_local i32 @sii8620_enable_hpd(%struct.sii8620*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
