; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_clear_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_clear_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_mp2_dev = type { i64 }

@AMD_C2P_MSG0 = common dso_local global i32 0, align 4
@AMD_C2P_MSG9 = common dso_local global i32 0, align 4
@AMD_P2C_MSG1 = common dso_local global i32 0, align 4
@AMD_P2C_MSG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_mp2_dev*)* @amd_mp2_clear_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_mp2_clear_reg(%struct.amd_mp2_dev* %0) #0 {
  %2 = alloca %struct.amd_mp2_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.amd_mp2_dev* %0, %struct.amd_mp2_dev** %2, align 8
  %4 = load i32, i32* @AMD_C2P_MSG0, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @AMD_C2P_MSG9, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %2, align 8
  %11 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = call i32 @writel(i32 0, i64 %15)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 4
  store i32 %19, i32* %3, align 4
  br label %5

20:                                               ; preds = %5
  %21 = load i32, i32* @AMD_P2C_MSG1, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %34, %20
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @AMD_P2C_MSG2, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %2, align 8
  %28 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @writel(i32 0, i64 %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %3, align 4
  br label %22

37:                                               ; preds = %22
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
