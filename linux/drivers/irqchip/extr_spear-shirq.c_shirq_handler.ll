; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_spear-shirq.c_shirq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_spear-shirq.c_shirq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.spear_shirq = type { i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @shirq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shirq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.spear_shirq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.spear_shirq* @irq_desc_get_handler_data(%struct.irq_desc* %6)
  store %struct.spear_shirq* %7, %struct.spear_shirq** %3, align 8
  %8 = load %struct.spear_shirq*, %struct.spear_shirq** %3, align 8
  %9 = getelementptr inbounds %struct.spear_shirq, %struct.spear_shirq* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.spear_shirq*, %struct.spear_shirq** %3, align 8
  %12 = getelementptr inbounds %struct.spear_shirq, %struct.spear_shirq* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = call i32 @readl(i64 %14)
  %16 = load %struct.spear_shirq*, %struct.spear_shirq** %3, align 8
  %17 = getelementptr inbounds %struct.spear_shirq, %struct.spear_shirq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %15, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.spear_shirq*, %struct.spear_shirq** %3, align 8
  %21 = getelementptr inbounds %struct.spear_shirq, %struct.spear_shirq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %28, %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @__ffs(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.spear_shirq*, %struct.spear_shirq** %3, align 8
  %37 = getelementptr inbounds %struct.spear_shirq, %struct.spear_shirq* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @generic_handle_irq(i64 %41)
  br label %25

43:                                               ; preds = %25
  ret void
}

declare dso_local %struct.spear_shirq* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @generic_handle_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
