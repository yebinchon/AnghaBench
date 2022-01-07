; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_context_link_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_context_link_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_context = type { i64, i32, i32, %struct.descriptor* }
%struct.descriptor = type { i32, i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@CONTEXT_WAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar_context*, i32)* @ar_context_link_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar_context_link_page(%struct.ar_context* %0, i32 %1) #0 {
  %3 = alloca %struct.ar_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.descriptor*, align 8
  store %struct.ar_context* %0, %struct.ar_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %7 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %6, i32 0, i32 3
  %8 = load %struct.descriptor*, %struct.descriptor** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %8, i64 %10
  store %struct.descriptor* %11, %struct.descriptor** %5, align 8
  %12 = call i32 @cpu_to_le32(i32 -16)
  %13 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %14 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = call i32 @cpu_to_le16(i32 %17)
  %19 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %20 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %22 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = call i32 (...) @wmb()
  %24 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %25 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %24, i32 0, i32 3
  %26 = load %struct.descriptor*, %struct.descriptor** %25, align 8
  %27 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %28 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %26, i64 %29
  store %struct.descriptor* %30, %struct.descriptor** %5, align 8
  %31 = call i32 @cpu_to_le32(i32 1)
  %32 = load %struct.descriptor*, %struct.descriptor** %5, align 8
  %33 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %39 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %41 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %44 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @CONTROL_SET(i32 %45)
  %47 = load i32, i32* @CONTEXT_WAKE, align 4
  %48 = call i32 @reg_write(i32 %42, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @CONTROL_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
