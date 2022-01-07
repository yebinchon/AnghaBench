; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_send_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_etr_ring_data = type { i32, i64, i32, %struct.TYPE_2__*, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adf_send_message(%struct.adf_etr_ring_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adf_etr_ring_data*, align 8
  %5 = alloca i32*, align 8
  store %struct.adf_etr_ring_data* %0, %struct.adf_etr_ring_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %7 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @atomic_add_return(i32 1, i32 %8)
  %10 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %11 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %14 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ADF_MAX_INFLIGHTS(i32 %12, i32 %15)
  %17 = icmp sgt i64 %9, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %20 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @atomic_dec(i32 %21)
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %78

25:                                               ; preds = %2
  %26 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %27 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %30 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %33 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %39 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ADF_MSG_SIZE_TO_BYTES(i32 %40)
  %42 = call i32 @memcpy(i8* %36, i32* %37, i64 %41)
  %43 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %44 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %47 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ADF_MSG_SIZE_TO_BYTES(i32 %48)
  %50 = add nsw i64 %45, %49
  %51 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %52 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ADF_RING_SIZE_MODULO(i32 %53)
  %55 = call i64 @adf_modulo(i64 %50, i32 %54)
  %56 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %57 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %59 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %64 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %69 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %72 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @WRITE_CSR_RING_TAIL(i32 %62, i32 %67, i32 %70, i64 %73)
  %75 = load %struct.adf_etr_ring_data*, %struct.adf_etr_ring_data** %4, align 8
  %76 = getelementptr inbounds %struct.adf_etr_ring_data, %struct.adf_etr_ring_data* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_bh(i32* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %25, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @atomic_add_return(i32, i32) #1

declare dso_local i64 @ADF_MAX_INFLIGHTS(i32, i32) #1

declare dso_local i32 @atomic_dec(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i64 @ADF_MSG_SIZE_TO_BYTES(i32) #1

declare dso_local i64 @adf_modulo(i64, i32) #1

declare dso_local i32 @ADF_RING_SIZE_MODULO(i32) #1

declare dso_local i32 @WRITE_CSR_RING_TAIL(i32, i32, i32, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
