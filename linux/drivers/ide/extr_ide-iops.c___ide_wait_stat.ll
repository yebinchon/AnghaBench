; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-iops.c___ide_wait_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-iops.c___ide_wait_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ide_tp_ops* }
%struct.ide_tp_ops = type { i32 (%struct.TYPE_8__*)* }

@force_irqthreads = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ide_wait_stat(%struct.TYPE_9__* %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.ide_tp_ops*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %12, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %22, align 8
  store %struct.ide_tp_ops* %23, %struct.ide_tp_ops** %13, align 8
  %24 = load i32, i32* @force_irqthreads, align 4
  store i32 %24, i32* %15, align 4
  %25 = call i32 @udelay(i32 1)
  %26 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %13, align 8
  %27 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %30 = call i32 %28(%struct.TYPE_8__* %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @ATA_BUSY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %5
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @local_save_flags(i64 %39)
  %41 = call i32 (...) @local_irq_enable_in_hardirq()
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %82, %42
  %47 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %13, align 8
  %48 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %51 = call i32 %49(%struct.TYPE_8__* %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* @ATA_BUSY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %46
  %56 = load i64, i64* @jiffies, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @time_after(i64 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %55
  %61 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %13, align 8
  %62 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = call i32 %63(%struct.TYPE_8__* %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* @ATA_BUSY, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %83

71:                                               ; preds = %60
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @local_irq_restore(i64 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %17, align 4
  %79 = load i32*, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %118

82:                                               ; preds = %55
  br label %46

83:                                               ; preds = %70, %46
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @local_irq_restore(i64 %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %5
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %110, %90
  %92 = load i32, i32* %16, align 4
  %93 = icmp slt i32 %92, 10
  br i1 %93, label %94, label %113

94:                                               ; preds = %91
  %95 = call i32 @udelay(i32 1)
  %96 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %13, align 8
  %97 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %100 = call i32 %98(%struct.TYPE_8__* %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i64 @OK_STAT(i32 %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %94
  %107 = load i32, i32* %17, align 4
  %108 = load i32*, i32** %11, align 8
  store i32 %107, i32* %108, align 4
  store i32 0, i32* %6, align 4
  br label %118

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %16, align 4
  br label %91

113:                                              ; preds = %91
  %114 = load i32, i32* %17, align 4
  %115 = load i32*, i32** %11, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @EFAULT, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %113, %106, %77
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local i32 @local_irq_enable_in_hardirq(...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @OK_STAT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
