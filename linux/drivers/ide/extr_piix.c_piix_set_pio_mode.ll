; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_piix.c_piix_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_piix.c_piix_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.pci_dev = type { i32 }

@piix_set_pio_mode.tune_lock = internal global i32 0, align 4
@XFER_PIO_0 = common dso_local global i32 0, align 4
@piix_set_pio_mode.timings = internal constant [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 3]], align 16
@ide_disk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @piix_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @piix_set_pio_mode(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
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
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 66, i32 64
  store i32 %27, i32* %7, align 4
  store i32 68, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XFER_PIO_0, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %13, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_lock_irqsave(i32* @piix_set_pio_mode.tune_lock, i64 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @pci_read_config_word(%struct.pci_dev* %35, i32 %36, i32* %10)
  %38 = load i32, i32* %13, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %40, %2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ide_disk, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i64 @ide_pio_need_iordy(%struct.TYPE_7__* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, 2
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %108

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, 16384
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, -113
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i32, i32* %12, align 4
  %72 = shl i32 %71, 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %70, %63
  %76 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @pci_read_config_byte(%struct.pci_dev* %76, i32 %77, i32* %11)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 15, i32 240
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @piix_set_pio_mode.timings, i64 0, i64 %88
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %89, i64 0, i64 0
  %91 = load i32, i32* %90, align 8
  %92 = shl i32 %91, 2
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @piix_set_pio_mode.timings, i64 0, i64 %94
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %95, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %92, %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 4, i32 0
  %105 = shl i32 %98, %104
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %133

108:                                              ; preds = %60
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, -13064
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @piix_set_pio_mode.timings, i64 0, i64 %119
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %120, i64 0, i64 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 12
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @piix_set_pio_mode.timings, i64 0, i64 %125
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %126, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = or i32 %123, %129
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %117, %75
  %134 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @pci_write_config_word(%struct.pci_dev* %134, i32 %135, i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @pci_write_config_byte(%struct.pci_dev* %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %133
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* @piix_set_pio_mode.tune_lock, i64 %146)
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
