; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-xfer-mode.c_ide_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-xfer-mode.c_ide_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.ide_port_ops* }
%struct.ide_port_ops = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* }

@IDE_HFLAG_NO_SET_MODE = common dso_local global i32 0, align 4
@IDE_HFLAG_POST_SET_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_set_dma_mode(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.ide_port_ops*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.ide_port_ops*, %struct.ide_port_ops** %12, align 8
  store %struct.ide_port_ops* %13, %struct.ide_port_ops** %7, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IDE_HFLAG_NO_SET_MODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %23 = icmp eq %struct.ide_port_ops* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %26 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %26, align 8
  %28 = icmp eq i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %21
  store i32 -1, i32* %3, align 4
  br label %66

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IDE_HFLAG_POST_SET_MODE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ide_config_drive_speed(%struct.TYPE_10__* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %66

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %48 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = call i32 %49(%struct.TYPE_9__* %50, %struct.TYPE_10__* %51)
  store i32 0, i32* %3, align 4
  br label %66

53:                                               ; preds = %30
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %58 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = call i32 %59(%struct.TYPE_9__* %60, %struct.TYPE_10__* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @ide_config_drive_speed(%struct.TYPE_10__* %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %53, %43, %42, %29, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @ide_config_drive_speed(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
