; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-taskfile.c_ide_tf_readback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-taskfile.c_ide_tf_readback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.ide_tp_ops* }
%struct.ide_tp_ops = type { i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_12__*, i32)* }
%struct.ide_cmd = type { i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@ATA_DEVCTL_OBS = common dso_local global i32 0, align 4
@IDE_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_HOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_tf_readback(%struct.TYPE_13__* %0, %struct.ide_cmd* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.ide_cmd*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.ide_tp_ops*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %11, align 8
  store %struct.ide_tp_ops* %12, %struct.ide_tp_ops** %6, align 8
  %13 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %6, align 8
  %14 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %13, i32 0, i32 1
  %15 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = load i32, i32* @ATA_DEVCTL_OBS, align 4
  %18 = call i32 %15(%struct.TYPE_12__* %16, i32 %17)
  %19 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %6, align 8
  %20 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %20, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %23, i32 0, i32 3
  %25 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %21(%struct.TYPE_13__* %22, i32* %24, i32 %29)
  %31 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IDE_TFLAG_LBA48, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %2
  %38 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %6, align 8
  %39 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %38, i32 0, i32 1
  %40 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = load i32, i32* @ATA_HOB, align 4
  %43 = load i32, i32* @ATA_DEVCTL_OBS, align 4
  %44 = or i32 %42, %43
  %45 = call i32 %40(%struct.TYPE_12__* %41, i32 %44)
  %46 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %6, align 8
  %47 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %50, i32 0, i32 2
  %52 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %48(%struct.TYPE_13__* %49, i32* %51, i32 %56)
  br label %58

58:                                               ; preds = %37, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
