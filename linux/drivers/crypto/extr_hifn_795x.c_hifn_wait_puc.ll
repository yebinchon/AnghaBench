; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_wait_puc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_wait_puc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HIFN_0_PUCTRL = common dso_local global i32 0, align 4
@HIFN_PUCTRL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to reset PUC unit.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_device*)* @hifn_wait_puc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_wait_puc(%struct.hifn_device* %0) #0 {
  %2 = alloca %struct.hifn_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %2, align 8
  store i32 10000, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %10 = load i32, i32* @HIFN_0_PUCTRL, align 4
  %11 = call i32 @hifn_read_0(%struct.hifn_device* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @HIFN_PUCTRL_RESET, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  br label %22

17:                                               ; preds = %8
  %18 = call i32 @udelay(i32 1)
  br label %19

19:                                               ; preds = %17
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %3, align 4
  br label %5

22:                                               ; preds = %16, %5
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %27 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @hifn_read_0(%struct.hifn_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
