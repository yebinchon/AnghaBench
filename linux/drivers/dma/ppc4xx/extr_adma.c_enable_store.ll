; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@ppc440spe_r6_tchan = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@ppc440spe_mq_dcr_host = common dso_local global i32 0, align 4
@DCRN_MQ0_XORBA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"PPC440SP(e) RAID-6 has been activated successfully\0A\00", align 1
@ppc440spe_r6_enabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"PPC440SP(e) RAID-6 hasn't been activated! Error key ?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enable_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = icmp ugt i64 %12, 11
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %4, align 8
  br label %40

17:                                               ; preds = %11
  %18 = load i32, i32* @ppc440spe_r6_tchan, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @EFAULT, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %40

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @sscanf(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %8)
  %26 = load i32, i32* @ppc440spe_mq_dcr_host, align 4
  %27 = load i32, i32* @DCRN_MQ0_XORBA, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @dcr_write(i32 %26, i32 %27, i64 %28)
  %30 = call i32 (...) @isync()
  %31 = load i32, i32* @ppc440spe_r6_tchan, align 4
  %32 = call i64 @ppc440spe_test_raid6(i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @ppc440spe_r6_enabled, align 4
  br label %38

36:                                               ; preds = %23
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @ppc440spe_r6_enabled, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %38, %20, %14
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @dcr_write(i32, i32, i64) #1

declare dso_local i32 @isync(...) #1

declare dso_local i64 @ppc440spe_test_raid6(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
