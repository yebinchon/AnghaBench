; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-dev.c_sp_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-dev.c_sp_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_device = type { i32, i32 (i32, i32)*, i32, i32 (i32, i32)* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sp_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sp_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sp_device*
  store %struct.sp_device* %7, %struct.sp_device** %5, align 8
  %8 = load %struct.sp_device*, %struct.sp_device** %5, align 8
  %9 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %8, i32 0, i32 3
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = icmp ne i32 (i32, i32)* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.sp_device*, %struct.sp_device** %5, align 8
  %14 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %13, i32 0, i32 3
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.sp_device*, %struct.sp_device** %5, align 8
  %18 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %15(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.sp_device*, %struct.sp_device** %5, align 8
  %23 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %22, i32 0, i32 1
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = icmp ne i32 (i32, i32)* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.sp_device*, %struct.sp_device** %5, align 8
  %28 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %27, i32 0, i32 1
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.sp_device*, %struct.sp_device** %5, align 8
  %32 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %29(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %26, %21
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
