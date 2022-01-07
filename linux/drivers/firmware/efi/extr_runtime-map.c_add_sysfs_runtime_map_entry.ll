; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_runtime-map.c_add_sysfs_runtime_map_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_runtime-map.c_add_sysfs_runtime_map_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_runtime_map_entry = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.kobject = type { i32 }

@map_kset = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"runtime-map\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@map_ktype = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efi_runtime_map_entry* (%struct.kobject*, i32, i32*)* @add_sysfs_runtime_map_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efi_runtime_map_entry* @add_sysfs_runtime_map_entry(%struct.kobject* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.efi_runtime_map_entry*, align 8
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.efi_runtime_map_entry*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** @map_kset, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = load %struct.kobject*, %struct.kobject** %5, align 8
  %14 = call i32* @kset_create_and_add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, %struct.kobject* %13)
  store i32* %14, i32** @map_kset, align 8
  %15 = load i32*, i32** @map_kset, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.efi_runtime_map_entry* @ERR_PTR(i32 %19)
  store %struct.efi_runtime_map_entry* %20, %struct.efi_runtime_map_entry** %4, align 8
  br label %61

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.efi_runtime_map_entry* @kzalloc(i32 16, i32 %23)
  store %struct.efi_runtime_map_entry* %24, %struct.efi_runtime_map_entry** %9, align 8
  %25 = load %struct.efi_runtime_map_entry*, %struct.efi_runtime_map_entry** %9, align 8
  %26 = icmp ne %struct.efi_runtime_map_entry* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** @map_kset, align 8
  %29 = call i32 @kset_unregister(i32* %28)
  store i32* null, i32** @map_kset, align 8
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.efi_runtime_map_entry* @ERR_PTR(i32 %31)
  store %struct.efi_runtime_map_entry* %32, %struct.efi_runtime_map_entry** %4, align 8
  br label %61

33:                                               ; preds = %22
  %34 = load %struct.efi_runtime_map_entry*, %struct.efi_runtime_map_entry** %9, align 8
  %35 = getelementptr inbounds %struct.efi_runtime_map_entry, %struct.efi_runtime_map_entry* %34, i32 0, i32 1
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @memcpy(i32* %35, i32* %36, i32 4)
  %38 = load %struct.efi_runtime_map_entry*, %struct.efi_runtime_map_entry** %9, align 8
  %39 = getelementptr inbounds %struct.efi_runtime_map_entry, %struct.efi_runtime_map_entry* %38, i32 0, i32 0
  %40 = call i32 @kobject_init(%struct.TYPE_4__* %39, i32* @map_ktype)
  %41 = load i32*, i32** @map_kset, align 8
  %42 = load %struct.efi_runtime_map_entry*, %struct.efi_runtime_map_entry** %9, align 8
  %43 = getelementptr inbounds %struct.efi_runtime_map_entry, %struct.efi_runtime_map_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32* %41, i32** %44, align 8
  %45 = load %struct.efi_runtime_map_entry*, %struct.efi_runtime_map_entry** %9, align 8
  %46 = getelementptr inbounds %struct.efi_runtime_map_entry, %struct.efi_runtime_map_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @kobject_add(%struct.TYPE_4__* %46, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %33
  %52 = load %struct.efi_runtime_map_entry*, %struct.efi_runtime_map_entry** %9, align 8
  %53 = getelementptr inbounds %struct.efi_runtime_map_entry, %struct.efi_runtime_map_entry* %52, i32 0, i32 0
  %54 = call i32 @kobject_put(%struct.TYPE_4__* %53)
  %55 = load i32*, i32** @map_kset, align 8
  %56 = call i32 @kset_unregister(i32* %55)
  store i32* null, i32** @map_kset, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call %struct.efi_runtime_map_entry* @ERR_PTR(i32 %57)
  store %struct.efi_runtime_map_entry* %58, %struct.efi_runtime_map_entry** %4, align 8
  br label %61

59:                                               ; preds = %33
  %60 = load %struct.efi_runtime_map_entry*, %struct.efi_runtime_map_entry** %9, align 8
  store %struct.efi_runtime_map_entry* %60, %struct.efi_runtime_map_entry** %4, align 8
  br label %61

61:                                               ; preds = %59, %51, %27, %17
  %62 = load %struct.efi_runtime_map_entry*, %struct.efi_runtime_map_entry** %4, align 8
  ret %struct.efi_runtime_map_entry* %62
}

declare dso_local i32* @kset_create_and_add(i8*, i32*, %struct.kobject*) #1

declare dso_local %struct.efi_runtime_map_entry* @ERR_PTR(i32) #1

declare dso_local %struct.efi_runtime_map_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @kset_unregister(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kobject_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @kobject_add(%struct.TYPE_4__*, i32*, i8*, i32) #1

declare dso_local i32 @kobject_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
