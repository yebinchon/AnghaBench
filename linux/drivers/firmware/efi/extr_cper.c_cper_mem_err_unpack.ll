; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_mem_err_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_mem_err_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.cper_mem_err_compact = type { i32 }

@rcd_decode_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cper_mem_err_unpack(%struct.trace_seq* %0, %struct.cper_mem_err_compact* %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca %struct.cper_mem_err_compact*, align 8
  %5 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store %struct.cper_mem_err_compact* %1, %struct.cper_mem_err_compact** %4, align 8
  %6 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %7 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %6)
  store i8* %7, i8** %5, align 8
  %8 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %9 = load i32, i32* @rcd_decode_str, align 4
  %10 = call i64 @cper_mem_err_location(%struct.cper_mem_err_compact* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %14 = load i32, i32* @rcd_decode_str, align 4
  %15 = call i32 @trace_seq_printf(%struct.trace_seq* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %18 = load i32, i32* @rcd_decode_str, align 4
  %19 = call i64 @cper_dimm_err_location(%struct.cper_mem_err_compact* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %23 = load i32, i32* @rcd_decode_str, align 4
  %24 = call i32 @trace_seq_printf(%struct.trace_seq* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %27 = call i32 @trace_seq_putc(%struct.trace_seq* %26, i8 signext 0)
  %28 = load i8*, i8** %5, align 8
  ret i8* %28
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i64 @cper_mem_err_location(%struct.cper_mem_err_compact*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32) #1

declare dso_local i64 @cper_dimm_err_location(%struct.cper_mem_err_compact*, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
