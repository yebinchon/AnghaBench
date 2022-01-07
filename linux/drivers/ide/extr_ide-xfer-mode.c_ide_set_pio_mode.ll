; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-xfer-mode.c_ide_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-xfer-mode.c_ide_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.ide_port_ops* }
%struct.ide_port_ops = type { i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32* }

@IDE_HFLAG_NO_SET_MODE = common dso_local global i32 0, align 4
@IDE_HFLAG_POST_SET_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_set_pio_mode(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.ide_port_ops*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load %struct.ide_port_ops*, %struct.ide_port_ops** %12, align 8
  store %struct.ide_port_ops* %13, %struct.ide_port_ops** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IDE_HFLAG_NO_SET_MODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %23 = icmp eq %struct.ide_port_ops* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %26 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %26, align 8
  %28 = icmp eq i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %21
  store i32 -1, i32* %3, align 4
  br label %81

30:                                               ; preds = %24
  %31 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %32 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %40 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = call i32 %41(%struct.TYPE_11__* %42, %struct.TYPE_12__* %43)
  store i32 0, i32* %3, align 4
  br label %81

45:                                               ; preds = %30
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IDE_HFLAG_POST_SET_MODE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ide_config_drive_speed(%struct.TYPE_12__* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %81

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %63 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = call i32 %64(%struct.TYPE_11__* %65, %struct.TYPE_12__* %66)
  store i32 0, i32* %3, align 4
  br label %81

68:                                               ; preds = %45
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %73 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = call i32 %74(%struct.TYPE_11__* %75, %struct.TYPE_12__* %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ide_config_drive_speed(%struct.TYPE_12__* %78, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %68, %58, %57, %35, %29, %20
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ide_config_drive_speed(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
