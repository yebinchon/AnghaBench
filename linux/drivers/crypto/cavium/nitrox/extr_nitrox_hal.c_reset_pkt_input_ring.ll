; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_reset_pkt_input_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_reset_pkt_input_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.nps_pkt_in_instr_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%union.nps_pkt_in_done_cnts = type { i8* }

@MAX_CSR_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_device*, i32)* @reset_pkt_input_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_pkt_input_ring(%struct.nitrox_device* %0, i32 %1) #0 {
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.nps_pkt_in_instr_ctl, align 8
  %6 = alloca %union.nps_pkt_in_done_cnts, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @MAX_CSR_RETRIES, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @NPS_PKT_IN_INSTR_CTLX(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i8* @nitrox_read_csr(%struct.nitrox_device* %12, i32 %13)
  %15 = bitcast %union.nps_pkt_in_instr_ctl* %5 to i8**
  store i8* %14, i8** %15, align 8
  %16 = bitcast %union.nps_pkt_in_instr_ctl* %5 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %19 = load i32, i32* %8, align 4
  %20 = bitcast %union.nps_pkt_in_instr_ctl* %5 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @nitrox_write_csr(%struct.nitrox_device* %18, i32 %19, i8* %21)
  %23 = call i32 @usleep_range(i32 100, i32 150)
  br label %24

24:                                               ; preds = %36, %2
  %25 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @nitrox_read_csr(%struct.nitrox_device* %25, i32 %26)
  %28 = bitcast %union.nps_pkt_in_instr_ctl* %5 to i8**
  store i8* %27, i8** %28, align 8
  %29 = bitcast %union.nps_pkt_in_instr_ctl* %5 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %40

34:                                               ; preds = %24
  %35 = call i32 @udelay(i32 50)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %24, label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @NPS_PKT_IN_DONE_CNTSX(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @nitrox_read_csr(%struct.nitrox_device* %43, i32 %44)
  %46 = bitcast %union.nps_pkt_in_done_cnts* %6 to i8**
  store i8* %45, i8** %46, align 8
  %47 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %48 = load i32, i32* %8, align 4
  %49 = bitcast %union.nps_pkt_in_done_cnts* %6 to i8**
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @nitrox_write_csr(%struct.nitrox_device* %47, i32 %48, i8* %50)
  %52 = call i32 @usleep_range(i32 50, i32 100)
  ret void
}

declare dso_local i32 @NPS_PKT_IN_INSTR_CTLX(i32) #1

declare dso_local i8* @nitrox_read_csr(%struct.nitrox_device*, i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @NPS_PKT_IN_DONE_CNTSX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
