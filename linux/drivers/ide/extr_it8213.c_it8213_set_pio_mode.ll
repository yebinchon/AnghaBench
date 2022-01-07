; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_it8213.c_it8213_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_it8213.c_it8213_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.pci_dev = type { i32 }

@it8213_set_pio_mode.tune_lock = internal global i32 0, align 4
@XFER_PIO_0 = common dso_local global i32 0, align 4
@it8213_set_pio_mode.timings = internal constant [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 3]], align 16
@ide_disk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @it8213_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8213_set_pio_mode(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 1
  store i32 %21, i32* %6, align 4
  store i32 64, i32* %7, align 4
  store i32 68, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XFER_PIO_0, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %13, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @it8213_set_pio_mode.tune_lock, i64 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @pci_read_config_word(%struct.pci_dev* %29, i32 %30, i32* %10)
  %32 = load i32, i32* %13, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %12, align 4
  %36 = or i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %34, %2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ide_disk, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i64 @ide_pio_need_iordy(%struct.TYPE_7__* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, 2
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, 16384
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, -113
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = shl i32 %66, 4
  %68 = or i32 %65, %67
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @pci_read_config_byte(%struct.pci_dev* %70, i32 %71, i32* %11)
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 240
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @it8213_set_pio_mode.timings, i64 0, i64 %77
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %78, i64 0, i64 0
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 2
  %82 = or i32 %75, %81
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @it8213_set_pio_mode.timings, i64 0, i64 %84
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %82, %87
  store i32 %88, i32* %11, align 4
  br label %114

89:                                               ; preds = %54
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, -13064
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @it8213_set_pio_mode.timings, i64 0, i64 %101
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %102, i64 0, i64 0
  %104 = load i32, i32* %103, align 8
  %105 = shl i32 %104, 12
  %106 = or i32 %99, %105
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @it8213_set_pio_mode.timings, i64 0, i64 %108
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %109, i64 0, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = or i32 %106, %112
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %98, %69
  %115 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @pci_write_config_word(%struct.pci_dev* %115, i32 %116, i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @pci_write_config_byte(%struct.pci_dev* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %114
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* @it8213_set_pio_mode.tune_lock, i64 %127)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @ide_pio_need_iordy(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
