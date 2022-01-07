; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_dbg.c_hidma_ll_devstats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_dbg.c_hidma_ll_devstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hidma_lldev = type { i32*, i32*, i32*, i32, i32*, i32*, i32, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [20 x i8] c"------Device -----\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"lldev init = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"trch_state = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"evch_state = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"chidx = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"nr_tres = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"trca=%p\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"tre_ring=%p\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"tre_ring_handle=%pap\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"tre_ring_size = 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"tre_processed_off = 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"pending_tre_count=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"evca=%p\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"evre_ring=%p\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"evre_ring_handle=%pap\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"evre_ring_size = 0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"evre_processed_off = 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"tre_write_offset = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @hidma_ll_devstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidma_ll_devstats(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hidma_lldev*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.hidma_lldev*
  store %struct.hidma_lldev* %7, %struct.hidma_lldev** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = call i32 @seq_puts(%struct.seq_file* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %12 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %11, i32 0, i32 16
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %17 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %16, i32 0, i32 15
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %22 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %21, i32 0, i32 14
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %27 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %26, i32 0, i32 13
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %32 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %31, i32 0, i32 12
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %37 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %36, i32 0, i32 11
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %42 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %41, i32 0, i32 10
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %47 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %46, i32 0, i32 9
  %48 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32* %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %51 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %50, i32 0, i32 8
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32* %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %56 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %55, i32 0, i32 7
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32* %57)
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %61 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %60, i32 0, i32 6
  %62 = call i32* @atomic_read(i32* %61)
  %63 = call i32 @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32* %62)
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %66 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32* %67)
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %71 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32* %72)
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %76 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %75, i32 0, i32 3
  %77 = call i32 @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32* %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %80 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32* %81)
  %83 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %84 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %85 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32* %86)
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = load %struct.hidma_lldev*, %struct.hidma_lldev** %5, align 8
  %90 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32* %91)
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32*) #1

declare dso_local i32* @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
