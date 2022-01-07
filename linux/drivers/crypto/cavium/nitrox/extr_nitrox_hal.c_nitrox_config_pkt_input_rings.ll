; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_pkt_input_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_pkt_input_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32, i32, %struct.nitrox_cmdq* }
%struct.nitrox_cmdq = type { i32 }
%union.nps_pkt_in_instr_rsize = type { i32 }
%union.nps_pkt_in_instr_baoff_dbell = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nitrox_config_pkt_input_rings(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nitrox_cmdq*, align 8
  %5 = alloca %union.nps_pkt_in_instr_rsize, align 4
  %6 = alloca %union.nps_pkt_in_instr_baoff_dbell, align 4
  %7 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %63, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %11 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %66

14:                                               ; preds = %8
  %15 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %16 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %15, i32 0, i32 2
  %17 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %17, i64 %19
  store %struct.nitrox_cmdq* %20, %struct.nitrox_cmdq** %4, align 8
  %21 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @reset_pkt_input_ring(%struct.nitrox_device* %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @NPS_PKT_IN_INSTR_BADDRX(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %29 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nitrox_write_csr(%struct.nitrox_device* %26, i32 %27, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @NPS_PKT_IN_INSTR_RSIZEX(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = bitcast %union.nps_pkt_in_instr_rsize* %5 to i32*
  store i32 0, i32* %34, align 4
  %35 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %36 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = bitcast %union.nps_pkt_in_instr_rsize* %5 to %struct.TYPE_3__*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %41 = load i32, i32* %7, align 4
  %42 = bitcast %union.nps_pkt_in_instr_rsize* %5 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nitrox_write_csr(%struct.nitrox_device* %40, i32 %41, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @NPS_PKT_IN_INT_LEVELSX(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @nitrox_write_csr(%struct.nitrox_device* %47, i32 %48, i32 -1)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @NPS_PKT_IN_INSTR_BAOFF_DBELLX(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = bitcast %union.nps_pkt_in_instr_baoff_dbell* %6 to i32*
  store i32 0, i32* %52, align 4
  %53 = bitcast %union.nps_pkt_in_instr_baoff_dbell* %6 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 4
  %55 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %56 = load i32, i32* %7, align 4
  %57 = bitcast %union.nps_pkt_in_instr_baoff_dbell* %6 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nitrox_write_csr(%struct.nitrox_device* %55, i32 %56, i32 %58)
  %60 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @enable_pkt_input_ring(%struct.nitrox_device* %60, i32 %61)
  br label %63

63:                                               ; preds = %14
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %8

66:                                               ; preds = %8
  ret void
}

declare dso_local i32 @reset_pkt_input_ring(%struct.nitrox_device*, i32) #1

declare dso_local i32 @NPS_PKT_IN_INSTR_BADDRX(i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i32) #1

declare dso_local i32 @NPS_PKT_IN_INSTR_RSIZEX(i32) #1

declare dso_local i32 @NPS_PKT_IN_INT_LEVELSX(i32) #1

declare dso_local i32 @NPS_PKT_IN_INSTR_BAOFF_DBELLX(i32) #1

declare dso_local i32 @enable_pkt_input_ring(%struct.nitrox_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
