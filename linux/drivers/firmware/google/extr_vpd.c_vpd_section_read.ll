; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_section_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_section_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { %struct.vpd_section* }
%struct.vpd_section = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @vpd_section_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpd_section_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.vpd_section*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load %struct.bin_attribute*, %struct.bin_attribute** %9, align 8
  %15 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %14, i32 0, i32 0
  %16 = load %struct.vpd_section*, %struct.vpd_section** %15, align 8
  store %struct.vpd_section* %16, %struct.vpd_section** %13, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load %struct.vpd_section*, %struct.vpd_section** %13, align 8
  %20 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vpd_section*, %struct.vpd_section** %13, align 8
  %23 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memory_read_from_buffer(i8* %17, i64 %18, i32* %11, i32 %21, i32 %25)
  ret i32 %26
}

declare dso_local i32 @memory_read_from_buffer(i8*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
