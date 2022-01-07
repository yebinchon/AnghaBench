; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-xfer-mode.c_ide_set_xfer_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-xfer-mode.c_ide_set_xfer_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.ide_port_ops* }
%struct.ide_port_ops = type { i32* }

@IDE_HFLAG_NO_SET_MODE = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i64 0, align 8
@XFER_PIO_6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_set_xfer_rate(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.ide_port_ops*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.ide_port_ops*, %struct.ide_port_ops** %12, align 8
  store %struct.ide_port_ops* %13, %struct.ide_port_ops** %7, align 8
  %14 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %15 = icmp eq %struct.ide_port_ops* %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %18 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IDE_HFLAG_NO_SET_MODE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %16, %2
  store i32 -1, i32* %3, align 4
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @ide_rate_filter(%struct.TYPE_8__* %30, i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @XFER_PIO_0, align 8
  %35 = icmp slt i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @XFER_PIO_0, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @XFER_PIO_6, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @ide_set_pio_mode(%struct.TYPE_8__* %46, i64 %47)
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %41, %29
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @ide_set_dma_mode(%struct.TYPE_8__* %50, i64 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %45, %28
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @ide_rate_filter(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ide_set_pio_mode(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @ide_set_dma_mode(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
