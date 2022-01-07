; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c_hfi1_trace_parse_16b_bth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c_hfi1_trace_parse_16b_bth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_other_headers = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_trace_parse_16b_bth(%struct.ib_other_headers* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.ib_other_headers*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.ib_other_headers* %0, %struct.ib_other_headers** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %19 = load %struct.ib_other_headers*, %struct.ib_other_headers** %10, align 8
  %20 = call i32 @ib_bth_get_ackreq(%struct.ib_other_headers* %19)
  %21 = load i32*, i32** %11, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.ib_other_headers*, %struct.ib_other_headers** %10, align 8
  %23 = call i32 @ib_bth_get_migreq(%struct.ib_other_headers* %22)
  %24 = load i32*, i32** %12, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ib_other_headers*, %struct.ib_other_headers** %10, align 8
  %26 = call i32 @ib_bth_get_opcode(%struct.ib_other_headers* %25)
  %27 = load i32*, i32** %13, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.ib_other_headers*, %struct.ib_other_headers** %10, align 8
  %29 = call i32 @ib_bth_get_pad(%struct.ib_other_headers* %28)
  %30 = load i32*, i32** %14, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ib_other_headers*, %struct.ib_other_headers** %10, align 8
  %32 = call i32 @ib_bth_get_se(%struct.ib_other_headers* %31)
  %33 = load i32*, i32** %15, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ib_other_headers*, %struct.ib_other_headers** %10, align 8
  %35 = call i32 @ib_bth_get_tver(%struct.ib_other_headers* %34)
  %36 = load i32*, i32** %16, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.ib_other_headers*, %struct.ib_other_headers** %10, align 8
  %38 = call i32 @ib_bth_get_psn(%struct.ib_other_headers* %37)
  %39 = call i32 @mask_psn(i32 %38)
  %40 = load i32*, i32** %17, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ib_other_headers*, %struct.ib_other_headers** %10, align 8
  %42 = call i32 @ib_bth_get_qpn(%struct.ib_other_headers* %41)
  %43 = load i32*, i32** %18, align 8
  store i32 %42, i32* %43, align 4
  ret void
}

declare dso_local i32 @ib_bth_get_ackreq(%struct.ib_other_headers*) #1

declare dso_local i32 @ib_bth_get_migreq(%struct.ib_other_headers*) #1

declare dso_local i32 @ib_bth_get_opcode(%struct.ib_other_headers*) #1

declare dso_local i32 @ib_bth_get_pad(%struct.ib_other_headers*) #1

declare dso_local i32 @ib_bth_get_se(%struct.ib_other_headers*) #1

declare dso_local i32 @ib_bth_get_tver(%struct.ib_other_headers*) #1

declare dso_local i32 @mask_psn(i32) #1

declare dso_local i32 @ib_bth_get_psn(%struct.ib_other_headers*) #1

declare dso_local i32 @ib_bth_get_qpn(%struct.ib_other_headers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
