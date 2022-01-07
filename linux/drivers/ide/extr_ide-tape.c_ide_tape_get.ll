; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_ide_tape_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_ide_tape_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_tape_obj = type { i32, i32 }
%struct.gendisk = type { i32 }

@idetape_ref_mutex = common dso_local global i32 0, align 4
@idetape_devs = common dso_local global %struct.ide_tape_obj** null, align 8
@ide_tape_obj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ide_tape_obj* (%struct.gendisk*, i32, i32)* @ide_tape_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ide_tape_obj* @ide_tape_get(%struct.gendisk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ide_tape_obj*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.ide_tape_obj* null, %struct.ide_tape_obj** %7, align 8
  %8 = call i32 @mutex_lock(i32* @idetape_ref_mutex)
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.ide_tape_obj**, %struct.ide_tape_obj*** @idetape_devs, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ide_tape_obj*, %struct.ide_tape_obj** %12, i64 %14
  %16 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %15, align 8
  store %struct.ide_tape_obj* %16, %struct.ide_tape_obj** %7, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %19 = load i32, i32* @ide_tape_obj, align 4
  %20 = call %struct.ide_tape_obj* @ide_drv_g(%struct.gendisk* %18, i32 %19)
  store %struct.ide_tape_obj* %20, %struct.ide_tape_obj** %7, align 8
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %7, align 8
  %23 = icmp ne %struct.ide_tape_obj* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %7, align 8
  %26 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ide_device_get(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store %struct.ide_tape_obj* null, %struct.ide_tape_obj** %7, align 8
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %7, align 8
  %33 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %32, i32 0, i32 0
  %34 = call i32 @get_device(i32* %33)
  br label %35

35:                                               ; preds = %31, %30
  br label %36

36:                                               ; preds = %35, %21
  %37 = call i32 @mutex_unlock(i32* @idetape_ref_mutex)
  %38 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %7, align 8
  ret %struct.ide_tape_obj* %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ide_tape_obj* @ide_drv_g(%struct.gendisk*, i32) #1

declare dso_local i64 @ide_device_get(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
