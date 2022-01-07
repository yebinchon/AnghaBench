; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_runtime-map.c_map_attr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_runtime-map.c_map_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.efi_runtime_map_entry = type { i32 }
%struct.map_attribute = type { i32 (%struct.efi_runtime_map_entry.0*, i8*)* }
%struct.efi_runtime_map_entry.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @map_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_attr_show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.efi_runtime_map_entry*, align 8
  %8 = alloca %struct.map_attribute*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.kobject*, %struct.kobject** %4, align 8
  %10 = call %struct.efi_runtime_map_entry* @to_map_entry(%struct.kobject* %9)
  store %struct.efi_runtime_map_entry* %10, %struct.efi_runtime_map_entry** %7, align 8
  %11 = load %struct.attribute*, %struct.attribute** %5, align 8
  %12 = call %struct.map_attribute* @to_map_attr(%struct.attribute* %11)
  store %struct.map_attribute* %12, %struct.map_attribute** %8, align 8
  %13 = load %struct.map_attribute*, %struct.map_attribute** %8, align 8
  %14 = getelementptr inbounds %struct.map_attribute, %struct.map_attribute* %13, i32 0, i32 0
  %15 = load i32 (%struct.efi_runtime_map_entry.0*, i8*)*, i32 (%struct.efi_runtime_map_entry.0*, i8*)** %14, align 8
  %16 = load %struct.efi_runtime_map_entry*, %struct.efi_runtime_map_entry** %7, align 8
  %17 = bitcast %struct.efi_runtime_map_entry* %16 to %struct.efi_runtime_map_entry.0*
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 %15(%struct.efi_runtime_map_entry.0* %17, i8* %18)
  ret i32 %19
}

declare dso_local %struct.efi_runtime_map_entry* @to_map_entry(%struct.kobject*) #1

declare dso_local %struct.map_attribute* @to_map_attr(%struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
