; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp5_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp5_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_device = type { i32, i64, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ccp5_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp5_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ccp_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ccp_device*
  store %struct.ccp_device* %7, %struct.ccp_device** %5, align 8
  %8 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %9 = call i32 @ccp5_disable_queue_interrupts(%struct.ccp_device* %8)
  %10 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %11 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %15 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %20 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %19, i32 0, i32 0
  %21 = call i32 @tasklet_schedule(i32* %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %24 = ptrtoint %struct.ccp_device* %23 to i64
  %25 = call i32 @ccp5_irq_bh(i64 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %27
}

declare dso_local i32 @ccp5_disable_queue_interrupts(%struct.ccp_device*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @ccp5_irq_bh(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
