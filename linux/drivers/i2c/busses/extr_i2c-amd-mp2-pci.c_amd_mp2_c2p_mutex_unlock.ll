; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_c2p_mutex_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_c2p_mutex_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_i2c_common = type { i32, %struct.amd_mp2_dev* }
%struct.amd_mp2_dev = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"bus %d attempting to unlock C2P locked by bus %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_i2c_common*)* @amd_mp2_c2p_mutex_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_mp2_c2p_mutex_unlock(%struct.amd_i2c_common* %0) #0 {
  %2 = alloca %struct.amd_i2c_common*, align 8
  %3 = alloca %struct.amd_mp2_dev*, align 8
  store %struct.amd_i2c_common* %0, %struct.amd_i2c_common** %2, align 8
  %4 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %5 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %4, i32 0, i32 1
  %6 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %5, align 8
  store %struct.amd_mp2_dev* %6, %struct.amd_mp2_dev** %3, align 8
  %7 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %8 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %11 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %19 = call i32 @ndev_dev(%struct.amd_mp2_dev* %18)
  %20 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %21 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %24 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %29 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %31

31:                                               ; preds = %27, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @ndev_dev(%struct.amd_mp2_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
