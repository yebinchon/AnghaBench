; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_streamid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_streamid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_dev_info = type { i64* }

@SEC_SAA = common dso_local global i64 0, align 8
@SEC_SID = common dso_local global i32 0, align 4
@SEC_VMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_dev_info*, i32)* @sec_streamid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_streamid(%struct.sec_dev_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sec_dev_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sec_dev_info* %0, %struct.sec_dev_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %6 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @SEC_SAA, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @SEC_Q_VMID_CFG_REG(i32 %11)
  %13 = add nsw i64 %10, %12
  %14 = call i32 @writel_relaxed(i32 393216, i64 %13)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @SEC_Q_VMID_CFG_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
