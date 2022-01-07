; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_irq_ring_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_irq_ring_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_ring_irq_data = type { i32, %struct.safexcel_crypto_priv* }
%struct.safexcel_crypto_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @safexcel_irq_ring_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_irq_ring_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.safexcel_ring_irq_data*, align 8
  %6 = alloca %struct.safexcel_crypto_priv*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.safexcel_ring_irq_data*
  store %struct.safexcel_ring_irq_data* %9, %struct.safexcel_ring_irq_data** %5, align 8
  %10 = load %struct.safexcel_ring_irq_data*, %struct.safexcel_ring_irq_data** %5, align 8
  %11 = getelementptr inbounds %struct.safexcel_ring_irq_data, %struct.safexcel_ring_irq_data* %10, i32 0, i32 1
  %12 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  store %struct.safexcel_crypto_priv* %12, %struct.safexcel_crypto_priv** %6, align 8
  %13 = load %struct.safexcel_ring_irq_data*, %struct.safexcel_ring_irq_data** %5, align 8
  %14 = getelementptr inbounds %struct.safexcel_ring_irq_data, %struct.safexcel_ring_irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @safexcel_handle_result_descriptor(%struct.safexcel_crypto_priv* %16, i32 %17)
  %19 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %20 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %28 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @queue_work(i32 %26, i32* %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @safexcel_handle_result_descriptor(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
