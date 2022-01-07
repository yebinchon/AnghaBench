; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_handle_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_handle_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_etr_ring_data = type { i64, i32, %struct.TYPE_2__*, i64, i32, i32, i32, i32 (i64*)* }
%struct.TYPE_2__ = type { i32, i32 }

@ADF_RING_EMPTY_SIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf_etr_ring_data*)* @adf_handle_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_handle_response(%struct.adf_etr_ring_data* %0) #0 {
  %2 = alloca %struct.adf_etr_ring_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store %struct.adf_etr_ring_data* %0, %struct.adf_etr_ring_data** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %6 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %9 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %7, %10
  %12 = inttoptr i64 %11 to i64*
  store i64* %12, i64** %4, align 8
  br label %13

13:                                               ; preds = %18, %1
  %14 = load i64*, i64** %4, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ADF_RING_EMPTY_SIG, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %13
  %19 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %20 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %19, i32 0, i32 7
  %21 = load i32 (i64*)*, i32 (i64*)** %20, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = call i32 %21(i64* %22)
  %24 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %25 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @atomic_dec(i32 %26)
  %28 = load i64, i64* @ADF_RING_EMPTY_SIG, align 8
  %29 = load i64*, i64** %4, align 8
  store i64 %28, i64* %29, align 8
  %30 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %31 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %34 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ADF_MSG_SIZE_TO_BYTES(i32 %35)
  %37 = add nsw i64 %32, %36
  %38 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %39 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ADF_RING_SIZE_MODULO(i32 %40)
  %42 = call i64 @adf_modulo(i64 %37, i32 %41)
  %43 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %44 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %3, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %3, align 8
  %47 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %48 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %51 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %49, %52
  %54 = inttoptr i64 %53 to i64*
  store i64* %54, i64** %4, align 8
  br label %13

55:                                               ; preds = %13
  %56 = load i64, i64* %3, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %60 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %65 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %70 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %2, align 8
  %73 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @WRITE_CSR_RING_HEAD(i32 %63, i32 %68, i32 %71, i64 %74)
  br label %76

76:                                               ; preds = %58, %55
  ret i32 0
}

declare dso_local i32 @atomic_dec(i32) #1

declare dso_local i64 @adf_modulo(i64, i32) #1

declare dso_local i64 @ADF_MSG_SIZE_TO_BYTES(i32) #1

declare dso_local i32 @ADF_RING_SIZE_MODULO(i32) #1

declare dso_local i32 @WRITE_CSR_RING_HEAD(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
