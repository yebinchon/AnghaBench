; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_process_nonfatal_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_process_nonfatal_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i5000_error_info = type { i32, i32, i32, i32, i32, i32 }

@EDAC_MC_LABEL_LEN = common dso_local global i32 0, align 4
@FERR_NF_MASK = common dso_local global i32 0, align 4
@FERR_NF_UNCORRECTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\09Uncorrected bits= 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"\09\09CSROW= %d  Channels= %d,%d  (Branch= %d DRAM Bank= %d rdwr= %s ras= %d cas= %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Non-Aliased Uncorrectable Patrol Data ECC\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Non-Aliased Uncorrectable Spare-Copy Data ECC\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Non-Aliased Uncorrectable Mirrored Demand Data ECC\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Non-Aliased Uncorrectable Non-Mirrored Demand Data ECC\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Aliased Uncorrectable Patrol Data ECC\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Aliased Uncorrectable Spare-Copy Data ECC\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Aliased Uncorrectable Mirrored Demand Data ECC\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Aliased Uncorrectable Non-Mirrored Demand Data ECC\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Uncorrectable Data ECC on Replay\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Rank=%d Bank=%d RAS=%d CAS=%d, UE Err=0x%x (%s)\00", align 1
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@FERR_NF_CORRECTABLE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"\09Corrected bits= 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [77 x i8] c"\09\09CSROW= %d Channel= %d  (Branch %d DRAM Bank= %d rdwr= %s ras= %d cas= %d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Correctable Non-Mirrored Demand Data ECC\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Correctable Mirrored Demand Data ECC\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Correctable Spare-Copy Data ECC\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Correctable Patrol Data ECC\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"Rank=%d Bank=%d RDWR=%s RAS=%d CAS=%d, CE Err=0x%x (%s))\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@misc_messages = common dso_local global i32 0, align 4
@FERR_NF_NON_RETRY = common dso_local global i32 0, align 4
@FERR_NF_NORTH_CRC = common dso_local global i32 0, align 4
@FERR_NF_SPD_PROTOCOL = common dso_local global i32 0, align 4
@FERR_NF_DIMM_SPARE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [78 x i8] c"Non-Retry or Redundant Retry FBD Memory Alert or Redundant Fast Reset Timeout\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"Non-Retry or Redundant Retry FBD Configuration Alert\00", align 1
@.str.25 = private unnamed_addr constant [67 x i8] c"Non-Retry or Redundant Retry FBD Northbound CRC error on read data\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"FBD Northbound CRC error on FBD Sync Status\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"SPD protocol error\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"DIMM-spare copy started\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"DIMM-spare copy completed\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Err=%#x (%s)\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Misc error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i5000_error_info*, i32)* @i5000_process_nonfatal_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5000_process_nonfatal_error_info(%struct.mem_ctl_info* %0, %struct.i5000_error_info* %1, i32 %2) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.i5000_error_info* %1, %struct.i5000_error_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load i32, i32* @EDAC_MC_LABEL_LEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = add nsw i32 %23, 170
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %28 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %29 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FERR_NF_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  store i32 1, i32* %21, align 4
  br label %240

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @FERR_NF_UNCORRECTABLE, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %114

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %46 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @EXTRACT_FBDCHAN_INDX(i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %49, 2
  store i32 %50, i32* %15, align 4
  %51 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %52 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NREC_BANK(i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %56 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @NREC_RANK(i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %60 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @NREC_RDWR(i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %64 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @NREC_RAS(i32 %65)
  store i32 %66, i32* %19, align 4
  %67 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %68 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @NREC_CAS(i32 %69)
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %14, align 4
  %76 = ashr i32 %75, 1
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %20, align 4
  %84 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %74, i32 %76, i32 %77, i8* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  switch i32 %85, label %95 [
    i32 145, label %86
    i32 146, label %87
    i32 147, label %88
    i32 128, label %89
    i32 129, label %90
    i32 130, label %91
    i32 131, label %92
    i32 132, label %93
    i32 133, label %94
  ]

86:                                               ; preds = %42
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %95

87:                                               ; preds = %42
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %95

88:                                               ; preds = %42
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %95

89:                                               ; preds = %42
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %95

90:                                               ; preds = %42
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %95

91:                                               ; preds = %42
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %95

92:                                               ; preds = %42
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %95

93:                                               ; preds = %42
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %95

94:                                               ; preds = %42
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  br label %95

95:                                               ; preds = %42, %94, %93, %92, %91, %90, %89, %88, %87, %86
  %96 = trunc i64 %25 to i32
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %27, i32 %96, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i8* %102)
  %104 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %105 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %106 = load i32, i32* %15, align 4
  %107 = ashr i32 %106, 1
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0)
  %113 = call i32 @edac_mc_handle_error(i32 %104, %struct.mem_ctl_info* %105, i32 1, i32 0, i32 0, i32 0, i32 %107, i32 -1, i32 %108, i8* %112, i8* %27)
  br label %114

114:                                              ; preds = %95, %36
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @FERR_NF_CORRECTABLE, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %200

120:                                              ; preds = %114
  %121 = load i32, i32* %12, align 4
  %122 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %121)
  %123 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %124 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @EXTRACT_FBDCHAN_INDX(i32 %125)
  store i32 %126, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %127 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %128 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @REC_ECC_LOCATOR_ODD(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  store i32 1, i32* %15, align 4
  br label %133

133:                                              ; preds = %132, %120
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %15, align 4
  %137 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %138 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @REC_BANK(i32 %139)
  store i32 %140, i32* %16, align 4
  %141 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %142 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @REC_RANK(i32 %143)
  store i32 %144, i32* %17, align 4
  %145 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %146 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @REC_RDWR(i32 %147)
  store i32 %148, i32* %18, align 4
  %149 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %150 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @REC_RAS(i32 %151)
  store i32 %152, i32* %19, align 4
  %153 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %154 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @REC_CAS(i32 %155)
  store i32 %156, i32* %20, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %14, align 4
  %160 = ashr i32 %159, 1
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %18, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %20, align 4
  %168 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.17, i64 0, i64 0), i32 %157, i32 %158, i32 %160, i32 %161, i8* %165, i32 %166, i32 %167)
  %169 = load i32, i32* %12, align 4
  switch i32 %169, label %174 [
    i32 141, label %170
    i32 140, label %171
    i32 139, label %172
    i32 138, label %173
  ]

170:                                              ; preds = %133
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %174

171:                                              ; preds = %133
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i8** %9, align 8
  br label %174

172:                                              ; preds = %133
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %174

173:                                              ; preds = %133
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8** %9, align 8
  br label %174

174:                                              ; preds = %133, %173, %172, %171, %170
  %175 = trunc i64 %25 to i32
  %176 = load i32, i32* %14, align 4
  %177 = ashr i32 %176, 1
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %27, i32 %175, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0), i32 %177, i32 %178, i8* %182, i32 %183, i32 %184, i32 %185, i8* %186)
  %188 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %189 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %190 = load i32, i32* %15, align 4
  %191 = ashr i32 %190, 1
  %192 = load i32, i32* %15, align 4
  %193 = srem i32 %192, 2
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %18, align 4
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0)
  %199 = call i32 @edac_mc_handle_error(i32 %188, %struct.mem_ctl_info* %189, i32 1, i32 0, i32 0, i32 0, i32 %191, i32 %193, i32 %194, i8* %198, i8* %27)
  br label %200

