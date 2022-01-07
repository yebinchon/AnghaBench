; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_enable_ring_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_enable_ring_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_etr_bank_data = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adf_etr_bank_data*, i32)* @adf_enable_ring_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adf_enable_ring_irq(%struct.adf_etr_bank_data* %0, i32 %1) #0 {
  %3 = alloca %struct.adf_etr_bank_data*, align 8
  %4 = alloca i32, align 4
  store %struct.adf_etr_bank_data* %0, %struct.adf_etr_bank_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %3, align 8
  %6 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %5, i32 0, i32 4
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 1, %8
  %10 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %3, align 8
  %11 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %3, align 8
  %15 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %14, i32 0, i32 4
  %16 = call i32 @spin_unlock_bh(i32* %15)
  %17 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %3, align 8
  %18 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %3, align 8
  %21 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %3, align 8
  %24 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WRITE_CSR_INT_COL_EN(i32 %19, i32 %22, i32 %25)
  %27 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %3, align 8
  %28 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %3, align 8
  %31 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %3, align 8
  %34 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @WRITE_CSR_INT_COL_CTL(i32 %29, i32 %32, i32 %35)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @WRITE_CSR_INT_COL_EN(i32, i32, i32) #1

declare dso_local i32 @WRITE_CSR_INT_COL_CTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
