; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_enable_pkt_solicit_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_enable_pkt_solicit_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.nps_pkt_slc_ctl = type { i64, [8 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MAX_CSR_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_pkt_solicit_port(%struct.nitrox_device* %0, i32 %1) #0 {
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.nps_pkt_slc_ctl, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @MAX_CSR_RETRIES, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @NPS_PKT_SLC_CTLX(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = bitcast %union.nps_pkt_slc_ctl* %5 to i64*
  store i64 0, i64* %11, align 8
  %12 = bitcast %union.nps_pkt_slc_ctl* %5 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = bitcast %union.nps_pkt_slc_ctl* %5 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = bitcast %union.nps_pkt_slc_ctl* %5 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 1, i32* %17, align 8
  %18 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = bitcast %union.nps_pkt_slc_ctl* %5 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @nitrox_write_csr(%struct.nitrox_device* %18, i32 %19, i64 %21)
  br label %23

23:                                               ; preds = %35, %2
  %24 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @nitrox_read_csr(%struct.nitrox_device* %24, i32 %25)
  %27 = bitcast %union.nps_pkt_slc_ctl* %5 to i64*
  store i64 %26, i64* %27, align 8
  %28 = bitcast %union.nps_pkt_slc_ctl* %5 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %39

33:                                               ; preds = %23
  %34 = call i32 @udelay(i32 50)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %23, label %39

39:                                               ; preds = %35, %32
  ret void
}

declare dso_local i32 @NPS_PKT_SLC_CTLX(i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i64) #1

declare dso_local i64 @nitrox_read_csr(%struct.nitrox_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
