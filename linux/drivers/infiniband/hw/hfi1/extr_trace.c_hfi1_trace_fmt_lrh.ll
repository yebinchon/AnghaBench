; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c_hfi1_trace_fmt_lrh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_trace.c_hfi1_trace_fmt_lrh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@LRH_PRN = common dso_local global i32 0, align 4
@LRH_16B_PRN = common dso_local global i32 0, align 4
@LRH_9B_PRN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hfi1_trace_fmt_lrh(%struct.trace_seq* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13, i8* %14, i8* %15, i8* %16) #0 {
  %18 = alloca %struct.trace_seq*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %18, align 8
  store i32 %1, i32* %19, align 4
  store i8* %2, i8** %20, align 8
  store i32 %3, i32* %21, align 4
  store i32 %4, i32* %22, align 4
  store i8* %5, i8** %23, align 8
  store i8* %6, i8** %24, align 8
  store i8* %7, i8** %25, align 8
  store i8* %8, i8** %26, align 8
  store i8* %9, i8** %27, align 8
  store i8* %10, i8** %28, align 8
  store i8* %11, i8** %29, align 8
  store i8* %12, i8** %30, align 8
  store i8* %13, i8** %31, align 8
  store i8* %14, i8** %32, align 8
  store i8* %15, i8** %33, align 8
  store i8* %16, i8** %34, align 8
  %36 = load %struct.trace_seq*, %struct.trace_seq** %18, align 8
  %37 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %36)
  store i8* %37, i8** %35, align 8
  %38 = load %struct.trace_seq*, %struct.trace_seq** %18, align 8
  %39 = load i32, i32* @LRH_PRN, align 4
  %40 = load i8*, i8** %31, align 8
  %41 = load i8*, i8** %28, align 8
  %42 = load i8*, i8** %33, align 8
  %43 = load i8*, i8** %34, align 8
  %44 = call i32 (%struct.trace_seq*, i32, i8*, ...) @trace_seq_printf(%struct.trace_seq* %38, i32 %39, i8* %40, i8* %41, i8* %42, i8* %43)
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %17
  %48 = load %struct.trace_seq*, %struct.trace_seq** %18, align 8
  %49 = load i32, i32* @LRH_16B_PRN, align 4
  %50 = load i8*, i8** %20, align 8
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %22, align 4
  %53 = load i8*, i8** %23, align 8
  %54 = load i8*, i8** %27, align 8
  %55 = load i8*, i8** %28, align 8
  %56 = load i8*, i8** %32, align 8
  %57 = load i8*, i8** %30, align 8
  %58 = call i32 (%struct.trace_seq*, i32, i8*, ...) @trace_seq_printf(%struct.trace_seq* %48, i32 %49, i8* %50, i32 %51, i32 %52, i8* %53, i8* %54, i8* %55, i8* %56, i8* %57)
  br label %67

59:                                               ; preds = %17
  %60 = load %struct.trace_seq*, %struct.trace_seq** %18, align 8
  %61 = load i32, i32* @LRH_9B_PRN, align 4
  %62 = load i8*, i8** %24, align 8
  %63 = load i8*, i8** %25, align 8
  %64 = load i8*, i8** %26, align 8
  %65 = load i8*, i8** %29, align 8
  %66 = call i32 (%struct.trace_seq*, i32, i8*, ...) @trace_seq_printf(%struct.trace_seq* %60, i32 %61, i8* %62, i8* %63, i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %59, %47
  %68 = load %struct.trace_seq*, %struct.trace_seq** %18, align 8
  %69 = call i32 @trace_seq_putc(%struct.trace_seq* %68, i32 0)
  %70 = load i8*, i8** %35, align 8
  ret i8* %70
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i32, i8*, ...) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
