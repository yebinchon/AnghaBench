; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_configure_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_configure_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_etr_ring_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ADF_RING_NEAR_WATERMARK_512 = common dso_local global i32 0, align 4
@ADF_RING_NEAR_WATERMARK_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adf_etr_ring_data*)* @adf_configure_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adf_configure_rx_ring(%struct.adf_etr_ring_data* %0) #0 {
  %2 = alloca %struct.adf_etr_ring_data*, align 8
  %3 = alloca i32, align 4
  store %struct.adf_etr_ring_data* %0, %struct.adf_etr_ring_data** %2, align 8
  %4 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %5 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @ADF_RING_NEAR_WATERMARK_512, align 4
  %8 = load i32, i32* @ADF_RING_NEAR_WATERMARK_0, align 4
  %9 = call i32 @BUILD_RESP_RING_CONFIG(i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %11 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %16 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %21 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @WRITE_CSR_RING_CONFIG(i32 %14, i32 %19, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @BUILD_RESP_RING_CONFIG(i32, i32, i32) #1

declare dso_local i32 @WRITE_CSR_RING_CONFIG(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
