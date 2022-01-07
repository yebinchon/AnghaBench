; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_abnormal_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_abnormal_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm_hw_error = type { i32, i64 }
%struct.hisi_qm = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@qm_hw_error = common dso_local global %struct.hisi_qm_hw_error* null, align 8
@QM_ABNORMAL_INT_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"%s [error status=0x%x] found\0A\00", align 1
@QM_ABNORMAL_INT_SOURCE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qm_abnormal_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_abnormal_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_qm_hw_error*, align 8
  %6 = alloca %struct.hisi_qm*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** @qm_hw_error, align 8
  store %struct.hisi_qm_hw_error* %10, %struct.hisi_qm_hw_error** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.hisi_qm*
  store %struct.hisi_qm* %12, %struct.hisi_qm** %6, align 8
  %13 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %14 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %18 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QM_ABNORMAL_INT_STATUS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %24 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %49, %2
  %29 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** %5, align 8
  %30 = getelementptr inbounds %struct.hisi_qm_hw_error, %struct.hisi_qm_hw_error* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** %5, align 8
  %35 = getelementptr inbounds %struct.hisi_qm_hw_error, %struct.hisi_qm_hw_error* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** %5, align 8
  %43 = getelementptr inbounds %struct.hisi_qm_hw_error, %struct.hisi_qm_hw_error* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** %5, align 8
  %46 = getelementptr inbounds %struct.hisi_qm_hw_error, %struct.hisi_qm_hw_error* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %40, %33
  %50 = load %struct.hisi_qm_hw_error*, %struct.hisi_qm_hw_error** %5, align 8
  %51 = getelementptr inbounds %struct.hisi_qm_hw_error, %struct.hisi_qm_hw_error* %50, i32 1
  store %struct.hisi_qm_hw_error* %51, %struct.hisi_qm_hw_error** %5, align 8
  br label %28

52:                                               ; preds = %28
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %55 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @QM_ABNORMAL_INT_SOURCE, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %60
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
