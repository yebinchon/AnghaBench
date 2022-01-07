; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_seqfile_dump_sci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_seqfile_dump_sci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.send_context_info = type { i32, i32, i32, %struct.send_context* }
%struct.send_context = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"SCI %u: type %u base %u credits %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"  flags 0x%x sw_inx %u hw_ctxt %u grp %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"  sr_size %u credits %u sr_head %u sr_tail %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"  fill %lu free %lu fill_wrap %u alloc_free %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"  credit_intr_count %u credit_ctrl 0x%llx\0A\00", align 1
@CREDIT_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"  *hw_free %llu CurrentFree %llu LastReturned %llu\0A\00", align 1
@CR_COUNTER_SMASK = common dso_local global i32 0, align 4
@CR_COUNTER_SHIFT = common dso_local global i32 0, align 4
@CREDIT_STATUS_CURRENT_FREE_COUNTER_SHIFT = common dso_local global i32 0, align 4
@CREDIT_STATUS_CURRENT_FREE_COUNTER_MASK = common dso_local global i32 0, align 4
@CREDIT_STATUS_LAST_RETURNED_COUNTER_SMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seqfile_dump_sci(%struct.seq_file* %0, i32 %1, %struct.send_context_info* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.send_context_info*, align 8
  %7 = alloca %struct.send_context*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.send_context_info* %2, %struct.send_context_info** %6, align 8
  %9 = load %struct.send_context_info*, %struct.send_context_info** %6, align 8
  %10 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %9, i32 0, i32 3
  %11 = load %struct.send_context*, %struct.send_context** %10, align 8
  store %struct.send_context* %11, %struct.send_context** %7, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.send_context_info*, %struct.send_context_info** %6, align 8
  %15 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.send_context_info*, %struct.send_context_info** %6, align 8
  %18 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.send_context_info*, %struct.send_context_info** %6, align 8
  %21 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load %struct.send_context*, %struct.send_context** %7, align 8
  %26 = getelementptr inbounds %struct.send_context, %struct.send_context* %25, i32 0, i32 15
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.send_context*, %struct.send_context** %7, align 8
  %29 = getelementptr inbounds %struct.send_context, %struct.send_context* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.send_context*, %struct.send_context** %7, align 8
  %32 = getelementptr inbounds %struct.send_context, %struct.send_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.send_context*, %struct.send_context** %7, align 8
  %35 = getelementptr inbounds %struct.send_context, %struct.send_context* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = load %struct.send_context*, %struct.send_context** %7, align 8
  %40 = getelementptr inbounds %struct.send_context, %struct.send_context* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.send_context*, %struct.send_context** %7, align 8
  %43 = getelementptr inbounds %struct.send_context, %struct.send_context* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.send_context*, %struct.send_context** %7, align 8
  %46 = getelementptr inbounds %struct.send_context, %struct.send_context* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.send_context*, %struct.send_context** %7, align 8
  %49 = getelementptr inbounds %struct.send_context, %struct.send_context* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %53 = load %struct.send_context*, %struct.send_context** %7, align 8
  %54 = getelementptr inbounds %struct.send_context, %struct.send_context* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.send_context*, %struct.send_context** %7, align 8
  %57 = getelementptr inbounds %struct.send_context, %struct.send_context* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.send_context*, %struct.send_context** %7, align 8
  %60 = getelementptr inbounds %struct.send_context, %struct.send_context* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.send_context*, %struct.send_context** %7, align 8
  %63 = getelementptr inbounds %struct.send_context, %struct.send_context* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %58, i32 %61, i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %67 = load %struct.send_context*, %struct.send_context** %7, align 8
  %68 = getelementptr inbounds %struct.send_context, %struct.send_context* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.send_context*, %struct.send_context** %7, align 8
  %71 = getelementptr inbounds %struct.send_context, %struct.send_context* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.send_context*, %struct.send_context** %7, align 8
  %75 = getelementptr inbounds %struct.send_context, %struct.send_context* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.send_context*, %struct.send_context** %7, align 8
  %78 = getelementptr inbounds %struct.send_context, %struct.send_context* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CREDIT_STATUS, align 4
  %81 = call i32 @SC(i32 %80)
  %82 = call i32 @read_kctxt_csr(i32 %76, i32 %79, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %84 = load %struct.send_context*, %struct.send_context** %7, align 8
  %85 = getelementptr inbounds %struct.send_context, %struct.send_context* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le64_to_cpu(i32 %87)
  %89 = load i32, i32* @CR_COUNTER_SMASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @CR_COUNTER_SHIFT, align 4
  %92 = ashr i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @CREDIT_STATUS_CURRENT_FREE_COUNTER_SHIFT, align 4
  %95 = call i32 @SC(i32 %94)
  %96 = ashr i32 %93, %95
  %97 = load i32, i32* @CREDIT_STATUS_CURRENT_FREE_COUNTER_MASK, align 4
  %98 = call i32 @SC(i32 %97)
  %99 = and i32 %96, %98
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @CREDIT_STATUS_LAST_RETURNED_COUNTER_SMASK, align 4
  %102 = call i32 @SC(i32 %101)
  %103 = and i32 %100, %102
  %104 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %92, i32 %99, i32 %103)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, ...) #1

declare dso_local i32 @read_kctxt_csr(i32, i32, i32) #1

declare dso_local i32 @SC(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
