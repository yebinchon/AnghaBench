; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_get_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_get_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { i32 }

@MIP4_R0_INFO = common dso_local global i32 0, align 4
@MIP4_R1_INFO_VERSION_BOOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mip4_ts*)* @mip4_get_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip4_get_fw_version(%struct.mip4_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mip4_ts*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.mip4_ts* %0, %struct.mip4_ts** %3, align 8
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %8 = load i32, i32* @MIP4_R0_INFO, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @MIP4_R1_INFO_VERSION_BOOT, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %14 = call i32 @mip4_i2c_xfer(%struct.mip4_ts* %11, i32* %12, i32 8, i32* %13, i32 16)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %19 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %18, i32 0, i32 0
  %20 = call i32 @memset(i32* %19, i32 255, i32 4)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %1
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %24 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %25 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %24, i32 0, i32 0
  %26 = call i32 @mip4_parse_fw_version(i32* %23, i32* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @mip4_i2c_xfer(%struct.mip4_ts*, i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mip4_parse_fw_version(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
