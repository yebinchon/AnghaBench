; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_accelerator_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_accelerator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32 }

@MTK_IRQ_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to initialize AIC.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to configure packet engine.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*)* @mtk_accelerator_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_accelerator_init(%struct.mtk_cryp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_cryp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MTK_IRQ_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @mtk_aic_init(%struct.mtk_cryp* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %28 = call i32 @mtk_packet_engine_setup(%struct.mtk_cryp* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %31, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @mtk_aic_init(%struct.mtk_cryp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mtk_packet_engine_setup(%struct.mtk_cryp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
