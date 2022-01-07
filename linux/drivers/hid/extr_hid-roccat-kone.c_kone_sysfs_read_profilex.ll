; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_read_profilex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_read_profilex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i64 }
%struct.device = type { i32 }
%struct.kone_device = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @kone_sysfs_read_profilex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kone_sysfs_read_profilex(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.kone_device*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load %struct.kobject*, %struct.kobject** %9, align 8
  %17 = call %struct.TYPE_4__* @kobj_to_dev(%struct.kobject* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %14, align 8
  %22 = load %struct.device*, %struct.device** %14, align 8
  %23 = call i32 @dev_get_drvdata(%struct.device* %22)
  %24 = call %struct.kone_device* @hid_get_drvdata(i32 %23)
  store %struct.kone_device* %24, %struct.kone_device** %15, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %63

29:                                               ; preds = %6
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %13, align 8
  %33 = add i64 %31, %32
  %34 = icmp ugt i64 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 4, %37
  store i64 %38, i64* %13, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %41 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %45 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %48 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = bitcast i32* %52 to i8*
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @memcpy(i8* %43, i8* %56, i64 %57)
  %59 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %60 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i64, i64* %13, align 8
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %39, %28
  %64 = load i64, i64* %7, align 8
  ret i64 %64
}

declare dso_local %struct.TYPE_4__* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.kone_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
