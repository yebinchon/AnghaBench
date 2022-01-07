; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_proccess_non_recoverable_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_proccess_non_recoverable_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i5400_error_info = type { i32 }

@EDAC_MC_LABEL_LEN = common dso_local global i32 0, align 4
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@ERROR_FAT_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"FATAL\00", align 1
@HW_EVENT_ERR_FATAL = common dso_local global i32 0, align 4
@FERR_NF_UNCORRECTABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"NON-FATAL uncorrected\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"NON-FATAL recoverable\00", align 1
@.str.3 = private unnamed_addr constant [97 x i8] c"\09\09DIMM= %d  Channels= %d,%d  (Branch= %d DRAM Bank= %d Buffer ID = %d rdwr= %s ras= %d cas= %d)\0A\00", align 1
@error_name = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"Bank=%d Buffer ID = %d RAS=%d CAS=%d Err=0x%lx (%s)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i5400_error_info*, i64)* @i5400_proccess_non_recoverable_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5400_proccess_non_recoverable_info(%struct.mem_ctl_info* %0, %struct.i5400_error_info* %1, i64 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.i5400_error_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.i5400_error_info* %1, %struct.i5400_error_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %21 = load i32, i32* @EDAC_MC_LABEL_LEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = add nsw i32 %22, 90
  %24 = add nsw i32 %23, 80
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  store i8* null, i8** %18, align 8
  %28 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  store i32 %28, i32* %19, align 4
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 1, i32* %20, align 4
  br label %103

32:                                               ; preds = %3
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @ERROR_FAT_MASK, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %38 = load i32, i32* @HW_EVENT_ERR_FATAL, align 4
  store i32 %38, i32* %19, align 4
  br label %47

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @FERR_NF_UNCORRECTABLE, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %46

45:                                               ; preds = %39
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %46

46:                                               ; preds = %45, %44
  br label %47

47:                                               ; preds = %46, %37
  %48 = load %struct.i5400_error_info*, %struct.i5400_error_info** %5, align 8
  %49 = getelementptr inbounds %struct.i5400_error_info, %struct.i5400_error_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @extract_fbdchan_indx(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %10, align 4
  %53 = load %struct.i5400_error_info*, %struct.i5400_error_info** %5, align 8
  %54 = call i32 @nrec_bank(%struct.i5400_error_info* %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.i5400_error_info*, %struct.i5400_error_info** %5, align 8
  %56 = call i32 @nrec_rank(%struct.i5400_error_info* %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.i5400_error_info*, %struct.i5400_error_info** %5, align 8
  %58 = call i32 @nrec_buf_id(%struct.i5400_error_info* %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.i5400_error_info*, %struct.i5400_error_info** %5, align 8
  %60 = call i32 @nrec_rdwr(%struct.i5400_error_info* %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.i5400_error_info*, %struct.i5400_error_info** %5, align 8
  %62 = call i32 @nrec_ras(%struct.i5400_error_info* %61)
  store i32 %62, i32* %15, align 4
  %63 = load %struct.i5400_error_info*, %struct.i5400_error_info** %5, align 8
  %64 = call i32 @nrec_cas(%struct.i5400_error_info* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %9, align 4
  %70 = ashr i32 %69, 1
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @rdwr_str(i32 %73)
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66, i32 %68, i32 %70, i32 %71, i32 %72, i32 %74, i32 %75, i32 %76)
  %78 = load i32*, i32** @error_name, align 8
  %79 = call i32 @ARRAY_SIZE(i32* %78)
  %80 = call i32 @find_first_bit(i64* %6, i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = trunc i64 %25 to i32
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i64, i64* %6, align 8
  %87 = load i32*, i32** @error_name, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @snprintf(i8* %27, i32 %81, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83, i32 %84, i32 %85, i64 %86, i32 %91)
  %93 = load i32, i32* %19, align 4
  %94 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = ashr i32 %95, 1
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)
  %102 = call i32 @edac_mc_handle_error(i32 %93, %struct.mem_ctl_info* %94, i32 1, i32 0, i32 0, i32 0, i32 %96, i32 -1, i32 %97, i8* %101, i8* %27)
  store i32 0, i32* %20, align 4
  br label %103

103:                                              ; preds = %47, %31
  %104 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %20, align 4
  switch i32 %105, label %107 [
    i32 0, label %106
    i32 1, label %106
  ]

106:                                              ; preds = %103, %103
  ret void

107:                                              ; preds = %103
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @extract_fbdchan_indx(i32) #2

declare dso_local i32 @nrec_bank(%struct.i5400_error_info*) #2

declare dso_local i32 @nrec_rank(%struct.i5400_error_info*) #2

declare dso_local i32 @nrec_buf_id(%struct.i5400_error_info*) #2

declare dso_local i32 @nrec_rdwr(%struct.i5400_error_info*) #2

declare dso_local i32 @nrec_ras(%struct.i5400_error_info*) #2

declare dso_local i32 @nrec_cas(%struct.i5400_error_info*) #2

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @rdwr_str(i32) #2

declare dso_local i32 @find_first_bit(i64*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i64, i32) #2

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
