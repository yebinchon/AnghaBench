; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-keystone.c_keystone_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-keystone.c_keystone_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keystone_irq_device = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"start irq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"pending 0x%lx, mask 0x%x\0A\00", align 1
@BIT_OFS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"pending after mask 0x%lx\0A\00", align 1
@KEYSTONE_N_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"dispatch bit %d, virq %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"spurious irq detected hwirq %d, virq %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"end irq %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @keystone_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.keystone_irq_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.keystone_irq_device*
  store %struct.keystone_irq_device* %11, %struct.keystone_irq_device** %5, align 8
  %12 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %13 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %18 = call i64 @keystone_irq_readl(%struct.keystone_irq_device* %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @keystone_irq_writel(%struct.keystone_irq_device* %19, i64 %20)
  %22 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %23 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %28 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %26, i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @BIT_OFS, align 8
  %33 = lshr i64 %31, %32
  %34 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %35 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = xor i64 %36, -1
  %38 = and i64 %33, %37
  store i64 %38, i64* %7, align 8
  %39 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %40 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %88, %2
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @KEYSTONE_N_IRQ, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %91

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @BIT(i32 %50)
  %52 = load i64, i64* %7, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %49
  %56 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %57 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @irq_find_mapping(i32 %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %62 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %55
  %70 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %71 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @dev_warn(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %55
  %77 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %78 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %77, i32 0, i32 2
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @raw_spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @generic_handle_irq(i32 %81)
  %83 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %84 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %83, i32 0, i32 2
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @raw_spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %87

87:                                               ; preds = %76, %49
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %45

91:                                               ; preds = %45
  %92 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %5, align 8
  %93 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %97
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @keystone_irq_readl(%struct.keystone_irq_device*) #1

declare dso_local i32 @keystone_irq_writel(%struct.keystone_irq_device*, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
