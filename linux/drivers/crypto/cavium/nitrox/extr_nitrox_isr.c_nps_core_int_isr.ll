; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_nps_core_int_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_nps_core_int_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_q_vector = type { %struct.nitrox_device* }
%struct.nitrox_device = type { i32 }
%union.nps_core_int_active = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@NPS_CORE_INT_ACTIVE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nps_core_int_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nps_core_int_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nitrox_q_vector*, align 8
  %6 = alloca %struct.nitrox_device*, align 8
  %7 = alloca %union.nps_core_int_active, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.nitrox_q_vector*
  store %struct.nitrox_q_vector* %9, %struct.nitrox_q_vector** %5, align 8
  %10 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %11 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %10, i32 0, i32 0
  %12 = load %struct.nitrox_device*, %struct.nitrox_device** %11, align 8
  store %struct.nitrox_device* %12, %struct.nitrox_device** %6, align 8
  %13 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %14 = load i32, i32* @NPS_CORE_INT_ACTIVE, align 4
  %15 = call i32 @nitrox_read_csr(%struct.nitrox_device* %13, i32 %14)
  %16 = bitcast %union.nps_core_int_active* %7 to i32*
  store i32 %15, i32* %16, align 8
  %17 = bitcast %union.nps_core_int_active* %7 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %23 = call i32 @clear_nps_core_err_intr(%struct.nitrox_device* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = bitcast %union.nps_core_int_active* %7 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %31 = call i32 @clear_nps_pkt_err_intr(%struct.nitrox_device* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = bitcast %union.nps_core_int_active* %7 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %39 = call i32 @clear_pom_err_intr(%struct.nitrox_device* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = bitcast %union.nps_core_int_active* %7 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %47 = call i32 @clear_pem_err_intr(%struct.nitrox_device* %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = bitcast %union.nps_core_int_active* %7 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %55 = call i32 @clear_lbc_err_intr(%struct.nitrox_device* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = bitcast %union.nps_core_int_active* %7 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %63 = call i32 @clear_efl_err_intr(%struct.nitrox_device* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = bitcast %union.nps_core_int_active* %7 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %71 = call i32 @clear_bmi_err_intr(%struct.nitrox_device* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = bitcast %union.nps_core_int_active* %7 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %79 = call i32 @nitrox_pf2vf_mbox_handler(%struct.nitrox_device* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = bitcast %union.nps_core_int_active* %7 to %struct.TYPE_2__*
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %84 = load i32, i32* @NPS_CORE_INT_ACTIVE, align 4
  %85 = bitcast %union.nps_core_int_active* %7 to i32*
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @nitrox_write_csr(%struct.nitrox_device* %83, i32 %84, i32 %86)
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %88
}

declare dso_local i32 @nitrox_read_csr(%struct.nitrox_device*, i32) #1

declare dso_local i32 @clear_nps_core_err_intr(%struct.nitrox_device*) #1

declare dso_local i32 @clear_nps_pkt_err_intr(%struct.nitrox_device*) #1

declare dso_local i32 @clear_pom_err_intr(%struct.nitrox_device*) #1

declare dso_local i32 @clear_pem_err_intr(%struct.nitrox_device*) #1

declare dso_local i32 @clear_lbc_err_intr(%struct.nitrox_device*) #1

declare dso_local i32 @clear_efl_err_intr(%struct.nitrox_device*) #1

declare dso_local i32 @clear_bmi_err_intr(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_pf2vf_mbox_handler(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
