; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_drive_is_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_drive_is_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { {}* }

@IDE_HFLAG_BROKEN_ALTSTATUS = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @drive_is_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drive_is_ready(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.TYPE_14__*)**
  %19 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = call i32 %19(%struct.TYPE_14__* %20)
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IDE_HFLAG_BROKEN_ALTSTATUS, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = call i32 %40(%struct.TYPE_13__* %41)
  store i32 %42, i32* %5, align 4
  br label %51

43:                                               ; preds = %28, %22
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = call i32 %48(%struct.TYPE_13__* %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %35
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ATA_BUSY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %58

57:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %56, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
