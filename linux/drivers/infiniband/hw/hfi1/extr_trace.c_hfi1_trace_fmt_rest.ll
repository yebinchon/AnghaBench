; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c_hfi1_trace_fmt_rest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c_hfi1_trace_fmt_rest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@OPA_16B_L4_FM = common dso_local global i64 0, align 8
@L4_FM_16B_PRN = common dso_local global i32 0, align 4
@BTH_16B_PRN = common dso_local global i32 0, align 4
@BTH_9B_PRN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hfi1_trace_fmt_rest(%struct.trace_seq* %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5, i64 %6, i64 %7, i64 %8, i64 %9, i8* %10, i64 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16) #0 {
  %18 = alloca %struct.trace_seq*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %18, align 8
  store i32 %1, i32* %19, align 4
  store i64 %2, i64* %20, align 8
  store i64 %3, i64* %21, align 8
  store i32 %4, i32* %22, align 4
  store i32 %5, i32* %23, align 4
  store i64 %6, i64* %24, align 8
  store i64 %7, i64* %25, align 8
  store i64 %8, i64* %26, align 8
  store i64 %9, i64* %27, align 8
  store i8* %10, i8** %28, align 8
  store i64 %11, i64* %29, align 8
  store i32 %12, i32* %30, align 4
  store i32 %13, i32* %31, align 4
  store i32 %14, i32* %32, align 4
  store i32 %15, i32* %33, align 4
  store i32 %16, i32* %34, align 4
  %36 = load %struct.trace_seq*, %struct.trace_seq** %18, align 8
  %37 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %36)
  store i8* %37, i8** %35, align 8
  %38 = load i32, i32* %19, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %17
  %41 = load i64, i64* %20, align 8
  %42 = load i64, i64* @OPA_16B_L4_FM, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.trace_seq*, %struct.trace_seq** %18, align 8
  %46 = load i32, i32* @L4_FM_16B_PRN, align 4
  %47 = load i64, i64* %27, align 8
  %48 = load i8*, i8** %28, align 8
  %49 = load i32, i32* %33, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %34, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 (%struct.trace_seq*, i32, i64, i8*, i64, i64, ...) @trace_seq_printf(%struct.trace_seq* %45, i32 %46, i64 %47, i8* %48, i64 %50, i64 %52)
  br label %67

54:                                               ; preds = %40
  %55 = load %struct.trace_seq*, %struct.trace_seq** %18, align 8
  %56 = load i32, i32* @BTH_16B_PRN, align 4
  %57 = load i64, i64* %27, align 8
  %58 = load i8*, i8** %28, align 8
  %59 = load i64, i64* %25, align 8
  %60 = load i64, i64* %24, align 8
  %61 = load i64, i64* %26, align 8
  %62 = load i64, i64* %29, align 8
  %63 = load i32, i32* %32, align 4
  %64 = load i64, i64* %21, align 8
  %65 = load i32, i32* %31, align 4
  %66 = call i32 (%struct.trace_seq*, i32, i64, i8*, i64, i64, ...) @trace_seq_printf(%struct.trace_seq* %55, i32 %56, i64 %57, i8* %58, i64 %59, i64 %60, i64 %61, i64 %62, i32 %63, i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %54, %44
  br label %84

68:                                               ; preds = %17
  %69 = load %struct.trace_seq*, %struct.trace_seq** %18, align 8
  %70 = load i32, i32* @BTH_9B_PRN, align 4
  %71 = load i64, i64* %27, align 8
  %72 = load i8*, i8** %28, align 8
  %73 = load i64, i64* %25, align 8
  %74 = load i64, i64* %24, align 8
  %75 = load i64, i64* %26, align 8
  %76 = load i64, i64* %29, align 8
  %77 = load i32, i32* %30, align 4
  %78 = load i32, i32* %23, align 4
  %79 = load i32, i32* %22, align 4
  %80 = load i32, i32* %32, align 4
  %81 = load i64, i64* %21, align 8
  %82 = load i32, i32* %31, align 4
  %83 = call i32 (%struct.trace_seq*, i32, i64, i8*, i64, i64, ...) @trace_seq_printf(%struct.trace_seq* %69, i32 %70, i64 %71, i8* %72, i64 %73, i64 %74, i64 %75, i64 %76, i32 %77, i32 %78, i32 %79, i32 %80, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %68, %67
  %85 = load %struct.trace_seq*, %struct.trace_seq** %18, align 8
  %86 = call i32 @trace_seq_putc(%struct.trace_seq* %85, i32 0)
  %87 = load i8*, i8** %35, align 8
  ret i8* %87
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i32, i64, i8*, i64, i64, ...) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
