; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_i2c_common = type { i64, %struct.TYPE_3__*, %struct.amd_mp2_dev* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.amd_mp2_dev = type { i64 }
%union.i2c_cmd_base = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@use_c2pmsg = common dso_local global i32 0, align 4
@i2c_write = common dso_local global i32 0, align 4
@AMD_C2P_MSG2 = common dso_local global i64 0, align 8
@use_dram = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_mp2_rw(%struct.amd_i2c_common* %0, i32 %1) #0 {
  %3 = alloca %struct.amd_i2c_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd_mp2_dev*, align 8
  %6 = alloca %union.i2c_cmd_base, align 4
  store %struct.amd_i2c_common* %0, %struct.amd_i2c_common** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %8 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %7, i32 0, i32 2
  %9 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %8, align 8
  store %struct.amd_mp2_dev* %9, %struct.amd_mp2_dev** %5, align 8
  %10 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @amd_mp2_cmd_rw_fill(%struct.amd_i2c_common* %10, %union.i2c_cmd_base* %6, i32 %11)
  %13 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %14 = call i32 @amd_mp2_c2p_mutex_lock(%struct.amd_i2c_common* %13)
  %15 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %16 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 32
  br i1 %20, label %21, label %46

21:                                               ; preds = %2
  %22 = load i32, i32* @use_c2pmsg, align 4
  %23 = bitcast %union.i2c_cmd_base* %6 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @i2c_write, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %21
  %29 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %5, align 8
  %30 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AMD_C2P_MSG2, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %35 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %40 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy_toio(i64 %33, i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %28, %21
  br label %60

46:                                               ; preds = %2
  %47 = load i32, i32* @use_dram, align 4
  %48 = bitcast %union.i2c_cmd_base* %6 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %51 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %5, align 8
  %55 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AMD_C2P_MSG2, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writeq(i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %46, %45
  %61 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %62 = getelementptr inbounds %union.i2c_cmd_base, %union.i2c_cmd_base* %6, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @amd_mp2_cmd(%struct.amd_i2c_common* %61, i32 %64)
  ret i32 %65
}

declare dso_local i32 @amd_mp2_cmd_rw_fill(%struct.amd_i2c_common*, %union.i2c_cmd_base*, i32) #1

declare dso_local i32 @amd_mp2_c2p_mutex_lock(%struct.amd_i2c_common*) #1

declare dso_local i32 @memcpy_toio(i64, i32, i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @amd_mp2_cmd(%struct.amd_i2c_common*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
