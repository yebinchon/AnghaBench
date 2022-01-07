; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_sha_rec = type { i32, i32, i32, %struct.mtk_cryp* }
%struct.mtk_cryp = type { i32 }

@SHA_FLAGS_BUSY = common dso_local global i32 0, align 4
@MTK_CNT_RST = common dso_local global i32 0, align 4
@MTK_RDR_PROC_THRESH = common dso_local global i32 0, align 4
@MTK_RDR_PROC_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SHA interrupt when no active requests.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_sha_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtk_sha_rec*, align 8
  %6 = alloca %struct.mtk_cryp*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mtk_sha_rec*
  store %struct.mtk_sha_rec* %9, %struct.mtk_sha_rec** %5, align 8
  %10 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %11 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %10, i32 0, i32 3
  %12 = load %struct.mtk_cryp*, %struct.mtk_cryp** %11, align 8
  store %struct.mtk_cryp* %12, %struct.mtk_cryp** %6, align 8
  %13 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %14 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %15 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @RDR_STAT(i32 %16)
  %18 = call i32 @mtk_sha_read(%struct.mtk_cryp* %13, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %20 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %21 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @RDR_STAT(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mtk_sha_write(%struct.mtk_cryp* %19, i32 %23, i32 %24)
  %26 = load i32, i32* @SHA_FLAGS_BUSY, align 4
  %27 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %2
  %34 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %35 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %36 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @RDR_PROC_COUNT(i32 %37)
  %39 = load i32, i32* @MTK_CNT_RST, align 4
  %40 = call i32 @mtk_sha_write(%struct.mtk_cryp* %34, i32 %38, i32 %39)
  %41 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %42 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %43 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @RDR_THRESH(i32 %44)
  %46 = load i32, i32* @MTK_RDR_PROC_THRESH, align 4
  %47 = load i32, i32* @MTK_RDR_PROC_MODE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @mtk_sha_write(%struct.mtk_cryp* %41, i32 %45, i32 %48)
  %50 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %51 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %50, i32 0, i32 1
  %52 = call i32 @tasklet_schedule(i32* %51)
  br label %58

53:                                               ; preds = %2
  %54 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %55 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_warn(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %33
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %59
}

declare dso_local i32 @mtk_sha_read(%struct.mtk_cryp*, i32) #1

declare dso_local i32 @RDR_STAT(i32) #1

declare dso_local i32 @mtk_sha_write(%struct.mtk_cryp*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @RDR_PROC_COUNT(i32) #1

declare dso_local i32 @RDR_THRESH(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
