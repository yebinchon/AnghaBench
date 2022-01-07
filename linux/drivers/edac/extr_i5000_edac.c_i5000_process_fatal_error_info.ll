; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_process_fatal_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_process_fatal_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i5000_error_info = type { i32, i32, i32 }

@EDAC_MC_LABEL_LEN = common dso_local global i32 0, align 4
@FERR_FAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"\09\09CSROW= %d  Channel= %d (DRAM Bank= %d rdwr= %s ras= %d cas= %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Alert on non-redundant retry or fast reset timeout\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Northbound CRC error on non-redundant retry\00", align 1
@i5000_process_fatal_error_info.done = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c">Tmid Thermal event with intelligent throttling disabled\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Bank=%d RAS=%d CAS=%d FATAL Err=0x%x (%s)\00", align 1
@HW_EVENT_ERR_FATAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i5000_error_info*, i32)* @i5000_process_fatal_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5000_process_fatal_error_info(%struct.mem_ctl_info* %0, %struct.i5000_error_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.i5000_error_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.i5000_error_info* %1, %struct.i5000_error_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @EDAC_MC_LABEL_LEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = add nsw i32 %19, 160
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %24 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %25 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FERR_FAT_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 1, i32* %17, align 4
  br label %97

32:                                               ; preds = %3
  %33 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %34 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @EXTRACT_FBDCHAN_INDX(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %38 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @NREC_BANK(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %42 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @NREC_RANK(i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %46 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @NREC_RDWR(i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %50 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @NREC_RAS(i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %54 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @NREC_CAS(i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i8* %63, i32 %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  switch i32 %67, label %77 [
    i32 130, label %68
    i32 129, label %69
    i32 128, label %70
  ]

68:                                               ; preds = %32
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %77

69:                                               ; preds = %32
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %77

70:                                               ; preds = %32
  %71 = load i32, i32* @i5000_process_fatal_error_info.done, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 1, i32* %17, align 4
  br label %97

74:                                               ; preds = %70
  %75 = load i32, i32* @i5000_process_fatal_error_info.done, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @i5000_process_fatal_error_info.done, align 4
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %77

77:                                               ; preds = %32, %74, %69, %68
  %78 = trunc i64 %21 to i32
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @snprintf(i8* %23, i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i32 %82, i8* %83)
  %85 = load i32, i32* @HW_EVENT_ERR_FATAL, align 4
  %86 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %87 = load i32, i32* %11, align 4
  %88 = ashr i32 %87, 1
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %89, 1
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)
  %96 = call i32 @edac_mc_handle_error(i32 %85, %struct.mem_ctl_info* %86, i32 1, i32 0, i32 0, i32 0, i32 %88, i32 %90, i32 %91, i8* %95, i8* %23)
  store i32 0, i32* %17, align 4
  br label %97

97:                                               ; preds = %77, %73, %31
  %98 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %17, align 4
  switch i32 %99, label %101 [
    i32 0, label %100
    i32 1, label %100
  ]

100:                                              ; preds = %97, %97
  ret void

101:                                              ; preds = %97
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EXTRACT_FBDCHAN_INDX(i32) #2

declare dso_local i32 @NREC_BANK(i32) #2

declare dso_local i32 @NREC_RANK(i32) #2

declare dso_local i32 @NREC_RDWR(i32) #2

declare dso_local i32 @NREC_RAS(i32) #2

declare dso_local i32 @NREC_CAS(i32) #2

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i8*) #2

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
