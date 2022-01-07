; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_ide_tape_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_ide_tape_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ide_tape_obj = type { i32, i32, %struct.gendisk*, %struct.TYPE_2__* }
%struct.gendisk = type { i32* }
%struct.TYPE_2__ = type { i32*, i32 }

@ide_tape_obj = common dso_local global i32 0, align 4
@IDE_DFLAG_DSC_OVERLAP = common dso_local global i32 0, align 4
@idetape_sysfs_class = common dso_local global i32 0, align 4
@IDETAPE_MAJOR = common dso_local global i32 0, align 4
@idetape_devs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ide_tape_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_tape_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ide_tape_obj*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca %struct.gendisk*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = load i32, i32* @ide_tape_obj, align 4
  %8 = call %struct.ide_tape_obj* @to_ide_drv(%struct.device* %6, i32 %7)
  store %struct.ide_tape_obj* %8, %struct.ide_tape_obj** %3, align 8
  %9 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %3, align 8
  %10 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %4, align 8
  %12 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %3, align 8
  %13 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %12, i32 0, i32 2
  %14 = load %struct.gendisk*, %struct.gendisk** %13, align 8
  store %struct.gendisk* %14, %struct.gendisk** %5, align 8
  %15 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %3, align 8
  %16 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* @IDE_DFLAG_DSC_OVERLAP, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* @idetape_sysfs_class, align 4
  %28 = load i32, i32* @IDETAPE_MAJOR, align 4
  %29 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %3, align 8
  %30 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MKDEV(i32 %28, i32 %31)
  %33 = call i32 @device_destroy(i32 %27, i32 %32)
  %34 = load i32, i32* @idetape_sysfs_class, align 4
  %35 = load i32, i32* @IDETAPE_MAJOR, align 4
  %36 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %3, align 8
  %37 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 128
  %40 = call i32 @MKDEV(i32 %35, i32 %39)
  %41 = call i32 @device_destroy(i32 %34, i32 %40)
  %42 = load i32**, i32*** @idetape_devs, align 8
  %43 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %3, align 8
  %44 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %42, i64 %46
  store i32* null, i32** %47, align 8
  %48 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %49 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %51 = call i32 @put_disk(%struct.gendisk* %50)
  %52 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %3, align 8
  %53 = call i32 @kfree(%struct.ide_tape_obj* %52)
  ret void
}

declare dso_local %struct.ide_tape_obj* @to_ide_drv(%struct.device*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @kfree(%struct.ide_tape_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
