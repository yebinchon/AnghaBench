; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-gd.c_ide_gd_unlock_native_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-gd.c_ide_gd_unlock_native_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.ide_disk_obj = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ide_disk_ops* }
%struct.ide_disk_ops = type { i32 (%struct.TYPE_3__*)* }

@ide_disk_obj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*)* @ide_gd_unlock_native_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_gd_unlock_native_capacity(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.ide_disk_obj*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.ide_disk_ops*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %7 = load i32, i32* @ide_disk_obj, align 4
  %8 = call %struct.ide_disk_obj* @ide_drv_g(%struct.gendisk* %6, i32 %7)
  store %struct.ide_disk_obj* %8, %struct.ide_disk_obj** %3, align 8
  %9 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %3, align 8
  %10 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.ide_disk_ops*, %struct.ide_disk_ops** %13, align 8
  store %struct.ide_disk_ops* %14, %struct.ide_disk_ops** %5, align 8
  %15 = load %struct.ide_disk_ops*, %struct.ide_disk_ops** %5, align 8
  %16 = getelementptr inbounds %struct.ide_disk_ops, %struct.ide_disk_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_3__*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.ide_disk_ops*, %struct.ide_disk_ops** %5, align 8
  %21 = getelementptr inbounds %struct.ide_disk_ops, %struct.ide_disk_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = call i32 %22(%struct.TYPE_3__* %23)
  br label %25

25:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.ide_disk_obj* @ide_drv_g(%struct.gendisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
