; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-gd.c_ide_disk_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-gd.c_ide_disk_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ide_disk_obj = type { %struct.gendisk*, %struct.TYPE_2__* }
%struct.gendisk = type { i32* }
%struct.TYPE_2__ = type { i32*, i32* }

@ide_disk_obj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ide_disk_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_disk_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ide_disk_obj*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca %struct.gendisk*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = load i32, i32* @ide_disk_obj, align 4
  %8 = call %struct.ide_disk_obj* @to_ide_drv(%struct.device* %6, i32 %7)
  store %struct.ide_disk_obj* %8, %struct.ide_disk_obj** %3, align 8
  %9 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %3, align 8
  %10 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %4, align 8
  %12 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %3, align 8
  %13 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %12, i32 0, i32 0
  %14 = load %struct.gendisk*, %struct.gendisk** %13, align 8
  store %struct.gendisk* %14, %struct.gendisk** %5, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %20 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %22 = call i32 @put_disk(%struct.gendisk* %21)
  %23 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %3, align 8
  %24 = call i32 @kfree(%struct.ide_disk_obj* %23)
  ret void
}

declare dso_local %struct.ide_disk_obj* @to_ide_drv(%struct.device*, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @kfree(%struct.ide_disk_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
