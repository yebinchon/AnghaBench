; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_char_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_char_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.stm_file* }
%struct.stm_file = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@stm_class = common dso_local global i32 0, align 4
@major_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @stm_char_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_char_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.stm_file*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @imajor(%struct.inode* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @major_match, align 4
  %15 = call %struct.device* @class_find_device(i32* @stm_class, i32* null, i32* %8, i32 %14)
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.stm_file* @kzalloc(i32 16, i32 %22)
  store %struct.stm_file* %23, %struct.stm_file** %6, align 8
  %24 = load %struct.stm_file*, %struct.stm_file** %6, align 8
  %25 = icmp ne %struct.stm_file* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %55

27:                                               ; preds = %21
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.stm_file*, %struct.stm_file** %6, align 8
  %31 = getelementptr inbounds %struct.stm_file, %struct.stm_file* %30, i32 0, i32 1
  %32 = call i32 @stm_output_init(i32* %31)
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = call %struct.TYPE_2__* @to_stm_device(%struct.device* %33)
  %35 = load %struct.stm_file*, %struct.stm_file** %6, align 8
  %36 = getelementptr inbounds %struct.stm_file, %struct.stm_file* %35, i32 0, i32 0
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.stm_file*, %struct.stm_file** %6, align 8
  %38 = getelementptr inbounds %struct.stm_file, %struct.stm_file* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @try_module_get(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %27
  br label %52

45:                                               ; preds = %27
  %46 = load %struct.stm_file*, %struct.stm_file** %6, align 8
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  store %struct.stm_file* %46, %struct.stm_file** %48, align 8
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = load %struct.file*, %struct.file** %5, align 8
  %51 = call i32 @nonseekable_open(%struct.inode* %49, %struct.file* %50)
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %44
  %53 = load %struct.stm_file*, %struct.stm_file** %6, align 8
  %54 = call i32 @kfree(%struct.stm_file* %53)
  br label %55

55:                                               ; preds = %52, %26
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = call i32 @put_device(%struct.device* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %45, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local %struct.device* @class_find_device(i32*, i32*, i32*, i32) #1

declare dso_local %struct.stm_file* @kzalloc(i32, i32) #1

declare dso_local i32 @stm_output_init(i32*) #1

declare dso_local %struct.TYPE_2__* @to_stm_device(%struct.device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @kfree(%struct.stm_file*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
