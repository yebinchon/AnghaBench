; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_enable_pkt_input_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_enable_pkt_input_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.nps_pkt_in_instr_ctl = type { i8* }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_CSR_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_pkt_input_ring(%struct.nitrox_device* %0, i32 %1) #0 {
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.nps_pkt_in_instr_ctl, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @MAX_CSR_RETRIES, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @NPS_PKT_IN_INSTR_CTLX(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i8* @nitrox_read_csr(%struct.nitrox_device* %11, i32 %12)
  %14 = bitcast %union.nps_pkt_in_instr_ctl* %5 to i8**
  store i8* %13, i8** %14, align 8
  %15 = bitcast %union.nps_pkt_in_instr_ctl* %5 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = bitcast %union.nps_pkt_in_instr_ctl* %5 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = bitcast %union.nps_pkt_in_instr_ctl* %5 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @nitrox_write_csr(%struct.nitrox_device* %19, i32 %20, i8* %22)
  br label %24

24:                                               ; preds = %36, %2
  %25 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @nitrox_read_csr(%struct.nitrox_device* %25, i32 %26)
  %28 = bitcast %union.nps_pkt_in_instr_ctl* %5 to i8**
  store i8* %27, i8** %28, align 8
  %29 = bitcast %union.nps_pkt_in_instr_ctl* %5 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %40

34:                                               ; preds = %24
  %35 = call i32 @udelay(i32 50)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %24, label %40

40:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @NPS_PKT_IN_INSTR_CTLX(i32) #1

declare dso_local i8* @nitrox_read_csr(%struct.nitrox_device*, i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
