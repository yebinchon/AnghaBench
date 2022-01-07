; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_set_hpet_sid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_set_hpet_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64 }
%struct.irte = type { i32 }

@dmar_global_lock = common dso_local global i32 0, align 4
@MAX_HPET_TBS = common dso_local global i32 0, align 4
@ir_hpet = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"Failed to set source-id of HPET block (%d)\0A\00", align 1
@SVT_VERIFY_SID_SQ = common dso_local global i32 0, align 4
@SQ_13_IGNORE_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irte*, i64)* @set_hpet_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_hpet_sid(%struct.irte* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irte*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irte* %0, %struct.irte** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.irte*, %struct.irte** %4, align 8
  %9 = icmp ne %struct.irte* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

11:                                               ; preds = %2
  %12 = call i32 @down_read(i32* @dmar_global_lock)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %50, %11
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MAX_HPET_TBS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ir_hpet, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %17
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ir_hpet, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %25
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ir_hpet, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ir_hpet, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %41, %47
  store i32 %48, i32* %7, align 4
  br label %53

49:                                               ; preds = %25, %17
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %13

53:                                               ; preds = %34, %13
  %54 = call i32 @up_read(i32* @dmar_global_lock)
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %58)
  store i32 -1, i32* %3, align 4
  br label %66

60:                                               ; preds = %53
  %61 = load %struct.irte*, %struct.irte** %4, align 8
  %62 = load i32, i32* @SVT_VERIFY_SID_SQ, align 4
  %63 = load i32, i32* @SQ_13_IGNORE_3, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @set_irte_sid(%struct.irte* %61, i32 %62, i32 %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %57, %10
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @set_irte_sid(%struct.irte*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
