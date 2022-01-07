; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_esrt.c_esre_create_sysfs_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_esrt.c_esre_create_sysfs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.esre_entry = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@esrt_kset = common dso_local global i32 0, align 4
@esrt = common dso_local global %struct.TYPE_6__* null, align 8
@esre1_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"entry%d\00", align 1
@entry_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @esre_create_sysfs_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esre_create_sysfs_entry(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.esre_entry*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.esre_entry* @kzalloc(i32 16, i32 %8)
  store %struct.esre_entry* %9, %struct.esre_entry** %6, align 8
  %10 = load %struct.esre_entry*, %struct.esre_entry** %6, align 8
  %11 = icmp ne %struct.esre_entry* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load i32, i32* @esrt_kset, align 4
  %17 = load %struct.esre_entry*, %struct.esre_entry** %6, align 8
  %18 = getelementptr inbounds %struct.esre_entry, %struct.esre_entry* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @esrt, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.esre_entry*, %struct.esre_entry** %6, align 8
  %27 = getelementptr inbounds %struct.esre_entry, %struct.esre_entry* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.esre_entry*, %struct.esre_entry** %6, align 8
  %30 = getelementptr inbounds %struct.esre_entry, %struct.esre_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @kobject_init_and_add(%struct.TYPE_5__* %30, i32* @esre1_ktype, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.esre_entry*, %struct.esre_entry** %6, align 8
  %37 = call i32 @kfree(%struct.esre_entry* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.esre_entry*, %struct.esre_entry** %6, align 8
  %42 = getelementptr inbounds %struct.esre_entry, %struct.esre_entry* %41, i32 0, i32 0
  %43 = call i32 @list_add_tail(i32* %42, i32* @entry_list)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.esre_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_init_and_add(%struct.TYPE_5__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.esre_entry*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
