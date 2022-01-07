; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-floppy_ioctl.c_ide_floppy_lockdoor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-floppy_ioctl.c_ide_floppy_lockdoor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.ide_disk_obj* }
%struct.ide_disk_obj = type { i32, %struct.gendisk* }
%struct.gendisk = type { i32 }
%struct.ide_atapi_pc = type { i32 }

@CDROMEJECT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.ide_atapi_pc*, i64, i32)* @ide_floppy_lockdoor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_floppy_lockdoor(%struct.TYPE_5__* %0, %struct.ide_atapi_pc* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.ide_atapi_pc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ide_disk_obj*, align 8
  %11 = alloca %struct.gendisk*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.ide_atapi_pc* %1, %struct.ide_atapi_pc** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %14, align 8
  store %struct.ide_disk_obj* %15, %struct.ide_disk_obj** %10, align 8
  %16 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %10, align 8
  %17 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %16, i32 0, i32 1
  %18 = load %struct.gendisk*, %struct.gendisk** %17, align 8
  store %struct.gendisk* %18, %struct.gendisk** %11, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @CDROMEJECT, align 4
  %24 = icmp ne i32 %22, %23
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  store i32 %28, i32* %12, align 4
  %29 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %10, align 8
  %30 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %49

36:                                               ; preds = %25
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @ide_set_media_lock(%struct.TYPE_5__* %37, %struct.gendisk* %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @CDROMEJECT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %47 = call i32 @ide_do_start_stop(%struct.TYPE_5__* %45, %struct.gendisk* %46, i32 2)
  br label %48

48:                                               ; preds = %44, %36
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @ide_set_media_lock(%struct.TYPE_5__*, %struct.gendisk*, i32) #1

declare dso_local i32 @ide_do_start_stop(%struct.TYPE_5__*, %struct.gendisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
