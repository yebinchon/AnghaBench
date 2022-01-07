; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_irq.c_viadrv_acknowledge_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_irq.c_viadrv_acknowledge_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@VIA_REG_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @viadrv_acknowledge_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viadrv_acknowledge_irqs(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = load i32, i32* @VIA_REG_INTERRUPT, align 4
  %9 = call i32 @via_read(%struct.TYPE_5__* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = load i32, i32* @VIA_REG_INTERRUPT, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %12, %15
  %17 = call i32 @via_write(%struct.TYPE_5__* %10, i32 %11, i32 %16)
  br label %18

18:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @via_read(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @via_write(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
