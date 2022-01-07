; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-hps2fpga.c__alt_hps2fpga_enable_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-hps2fpga.c__alt_hps2fpga_enable_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_hps2fpga_data = type { i32, i32, i32 }

@l3_remap_lock = common dso_local global i32 0, align 4
@ALT_L3_REMAP_MPUZERO_MSK = common dso_local global i32 0, align 4
@l3_remap_shadow = common dso_local global i32 0, align 4
@ALT_L3_REMAP_OFST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_hps2fpga_data*, i32)* @_alt_hps2fpga_enable_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_alt_hps2fpga_enable_set(%struct.altera_hps2fpga_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.altera_hps2fpga_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.altera_hps2fpga_data* %0, %struct.altera_hps2fpga_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %4, align 8
  %12 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @reset_control_deassert(i32 %13)
  store i32 %14, i32* %7, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %4, align 8
  %17 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @reset_control_assert(i32 %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %20
  %26 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %4, align 8
  %27 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_lock_irqsave(i32* @l3_remap_lock, i64 %31)
  %33 = load i32, i32* @ALT_L3_REMAP_MPUZERO_MSK, align 4
  %34 = load i32, i32* @l3_remap_shadow, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @l3_remap_shadow, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %4, align 8
  %40 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @l3_remap_shadow, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @l3_remap_shadow, align 4
  br label %51

44:                                               ; preds = %30
  %45 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %4, align 8
  %46 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @l3_remap_shadow, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* @l3_remap_shadow, align 4
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %4, align 8
  %53 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ALT_L3_REMAP_OFST, align 4
  %56 = load i32, i32* @l3_remap_shadow, align 4
  %57 = call i32 @regmap_write(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* @l3_remap_lock, i64 %58)
  br label %60

60:                                               ; preds = %51, %25
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
