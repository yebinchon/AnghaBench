; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-eh.c_pre_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-eh.c_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ide_port_ops* }
%struct.ide_port_ops = type { i32 (%struct.TYPE_9__*)* }

@ide_disk = common dso_local global i64 0, align 8
@IDE_DFLAG_POST_RESET = common dso_local global i32 0, align 4
@IDE_DFLAG_USING_DMA = common dso_local global i32 0, align 4
@IDE_DFLAG_KEEP_SETTINGS = common dso_local global i32 0, align 4
@IDE_DFLAG_UNMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pre_reset(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.ide_port_ops*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  store %struct.ide_port_ops* %8, %struct.ide_port_ops** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ide_disk, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = call i32 @ide_disk_pre_reset(%struct.TYPE_9__* %15)
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @IDE_DFLAG_POST_RESET, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %17, %14
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IDE_DFLAG_USING_DMA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = call i32 @ide_check_dma_crc(%struct.TYPE_9__* %36)
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = call i32 @ide_dma_off(%struct.TYPE_9__* %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IDE_DFLAG_KEEP_SETTINGS, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IDE_DFLAG_USING_DMA, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load i32, i32* @IDE_DFLAG_UNMASK, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %56, %49
  br label %94

66:                                               ; preds = %42
  %67 = load %struct.ide_port_ops*, %struct.ide_port_ops** %3, align 8
  %68 = icmp ne %struct.ide_port_ops* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.ide_port_ops*, %struct.ide_port_ops** %3, align 8
  %71 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %71, align 8
  %73 = icmp ne i32 (%struct.TYPE_9__*)* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.ide_port_ops*, %struct.ide_port_ops** %3, align 8
  %76 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = call i32 %77(%struct.TYPE_9__* %78)
  br label %80

80:                                               ; preds = %74, %69, %66
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 255
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %85, %80
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i32 255, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %65
  ret void
}

declare dso_local i32 @ide_disk_pre_reset(%struct.TYPE_9__*) #1

declare dso_local i32 @ide_check_dma_crc(%struct.TYPE_9__*) #1

declare dso_local i32 @ide_dma_off(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
