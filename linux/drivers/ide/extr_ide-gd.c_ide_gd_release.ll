; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-gd.c_ide_gd_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-gd.c_ide_gd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.ide_disk_obj = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.gendisk*, i32)*, i32 (%struct.TYPE_6__*)* }

@ide_disk_obj = common dso_local global i32 0, align 4
@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@ide_gd_mutex = common dso_local global i32 0, align 4
@IDE_DFLAG_REMOVABLE = common dso_local global i32 0, align 4
@IDE_DFLAG_FORMAT_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, i32)* @ide_gd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_gd_release(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ide_disk_obj*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = load i32, i32* @ide_disk_obj, align 4
  %9 = call %struct.ide_disk_obj* @ide_drv_g(%struct.gendisk* %7, i32 %8)
  store %struct.ide_disk_obj* %9, %struct.ide_disk_obj** %5, align 8
  %10 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %5, align 8
  %11 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load i32, i32* @IDE_DBG_FUNC, align 4
  %14 = call i32 @ide_debug_log(i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @mutex_lock(i32* @ide_gd_mutex)
  %16 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %5, align 8
  %17 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = call i32 %25(%struct.TYPE_6__* %26)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IDE_DFLAG_REMOVABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %5, align 8
  %37 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_6__*, %struct.gendisk*, i32)*, i32 (%struct.TYPE_6__*, %struct.gendisk*, i32)** %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %48 = call i32 %45(%struct.TYPE_6__* %46, %struct.gendisk* %47, i32 0)
  %49 = load i32, i32* @IDE_DFLAG_FORMAT_IN_PROGRESS, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %40, %35, %28
  %56 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %5, align 8
  %57 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %5, align 8
  %61 = call i32 @ide_disk_put(%struct.ide_disk_obj* %60)
  %62 = call i32 @mutex_unlock(i32* @ide_gd_mutex)
  ret void
}

declare dso_local %struct.ide_disk_obj* @ide_drv_g(%struct.gendisk*, i32) #1

declare dso_local i32 @ide_debug_log(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ide_disk_put(%struct.ide_disk_obj*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
