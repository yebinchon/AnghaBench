; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_irq_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_irq_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_dev = type { i32, i32, i32 }

@FLAGS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Interrupt when no active requests.\0A\00", align 1
@FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_sham_dev*)* @omap_sham_irq_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_irq_common(%struct.omap_sham_dev* %0) #0 {
  %2 = alloca %struct.omap_sham_dev*, align 8
  store %struct.omap_sham_dev* %0, %struct.omap_sham_dev** %2, align 8
  %3 = load i32, i32* @FLAGS_BUSY, align 4
  %4 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %5 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %4, i32 0, i32 1
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %10 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_warn(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @FLAGS_OUTPUT_READY, align 4
  %15 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %16 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %15, i32 0, i32 1
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %2, align 8
  %19 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %18, i32 0, i32 0
  %20 = call i32 @tasklet_schedule(i32* %19)
  br label %21

21:                                               ; preds = %13, %8
  %22 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %22
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