200:                                              ; preds = %174, %114
  %201 = load i32, i32* @misc_messages, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  store i32 1, i32* %21, align 4
  br label %240

204:                                              ; preds = %200
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @FERR_NF_NON_RETRY, align 4
  %207 = load i32, i32* @FERR_NF_NORTH_CRC, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @FERR_NF_SPD_PROTOCOL, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @FERR_NF_DIMM_SPARE, align 4
  %212 = or i32 %210, %211
  %213 = and i32 %205, %212
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %13, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %239

216:                                              ; preds = %204
  %217 = load i32, i32* %13, align 4
  switch i32 %217, label %225 [
    i32 144, label %218
    i32 143, label %219
    i32 142, label %220
    i32 137, label %221
    i32 136, label %222
    i32 135, label %223
    i32 134, label %224
  ]

218:                                              ; preds = %216
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.23, i64 0, i64 0), i8** %9, align 8
  br label %225

219:                                              ; preds = %216
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i64 0, i64 0), i8** %9, align 8
  br label %225

220:                                              ; preds = %216
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.25, i64 0, i64 0), i8** %9, align 8
  br label %225

221:                                              ; preds = %216
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i64 0, i64 0), i8** %9, align 8
  br label %225

222:                                              ; preds = %216
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8** %9, align 8
  br label %225

223:                                              ; preds = %216
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8** %9, align 8
  br label %225

224:                                              ; preds = %216
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i8** %9, align 8
  br label %225

225:                                              ; preds = %216, %224, %223, %222, %221, %220, %219, %218
  %226 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %227 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @EXTRACT_FBDCHAN_INDX(i32 %228)
  store i32 %229, i32* %14, align 4
  %230 = trunc i64 %25 to i32
  %231 = load i32, i32* %13, align 4
  %232 = load i8*, i8** %9, align 8
  %233 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %27, i32 %230, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 %231, i8* %232)
  %234 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %235 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %236 = load i32, i32* %14, align 4
  %237 = ashr i32 %236, 1
  %238 = call i32 @edac_mc_handle_error(i32 %234, %struct.mem_ctl_info* %235, i32 1, i32 0, i32 0, i32 0, i32 %237, i32 -1, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* %27)
  br label %239

239:                                              ; preds = %225, %204
  store i32 0, i32* %21, align 4
  br label %240

240:                                              ; preds = %239, %203, %35
  %241 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %21, align 4
  switch i32 %242, label %244 [
    i32 0, label %243
    i32 1, label %243
  ]

243:                                              ; preds = %240, %240
  ret void

244:                                              ; preds = %240
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, ...) #2

declare dso_local i32 @EXTRACT_FBDCHAN_INDX(i32) #2

declare dso_local i32 @NREC_BANK(i32) #2

declare dso_local i32 @NREC_RANK(i32) #2

declare dso_local i32 @NREC_RDWR(i32) #2

declare dso_local i32 @NREC_RAS(i32) #2

declare dso_local i32 @NREC_CAS(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #2

declare dso_local i64 @REC_ECC_LOCATOR_ODD(i32) #2

declare dso_local i32 @REC_BANK(i32) #2

declare dso_local i32 @REC_RANK(i32) #2

declare dso_local i32 @REC_RDWR(i32) #2

declare dso_local i32 @REC_RAS(i32) #2

declare dso_local i32 @REC_CAS(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
