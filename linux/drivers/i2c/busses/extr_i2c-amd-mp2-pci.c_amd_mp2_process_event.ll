; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_i2c_common = type { i64, i32, %struct.amd_mp2_dev* }
%struct.amd_mp2_dev = type { i32 }

@i2c_none = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"received msg but no cmd was sent (bus = %d)!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd_mp2_process_event(%struct.amd_i2c_common* %0) #0 {
  %2 = alloca %struct.amd_i2c_common*, align 8
  %3 = alloca %struct.amd_mp2_dev*, align 8
  store %struct.amd_i2c_common* %0, %struct.amd_i2c_common** %2, align 8
  %4 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %5 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %4, i32 0, i32 2
  %6 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %5, align 8
  store %struct.amd_mp2_dev* %6, %struct.amd_mp2_dev** %3, align 8
  %7 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %8 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @i2c_none, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %3, align 8
  %17 = call i32 @ndev_dev(%struct.amd_mp2_dev* %16)
  %18 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %19 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_warn(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %24 = call i32 @__amd_mp2_process_event(%struct.amd_i2c_common* %23)
  %25 = load i64, i64* @i2c_none, align 8
  %26 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %27 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %2, align 8
  %29 = call i32 @amd_mp2_c2p_mutex_unlock(%struct.amd_i2c_common* %28)
  br label %30

30:                                               ; preds = %22, %15
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @ndev_dev(%struct.amd_mp2_dev*) #1

declare dso_local i32 @__amd_mp2_process_event(%struct.amd_i2c_common*) #1

declare dso_local i32 @amd_mp2_c2p_mutex_unlock(%struct.amd_i2c_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
