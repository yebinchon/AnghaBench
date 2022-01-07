; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-devsets.c_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-devsets.c_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.ide_port_ops* }
%struct.ide_port_ops = type { i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* }

@EINVAL = common dso_local global i32 0, align 4
@IDE_HFLAG_NO_SET_MODE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i64 0, align 8
@IDE_DFLAG_USING_DMA = common dso_local global i32 0, align 4
@IDE_HFLAG_SET_PIO_MODE_KEEP_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pio_mode(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.ide_port_ops*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load %struct.ide_port_ops*, %struct.ide_port_ops** %14, align 8
  store %struct.ide_port_ops* %15, %struct.ide_port_ops** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 255
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %112

24:                                               ; preds = %18
  %25 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %26 = icmp eq %struct.ide_port_ops* %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %29 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %29, align 8
  %31 = icmp eq i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IDE_HFLAG_NO_SET_MODE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %27, %24
  %40 = load i32, i32* @ENOSYS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %112

42:                                               ; preds = %32
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @set_pio_mode_abuse(%struct.TYPE_11__* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @XFER_PIO_0, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 9
  br i1 %60, label %61, label %76

61:                                               ; preds = %58, %49
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %67 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %67, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = call i32 %68(%struct.TYPE_11__* %69, %struct.TYPE_12__* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %83

76:                                               ; preds = %58
  %77 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %78 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = call i32 %79(%struct.TYPE_11__* %80, %struct.TYPE_12__* %81)
  br label %83

83:                                               ; preds = %76, %61
  br label %111

84:                                               ; preds = %42
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IDE_DFLAG_USING_DMA, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %9, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @ide_set_pio(%struct.TYPE_12__* %94, i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IDE_HFLAG_SET_PIO_MODE_KEEP_DMA, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %84
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = call i32 @ide_dma_on(%struct.TYPE_12__* %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %84
  br label %111

111:                                              ; preds = %110, %83
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %39, %21
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @set_pio_mode_abuse(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ide_set_pio(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ide_dma_on(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
