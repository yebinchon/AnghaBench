; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_ipv4_hashmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_ipv4_hashmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_dev_info = type { i64*, i32 }

@SEC_HASH_IPV4_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Sec Ipv4 Hash Mask Input Error!\0A \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SEC_SAA = common dso_local global i64 0, align 8
@SEC_IPV4_MASK_TABLE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_dev_info*, i32)* @sec_ipv4_hashmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_ipv4_hashmask(%struct.sec_dev_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sec_dev_info*, align 8
  %5 = alloca i32, align 4
  store %struct.sec_dev_info* %0, %struct.sec_dev_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SEC_HASH_IPV4_MASK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %12 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %20 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @SEC_SAA, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SEC_IPV4_MASK_TABLE_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %18, i64 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %17, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
