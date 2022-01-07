; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_aqm_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_nitrox_config_aqm_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32, i32, %struct.nitrox_cmdq** }
%struct.nitrox_cmdq = type { i64 }
%union.aqmq_drbl = type { i64 }
%union.aqmq_qsz = type { i64 }
%union.aqmq_cmp_thr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nitrox_config_aqm_rings(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nitrox_cmdq*, align 8
  %5 = alloca %union.aqmq_drbl, align 8
  %6 = alloca %union.aqmq_qsz, align 8
  %7 = alloca %union.aqmq_cmp_thr, align 8
  %8 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %72, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %12 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %9
  %16 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %17 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %16, i32 0, i32 2
  %18 = load %struct.nitrox_cmdq**, %struct.nitrox_cmdq*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %18, i64 %20
  %22 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %21, align 8
  store %struct.nitrox_cmdq* %22, %struct.nitrox_cmdq** %4, align 8
  %23 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @reset_aqm_ring(%struct.nitrox_device* %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @AQMQ_DRBLX(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = bitcast %union.aqmq_drbl* %5 to i64*
  store i64 0, i64* %28, align 8
  %29 = bitcast %union.aqmq_drbl* %5 to i32*
  store i32 -1, i32* %29, align 8
  %30 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %31 = load i32, i32* %8, align 4
  %32 = bitcast %union.aqmq_drbl* %5 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @nitrox_write_csr(%struct.nitrox_device* %30, i32 %31, i64 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @AQMQ_NXT_CMDX(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @nitrox_write_csr(%struct.nitrox_device* %37, i32 %38, i64 0)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @AQMQ_BADRX(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %45 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @nitrox_write_csr(%struct.nitrox_device* %42, i32 %43, i64 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @AQMQ_QSZX(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = bitcast %union.aqmq_qsz* %6 to i64*
  store i64 0, i64* %50, align 8
  %51 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %52 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %union.aqmq_qsz* %6 to i32*
  store i32 %53, i32* %54, align 8
  %55 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %56 = load i32, i32* %8, align 4
  %57 = bitcast %union.aqmq_qsz* %6 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @nitrox_write_csr(%struct.nitrox_device* %55, i32 %56, i64 %58)
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @AQMQ_CMP_THRX(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = bitcast %union.aqmq_cmp_thr* %7 to i64*
  store i64 0, i64* %62, align 8
  %63 = bitcast %union.aqmq_cmp_thr* %7 to i32*
  store i32 1, i32* %63, align 8
  %64 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %65 = load i32, i32* %8, align 4
  %66 = bitcast %union.aqmq_cmp_thr* %7 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @nitrox_write_csr(%struct.nitrox_device* %64, i32 %65, i64 %67)
  %69 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @enable_aqm_ring(%struct.nitrox_device* %69, i32 %70)
  br label %72

72:                                               ; preds = %15
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %9

75:                                               ; preds = %9
  ret void
}

declare dso_local i32 @reset_aqm_ring(%struct.nitrox_device*, i32) #1

declare dso_local i32 @AQMQ_DRBLX(i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i64) #1

declare dso_local i32 @AQMQ_NXT_CMDX(i32) #1

declare dso_local i32 @AQMQ_BADRX(i32) #1

declare dso_local i32 @AQMQ_QSZX(i32) #1

declare dso_local i32 @AQMQ_CMP_THRX(i32) #1

declare dso_local i32 @enable_aqm_ring(%struct.nitrox_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
