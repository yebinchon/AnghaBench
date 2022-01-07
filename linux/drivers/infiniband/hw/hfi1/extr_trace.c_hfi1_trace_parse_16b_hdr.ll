; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c_hfi1_trace_parse_16b_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c_hfi1_trace_parse_16b_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_16b_header = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_trace_parse_16b_hdr(%struct.hfi1_16b_header* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca %struct.hfi1_16b_header*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.hfi1_16b_header* %0, %struct.hfi1_16b_header** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %25 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %13, align 8
  %26 = call i32 @hfi1_16B_get_age(%struct.hfi1_16b_header* %25)
  %27 = load i32*, i32** %14, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %13, align 8
  %29 = call i32 @hfi1_16B_get_becn(%struct.hfi1_16b_header* %28)
  %30 = load i32*, i32** %15, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %13, align 8
  %32 = call i32 @hfi1_16B_get_fecn(%struct.hfi1_16b_header* %31)
  %33 = load i32*, i32** %16, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %13, align 8
  %35 = call i32 @hfi1_16B_get_l4(%struct.hfi1_16b_header* %34)
  %36 = load i32*, i32** %17, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %13, align 8
  %38 = call i32 @hfi1_16B_get_rc(%struct.hfi1_16b_header* %37)
  %39 = load i32*, i32** %18, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %13, align 8
  %41 = call i32 @hfi1_16B_get_sc(%struct.hfi1_16b_header* %40)
  %42 = load i32*, i32** %19, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %13, align 8
  %44 = call i32 @hfi1_16B_get_entropy(%struct.hfi1_16b_header* %43)
  %45 = load i32*, i32** %20, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %13, align 8
  %47 = call i32 @hfi1_16B_get_len(%struct.hfi1_16b_header* %46)
  %48 = load i32*, i32** %21, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %13, align 8
  %50 = call i32 @hfi1_16B_get_pkey(%struct.hfi1_16b_header* %49)
  %51 = load i32*, i32** %22, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %13, align 8
  %53 = call i32 @hfi1_16B_get_dlid(%struct.hfi1_16b_header* %52)
  %54 = load i32*, i32** %23, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %13, align 8
  %56 = call i32 @hfi1_16B_get_slid(%struct.hfi1_16b_header* %55)
  %57 = load i32*, i32** %24, align 8
  store i32 %56, i32* %57, align 4
  ret void
}

declare dso_local i32 @hfi1_16B_get_age(%struct.hfi1_16b_header*) #1

declare dso_local i32 @hfi1_16B_get_becn(%struct.hfi1_16b_header*) #1

declare dso_local i32 @hfi1_16B_get_fecn(%struct.hfi1_16b_header*) #1

declare dso_local i32 @hfi1_16B_get_l4(%struct.hfi1_16b_header*) #1

declare dso_local i32 @hfi1_16B_get_rc(%struct.hfi1_16b_header*) #1

declare dso_local i32 @hfi1_16B_get_sc(%struct.hfi1_16b_header*) #1

declare dso_local i32 @hfi1_16B_get_entropy(%struct.hfi1_16b_header*) #1

declare dso_local i32 @hfi1_16B_get_len(%struct.hfi1_16b_header*) #1

declare dso_local i32 @hfi1_16B_get_pkey(%struct.hfi1_16b_header*) #1

declare dso_local i32 @hfi1_16B_get_dlid(%struct.hfi1_16b_header*) #1

declare dso_local i32 @hfi1_16B_get_slid(%struct.hfi1_16b_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
