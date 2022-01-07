; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_emu_enable_cores.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_hal.c_emu_enable_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }
%union.emu_se_enable = type { i64 }
%union.emu_ae_enable = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NR_CLUSTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_device*)* @emu_enable_cores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_enable_cores(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca %union.emu_se_enable, align 8
  %4 = alloca %union.emu_ae_enable, align 8
  %5 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  %6 = bitcast %union.emu_ae_enable* %4 to i64*
  store i64 0, i64* %6, align 8
  %7 = bitcast %union.emu_ae_enable* %4 to %struct.TYPE_3__*
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 1048575, i32* %8, align 8
  %9 = bitcast %union.emu_se_enable* %3 to i64*
  store i64 0, i64* %9, align 8
  %10 = bitcast %union.emu_se_enable* %3 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 65535, i32* %11, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NR_CLUSTERS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @EMU_AE_ENABLEX(i32 %18)
  %20 = bitcast %union.emu_ae_enable* %4 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @nitrox_write_csr(%struct.nitrox_device* %17, i32 %19, i64 %21)
  %23 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @EMU_SE_ENABLEX(i32 %24)
  %26 = bitcast %union.emu_se_enable* %3 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @nitrox_write_csr(%struct.nitrox_device* %23, i32 %25, i64 %27)
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %12

32:                                               ; preds = %12
  ret void
}

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i64) #1

declare dso_local i32 @EMU_AE_ENABLEX(i32) #1

declare dso_local i32 @EMU_SE_ENABLEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
