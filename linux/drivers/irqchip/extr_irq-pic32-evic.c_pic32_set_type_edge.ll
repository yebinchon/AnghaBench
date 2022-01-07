; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-pic32-evic.c_pic32_set_type_edge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-pic32-evic.c_pic32_set_type_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.evic_chip_data = type { i64* }

@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@IRQ_SET_MASK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @pic32_set_type_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_set_type_edge(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evic_chip_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call %struct.evic_chip_data* @irqd_to_priv(%struct.irq_data* %9)
  store %struct.evic_chip_data* %10, %struct.evic_chip_data** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EBADR, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %48, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.evic_chip_data*, %struct.evic_chip_data** %6, align 8
  %22 = getelementptr inbounds %struct.evic_chip_data, %struct.evic_chip_data* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @ARRAY_SIZE(i64* %23)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %19
  %27 = load %struct.evic_chip_data*, %struct.evic_chip_data** %6, align 8
  %28 = getelementptr inbounds %struct.evic_chip_data, %struct.evic_chip_data* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %35 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @pic32_set_ext_polarity(i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %56

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %26
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %19

51:                                               ; preds = %19
  %52 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @irqd_set_trigger_type(%struct.irq_data* %52, i32 %53)
  %55 = load i32, i32* @IRQ_SET_MASK_OK, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %44, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.evic_chip_data* @irqd_to_priv(%struct.irq_data*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @pic32_set_ext_polarity(i32, i32) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
