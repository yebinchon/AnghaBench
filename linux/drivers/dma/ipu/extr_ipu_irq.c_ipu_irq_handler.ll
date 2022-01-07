; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_irq.c_ipu_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_irq.c_ipu_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_irq_bank = type { i32, i32 }
%struct.irq_desc = type { i32 }
%struct.ipu = type { i32 }
%struct.ipu_irq_map = type { i32 }

@IPU_IRQ_NR_BANKS = common dso_local global i32 0, align 4
@irq_bank = common dso_local global %struct.ipu_irq_bank* null, align 8
@bank_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"IPU: Interrupt on unmapped source %u bank %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @ipu_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.ipu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipu_irq_bank*, align 8
  %8 = alloca %struct.ipu_irq_map*, align 8
  %9 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call %struct.ipu* @irq_desc_get_handler_data(%struct.irq_desc* %10)
  store %struct.ipu* %11, %struct.ipu** %3, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %69, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IPU_IRQ_NR_BANKS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %12
  %17 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** @irq_bank, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ipu_irq_bank, %struct.ipu_irq_bank* %17, i64 %19
  store %struct.ipu_irq_bank* %20, %struct.ipu_irq_bank** %7, align 8
  %21 = call i32 @raw_spin_lock(i32* @bank_lock)
  %22 = load %struct.ipu*, %struct.ipu** %3, align 8
  %23 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** %7, align 8
  %24 = getelementptr inbounds %struct.ipu_irq_bank, %struct.ipu_irq_bank* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ipu_read_reg(%struct.ipu* %22, i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load %struct.ipu*, %struct.ipu** %3, align 8
  %28 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** %7, align 8
  %29 = getelementptr inbounds %struct.ipu_irq_bank, %struct.ipu_irq_bank* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ipu_read_reg(%struct.ipu* %27, i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %4, align 8
  %34 = call i32 @raw_spin_unlock(i32* @bank_lock)
  br label %35

35:                                               ; preds = %61, %56, %16
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @ffs(i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  %45 = xor i64 %44, -1
  %46 = load i64, i64* %4, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = call i32 @raw_spin_lock(i32* @bank_lock)
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 32, %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  %53 = call %struct.ipu_irq_map* @src2map(i32 %52)
  store %struct.ipu_irq_map* %53, %struct.ipu_irq_map** %8, align 8
  %54 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %8, align 8
  %55 = icmp ne %struct.ipu_irq_map* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %39
  %57 = call i32 @raw_spin_unlock(i32* @bank_lock)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %35

61:                                               ; preds = %39
  %62 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %8, align 8
  %63 = getelementptr inbounds %struct.ipu_irq_map, %struct.ipu_irq_map* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = call i32 @raw_spin_unlock(i32* @bank_lock)
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @generic_handle_irq(i32 %66)
  br label %35

68:                                               ; preds = %35
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %12

72:                                               ; preds = %12
  ret void
}

declare dso_local %struct.ipu* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @ipu_read_reg(%struct.ipu*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local %struct.ipu_irq_map* @src2map(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
