; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_process_nonfatal_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_process_nonfatal_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i5400_error_info = type { i32, i32 }

@EDAC_MC_LABEL_LEN = common dso_local global i32 0, align 4
@FERR_NF_MASK = common dso_local global i32 0, align 4
@ERROR_NF_UNCORRECTABLE = common dso_local global i64 0, align 8
@ERROR_NF_RECOVERABLE = common dso_local global i64 0, align 8
@ERROR_NF_CORRECTABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"\09Corrected bits= 0x%lx\0A\00", align 1
@error_name = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"\09\09DIMM= %d Channel= %d  (Branch %d DRAM Bank= %d rdwr= %s ras= %d cas= %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"Corrected error (Branch=%d DRAM-Bank=%d RDWR=%s RAS=%d CAS=%d, CE Err=0x%lx (%s))\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@KERN_EMERG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Non-Fatal misc error (Branch=%d Err=%#lx (%s))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i5400_error_info*)* @i5400_process_nonfatal_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5400_process_nonfatal_error_info(%struct.mem_ctl_info* %0, %struct.i5400_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i5400_error_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.i5400_error_info* %1, %struct.i5400_error_info** %4, align 8
  %17 = load i32, i32* @EDAC_MC_LABEL_LEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = add nsw i32 %18, 90
  %20 = add nsw i32 %19, 80
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %24 = load %struct.i5400_error_info*, %struct.i5400_error_info** %4, align 8
  %25 = getelementptr inbounds %struct.i5400_error_info, %struct.i5400_error_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FERR_NF_MASK, align 4
  %28 = and i32 %26, %27
  %29 = call i64 @from_nf_ferr(i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 1, i32* %16, align 4
  br label %137

33:                                               ; preds = %2
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @ERROR_NF_UNCORRECTABLE, align 8
  %36 = load i64, i64* @ERROR_NF_RECOVERABLE, align 8
  %37 = or i64 %35, %36
  %38 = and i64 %34, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %42 = load %struct.i5400_error_info*, %struct.i5400_error_info** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @i5400_proccess_non_recoverable_info(%struct.mem_ctl_info* %41, %struct.i5400_error_info* %42, i64 %43)
  store i32 1, i32* %16, align 4
  br label %137

45:                                               ; preds = %33
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @ERROR_NF_CORRECTABLE, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %118

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.i5400_error_info*, %struct.i5400_error_info** %4, align 8
  %55 = getelementptr inbounds %struct.i5400_error_info, %struct.i5400_error_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @extract_fbdchan_indx(i32 %56)
  store i32 %57, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %58 = load %struct.i5400_error_info*, %struct.i5400_error_info** %4, align 8
  %59 = getelementptr inbounds %struct.i5400_error_info, %struct.i5400_error_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @REC_ECC_LOCATOR_ODD(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load %struct.i5400_error_info*, %struct.i5400_error_info** %4, align 8
  %69 = call i32 @rec_bank(%struct.i5400_error_info* %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.i5400_error_info*, %struct.i5400_error_info** %4, align 8
  %71 = call i32 @rec_rank(%struct.i5400_error_info* %70)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.i5400_error_info*, %struct.i5400_error_info** %4, align 8
  %73 = call i32 @rec_rdwr(%struct.i5400_error_info* %72)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.i5400_error_info*, %struct.i5400_error_info** %4, align 8
  %75 = call i32 @rec_ras(%struct.i5400_error_info* %74)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.i5400_error_info*, %struct.i5400_error_info** %4, align 8
  %77 = call i32 @rec_cas(%struct.i5400_error_info* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32*, i32** @error_name, align 8
  %79 = call i32 @ARRAY_SIZE(i32* %78)
  %80 = call i32 @find_first_bit(i64* %7, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %83, 1
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i8* @rdwr_str(i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i32 %84, i32 %85, i8* %87, i32 %88, i32 %89)
  %91 = trunc i64 %21 to i32
  %92 = load i32, i32* %8, align 4
  %93 = ashr i32 %92, 1
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i8* @rdwr_str(i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i64, i64* %7, align 8
  %100 = load i32*, i32** @error_name, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @snprintf(i8* %23, i32 %91, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i8* %96, i32 %97, i32 %98, i64 %99, i32 %104)
  %106 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %107 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %108 = load i32, i32* %8, align 4
  %109 = ashr i32 %108, 1
  %110 = load i32, i32* %9, align 4
  %111 = srem i32 %110, 2
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  %117 = call i32 @edac_mc_handle_error(i32 %106, %struct.mem_ctl_info* %107, i32 1, i32 0, i32 0, i32 0, i32 %109, i32 %111, i32 %112, i8* %116, i8* %23)
  store i32 1, i32* %16, align 4
  br label %137

118:                                              ; preds = %45
  %119 = load i32*, i32** @error_name, align 8
  %120 = call i32 @ARRAY_SIZE(i32* %119)
  %121 = call i32 @find_first_bit(i64* %7, i32 %120)
  store i32 %121, i32* %15, align 4
  %122 = load %struct.i5400_error_info*, %struct.i5400_error_info** %4, align 8
  %123 = getelementptr inbounds %struct.i5400_error_info, %struct.i5400_error_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @extract_fbdchan_indx(i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %127 = load i32, i32* @KERN_EMERG, align 4
  %128 = load i32, i32* %8, align 4
  %129 = ashr i32 %128, 1
  %130 = load i64, i64* %7, align 8
  %131 = load i32*, i32** @error_name, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @i5400_mc_printk(%struct.mem_ctl_info* %126, i32 %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %129, i64 %130, i32 %135)
  store i32 0, i32* %16, align 4
  br label %137

137:                                              ; preds = %118, %64, %40, %32
  %138 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %16, align 4
  switch i32 %139, label %141 [
    i32 0, label %140
    i32 1, label %140
  ]

140:                                              ; preds = %137, %137
  ret void

141:                                              ; preds = %137
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @from_nf_ferr(i32) #2

declare dso_local i32 @i5400_proccess_non_recoverable_info(%struct.mem_ctl_info*, %struct.i5400_error_info*, i64) #2

declare dso_local i32 @edac_dbg(i32, i8*, i32, ...) #2

declare dso_local i32 @extract_fbdchan_indx(i32) #2

declare dso_local i64 @REC_ECC_LOCATOR_ODD(i32) #2

declare dso_local i32 @rec_bank(%struct.i5400_error_info*) #2

declare dso_local i32 @rec_rank(%struct.i5400_error_info*) #2

declare dso_local i32 @rec_rdwr(%struct.i5400_error_info*) #2

declare dso_local i32 @rec_ras(%struct.i5400_error_info*) #2

declare dso_local i32 @rec_cas(%struct.i5400_error_info*) #2

declare dso_local i32 @find_first_bit(i64*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i8* @rdwr_str(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*, i32, i32, i64, i32) #2

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #2

declare dso_local i32 @i5400_mc_printk(%struct.mem_ctl_info*, i32, i8*, i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
