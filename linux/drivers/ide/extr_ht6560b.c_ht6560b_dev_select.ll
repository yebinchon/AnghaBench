; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ht6560b.c_ht6560b_dev_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ht6560b.c_ht6560b_dev_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@ht6560b_dev_select.current_select = internal global i32 0, align 4
@ht6560b_dev_select.current_timing = internal global i32 0, align 4
@ide_disk = common dso_local global i64 0, align 8
@IDE_DFLAG_PRESENT = common dso_local global i32 0, align 4
@HT_PREFETCH_MODE = common dso_local global i32 0, align 4
@HT_CONFIG_PORT = common dso_local global i32 0, align 4
@ATA_DEVICE_OBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @ht6560b_dev_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ht6560b_dev_select(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = call i32 @HT_CONFIG(%struct.TYPE_9__* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @HT_TIMING(%struct.TYPE_9__* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ide_disk, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IDE_DFLAG_PRESENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21, %1
  %29 = load i32, i32* @HT_PREFETCH_MODE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ht6560b_dev_select.current_select, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ht6560b_dev_select.current_timing, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* @ht6560b_dev_select.current_select, align 4
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* @ht6560b_dev_select.current_timing, align 4
  %43 = load i32, i32* @HT_CONFIG_PORT, align 4
  %44 = call i32 @inb(i32 %43)
  %45 = load i32, i32* @HT_CONFIG_PORT, align 4
  %46 = call i32 @inb(i32 %45)
  %47 = load i32, i32* @HT_CONFIG_PORT, align 4
  %48 = call i32 @inb(i32 %47)
  %49 = load i32, i32* @HT_CONFIG_PORT, align 4
  %50 = call i32 @inb(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @HT_CONFIG_PORT, align 4
  %53 = call i32 @outb(i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @outb(i32 %54, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @inb(i32 %63)
  br label %65

65:                                               ; preds = %40, %36
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @local_irq_restore(i64 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ATA_DEVICE_OBS, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @outb(i32 %72, i32 %76)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @HT_CONFIG(%struct.TYPE_9__*) #1

declare dso_local i32 @HT_TIMING(%struct.TYPE_9__*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
