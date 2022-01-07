; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_ring_response_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_ring_response_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_etr_bank_data = type { i32, i32*, i32, i32 }

@ADF_ETR_MAX_RINGS_PER_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adf_etr_bank_data*)* @adf_ring_response_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adf_ring_response_handler(%struct.adf_etr_bank_data* %0) #0 {
  %2 = alloca %struct.adf_etr_bank_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adf_etr_bank_data* %0, %struct.adf_etr_bank_data** %2, align 8
  %5 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %6 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %9 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @READ_CSR_E_STAT(i32 %7, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %15 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %13, %16
  store i32 %17, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %37, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ADF_ETR_MAX_RINGS_PER_BANK, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %2, align 8
  %30 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @adf_handle_response(i32* %34)
  br label %36

36:                                               ; preds = %28, %22
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %18

40:                                               ; preds = %18
  ret void
}

declare dso_local i32 @READ_CSR_E_STAT(i32, i32) #1

declare dso_local i32 @adf_handle_response(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
