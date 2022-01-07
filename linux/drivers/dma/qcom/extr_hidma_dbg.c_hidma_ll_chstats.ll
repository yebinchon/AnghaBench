; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_dbg.c_hidma_ll_chstats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_dbg.c_hidma_ll_chstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hidma_lldev = type { i64, %struct.hidma_tre*, i32 }
%struct.hidma_tre = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"invalid TRE number in chstats:%d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"------Channel %d -----\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"allocated=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"queued = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"err_info = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"err_code = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"status = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"idx = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"dma_sig = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"dev_name=%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"callback=%p\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"data=%p\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"tre_index = 0x%x\0A\00", align 1
@HIDMA_TRE_SRC_LOW_IDX = common dso_local global i64 0, align 8
@HIDMA_TRE_SRC_HI_IDX = common dso_local global i64 0, align 8
@HIDMA_TRE_DEST_LOW_IDX = common dso_local global i64 0, align 8
@HIDMA_TRE_DEST_HI_IDX = common dso_local global i64 0, align 8
@HIDMA_TRE_LEN_IDX = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"src=%pap\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"dest=%pap\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"length = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*, i64)* @hidma_ll_chstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidma_ll_chstats(%struct.seq_file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hidma_lldev*, align 8
  %8 = alloca %struct.hidma_tre*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.hidma_lldev*
  store %struct.hidma_lldev* %14, %struct.hidma_lldev** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.hidma_lldev*, %struct.hidma_lldev** %7, align 8
  %17 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.hidma_lldev*, %struct.hidma_lldev** %7, align 8
  %22 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %131

26:                                               ; preds = %3
  %27 = load %struct.hidma_lldev*, %struct.hidma_lldev** %7, align 8
  %28 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %27, i32 0, i32 1
  %29 = load %struct.hidma_tre*, %struct.hidma_tre** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %29, i64 %30
  store %struct.hidma_tre* %31, %struct.hidma_tre** %8, align 8
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %37 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %36, i32 0, i32 11
  %38 = call i64 @atomic_read(i32* %37)
  %39 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %42 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %47 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %52 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %57 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %62 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %66 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %67 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64 %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %72 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 %73)
  %75 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %76 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %77 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64 %78)
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %82 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 %83)
  %85 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %86 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %87 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i64 %88)
  %90 = load %struct.hidma_tre*, %struct.hidma_tre** %8, align 8
  %91 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %90, i32 0, i32 10
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  store i64* %93, i64** %12, align 8
  %94 = load i64*, i64** %12, align 8
  %95 = load i64, i64* @HIDMA_TRE_SRC_LOW_IDX, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %10, align 8
  %98 = load i64*, i64** %12, align 8
  %99 = load i64, i64* @HIDMA_TRE_SRC_HI_IDX, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = shl i32 %102, 32
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %104, %105
  store i64 %106, i64* %10, align 8
  %107 = load i64*, i64** %12, align 8
  %108 = load i64, i64* @HIDMA_TRE_DEST_LOW_IDX, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %11, align 8
  %111 = load i64*, i64** %12, align 8
  %112 = load i64, i64* @HIDMA_TRE_DEST_HI_IDX, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = shl i32 %115, 32
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %11, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %11, align 8
  %120 = load i64*, i64** %12, align 8
  %121 = load i64, i64* @HIDMA_TRE_LEN_IDX, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %9, align 8
  %124 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %125 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64* %10)
  %126 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %127 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64* %11)
  %128 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %129 = load i64, i64* %9, align 8
  %130 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i64 %129)
  br label %131

131:                                              ; preds = %26, %20
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
