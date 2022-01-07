; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_speedfax_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_speedfax_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfax_hw = type { i32, i32, i32, i32, i32, i64 }

@irqloops = common dso_local global i32 0, align 4
@TIGER_AUX_STATUS = common dso_local global i64 0, align 8
@SFAX_TIGER_IRQ_BIT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ISAR_IRQBIT = common dso_local global i32 0, align 4
@ISAR_IRQSTA = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: %d irqloops cpu%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: %d IRQ LOOP cpu%d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @speedfax_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedfax_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sfax_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sfax_hw*
  store %struct.sfax_hw* %10, %struct.sfax_hw** %6, align 8
  %11 = load i32, i32* @irqloops, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %13 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %16 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TIGER_AUX_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @inb(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SFAX_TIGER_IRQ_BIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %27 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %102

30:                                               ; preds = %2
  %31 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %32 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %36 = load i32, i32* @ISAR_IRQBIT, align 4
  %37 = call i32 @ReadISAR_IND(%struct.sfax_hw* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %70, %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ISAR_IRQSTA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %45 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %44, i32 0, i32 3
  %46 = call i32 @mISDNisar_irq(i32* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %49 = load i32, i32* @ISAC_ISTA, align 4
  %50 = call i32 @ReadISAC_IND(%struct.sfax_hw* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %55 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %54, i32 0, i32 2
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @mISDNisac_irq(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %60 = load i32, i32* @ISAR_IRQBIT, align 4
  %61 = call i32 @ReadISAR_IND(%struct.sfax_hw* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @ISAR_IRQSTA, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %8, align 4
  %69 = icmp ne i32 %67, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %38

71:                                               ; preds = %66, %58
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @irqloops, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %77 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @irqloops, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %79, %80
  %82 = call i32 (...) @smp_processor_id()
  %83 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %75, %71
  %85 = load i32, i32* @irqloops, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %92 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @irqloops, align 4
  %95 = call i32 (...) @smp_processor_id()
  %96 = call i32 @pr_notice(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %87, %84
  %98 = load %struct.sfax_hw*, %struct.sfax_hw** %6, align 8
  %99 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %97, %25
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ReadISAR_IND(%struct.sfax_hw*, i32) #1

declare dso_local i32 @mISDNisar_irq(i32*) #1

declare dso_local i32 @ReadISAC_IND(%struct.sfax_hw*, i32) #1

declare dso_local i32 @mISDNisac_irq(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
