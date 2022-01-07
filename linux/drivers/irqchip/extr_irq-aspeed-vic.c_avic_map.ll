; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-aspeed-vic.c_avic_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-aspeed-vic.c_avic_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.aspeed_vic* }
%struct.aspeed_vic = type { i32* }

@EPERM = common dso_local global i32 0, align 4
@avic_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @avic_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avic_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aspeed_vic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load %struct.aspeed_vic*, %struct.aspeed_vic** %12, align 8
  store %struct.aspeed_vic* %13, %struct.aspeed_vic** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 5
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 31
  %18 = shl i32 1, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %3
  %25 = load %struct.aspeed_vic*, %struct.aspeed_vic** %8, align 8
  %26 = getelementptr inbounds %struct.aspeed_vic, %struct.aspeed_vic* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @handle_edge_irq, align 4
  %38 = call i32 @irq_set_chip_and_handler(i32 %36, i32* @avic_chip, i32 %37)
  br label %43

39:                                               ; preds = %24
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @handle_level_irq, align 4
  %42 = call i32 @irq_set_chip_and_handler(i32 %40, i32* @avic_chip, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.aspeed_vic*, %struct.aspeed_vic** %8, align 8
  %46 = call i32 @irq_set_chip_data(i32 %44, %struct.aspeed_vic* %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @irq_set_probe(i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.aspeed_vic*) #1

declare dso_local i32 @irq_set_probe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
