; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_info = type { i32, i32 }
%struct.gendisk = type { i32 }

@idecd_ref_mutex = common dso_local global i32 0, align 4
@cdrom_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cdrom_info* (%struct.gendisk*)* @ide_cd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cdrom_info* @ide_cd_get(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.cdrom_info*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  store %struct.cdrom_info* null, %struct.cdrom_info** %3, align 8
  %4 = call i32 @mutex_lock(i32* @idecd_ref_mutex)
  %5 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %6 = load i32, i32* @cdrom_info, align 4
  %7 = call %struct.cdrom_info* @ide_drv_g(%struct.gendisk* %5, i32 %6)
  store %struct.cdrom_info* %7, %struct.cdrom_info** %3, align 8
  %8 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %9 = icmp ne %struct.cdrom_info* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %12 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ide_device_get(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store %struct.cdrom_info* null, %struct.cdrom_info** %3, align 8
  br label %21

17:                                               ; preds = %10
  %18 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  %19 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %18, i32 0, i32 0
  %20 = call i32 @get_device(i32* %19)
  br label %21

21:                                               ; preds = %17, %16
  br label %22

22:                                               ; preds = %21, %1
  %23 = call i32 @mutex_unlock(i32* @idecd_ref_mutex)
  %24 = load %struct.cdrom_info*, %struct.cdrom_info** %3, align 8
  ret %struct.cdrom_info* %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cdrom_info* @ide_drv_g(%struct.gendisk*, i32) #1

declare dso_local i64 @ide_device_get(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
