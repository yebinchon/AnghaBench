; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_wait_for_csb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-powernv.c_wait_for_csb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx842_workmem = type { i32 }
%struct.coprocessor_status_block = type { i32, i32, i32, i32, i64 }

@CSB_WAIT_MAX = common dso_local global i32 0, align 4
@CSB_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"CSB still not valid after %ld us, giving up\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CSB_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid CSB format\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@CSB_CH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid CSB chaining state\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid CSB completion sequence\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Operand Overlap error\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Invalid operand\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"Function aborted\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"CRC mismatch\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Compressed data template invalid\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Compressed data template shows data past end\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"DDE byte count exceeds the limit\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Invalid alignment\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Invalid data length\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Translation error\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Protection error\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Insufficient Privilege error\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Too many DDEs in DDL\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Invalid CRB\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Invalid DDE\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Segmented DDL error\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"DDE overflow error\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Session violation error\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Chained CRB error\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"CRB sequence number error\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Unknown subfunction code\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Read error outside coprocessor\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Write error outside coprocessor\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Internal error in coprocessor\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Storage provision error\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Correctable hardware error\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Job did not finish within allowed time\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Invalid CC %d\00", align 1
@CSB_CE_TERMINATION = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [27 x i8] c"CSB request was terminated\00", align 1
@CSB_CE_INCOMPLETE = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [25 x i8] c"CSB request not complete\00", align 1
@CSB_CE_TPBC = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [41 x i8] c"TPBC not provided, unknown target length\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Processed %u bytes in %lu us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nx842_workmem*, %struct.coprocessor_status_block*)* @wait_for_csb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_csb(%struct.nx842_workmem* %0, %struct.coprocessor_status_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nx842_workmem*, align 8
  %5 = alloca %struct.coprocessor_status_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nx842_workmem* %0, %struct.nx842_workmem** %4, align 8
  store %struct.coprocessor_status_block* %1, %struct.coprocessor_status_block** %5, align 8
  %9 = load %struct.nx842_workmem*, %struct.nx842_workmem** %4, align 8
  %10 = getelementptr inbounds %struct.nx842_workmem, %struct.nx842_workmem* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = call i32 (...) @ktime_get()
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @CSB_WAIT_MAX, align 4
  %15 = call i32 @ktime_add_ms(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %33, %2
  %17 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %18 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @READ_ONCE(i32 %19)
  %21 = load i32, i32* @CSB_V, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = call i32 (...) @cpu_relax()
  %27 = call i32 (...) @ktime_get()
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @ktime_after(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %34

33:                                               ; preds = %25
  br label %16

34:                                               ; preds = %32, %16
  %35 = call i32 (...) @barrier()
  %36 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %37 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CSB_V, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @ktime_us_delta(i32 %44, i32 %45)
  %47 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %281

50:                                               ; preds = %34
  %51 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %52 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CSB_F, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %59 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EPROTO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %281

62:                                               ; preds = %50
  %63 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %64 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CSB_CH, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %71 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EPROTO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %281

74:                                               ; preds = %62
  %75 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %76 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %81 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EPROTO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %281

84:                                               ; preds = %74
  %85 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %86 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %228 [
    i32 143, label %88
    i32 140, label %89
    i32 160, label %90
    i32 162, label %95
    i32 161, label %100
    i32 175, label %103
    i32 173, label %108
    i32 142, label %113
    i32 141, label %118
    i32 170, label %123
    i32 165, label %128
    i32 172, label %133
    i32 128, label %138
    i32 139, label %138
    i32 138, label %138
    i32 137, label %138
    i32 136, label %138
    i32 135, label %138
    i32 134, label %138
    i32 133, label %138
    i32 129, label %143
    i32 158, label %143
    i32 157, label %143
    i32 156, label %143
    i32 155, label %143
    i32 154, label %143
    i32 153, label %143
    i32 152, label %143
    i32 159, label %148
    i32 169, label %153
    i32 132, label %158
    i32 164, label %158
    i32 163, label %163
    i32 146, label %168
    i32 171, label %173
    i32 144, label %178
    i32 174, label %183
    i32 145, label %188
    i32 131, label %193
    i32 150, label %198
    i32 149, label %198
    i32 148, label %198
    i32 147, label %198
    i32 130, label %203
    i32 166, label %208
    i32 151, label %213
    i32 168, label %218
    i32 167, label %223
  ]

88:                                               ; preds = %84
  br label %236

89:                                               ; preds = %84
  br label %236

90:                                               ; preds = %84
  %91 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %92 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %281

95:                                               ; preds = %84
  %96 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %97 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %281

100:                                              ; preds = %84
  %101 = load i32, i32* @ENOSPC, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %281

103:                                              ; preds = %84
  %104 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %105 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32, i32* @EINTR, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %281

108:                                              ; preds = %84
  %109 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %110 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %281

113:                                              ; preds = %84
  %114 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %115 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %281

118:                                              ; preds = %84
  %119 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %120 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %119, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %281

123:                                              ; preds = %84
  %124 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %125 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %281

128:                                              ; preds = %84
  %129 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %130 = call i32 @CSB_ERR_ADDR(%struct.coprocessor_status_block* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %281

133:                                              ; preds = %84
  %134 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %135 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %281

138:                                              ; preds = %84, %84, %84, %84, %84, %84, %84, %84
  %139 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %140 = call i32 @CSB_ERR_ADDR(%struct.coprocessor_status_block* %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %141 = load i32, i32* @EPROTO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %281

143:                                              ; preds = %84, %84, %84, %84, %84, %84, %84, %84
  %144 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %145 = call i32 @CSB_ERR_ADDR(%struct.coprocessor_status_block* %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %146 = load i32, i32* @EPROTO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %281

148:                                              ; preds = %84
  %149 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %150 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %151 = load i32, i32* @EPROTO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %281

153:                                              ; preds = %84
  %154 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %155 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %281

158:                                              ; preds = %84, %84
  %159 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %160 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %281

163:                                              ; preds = %84
  %164 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %165 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %281

168:                                              ; preds = %84
  %169 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %170 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %281

173:                                              ; preds = %84
  %174 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %175 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %281

178:                                              ; preds = %84
  %179 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %180 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %181 = load i32, i32* @EPROTO, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %281

183:                                              ; preds = %84
  %184 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %185 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %186 = load i32, i32* @EPROTO, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %281

188:                                              ; preds = %84
  %189 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %190 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  %191 = load i32, i32* @EPROTO, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %3, align 4
  br label %281

193:                                              ; preds = %84
  %194 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %195 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  %196 = load i32, i32* @EPROTO, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %281

198:                                              ; preds = %84, %84, %84, %84
  %199 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %200 = call i32 @CSB_ERR_ADDR(%struct.coprocessor_status_block* %199, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0))
  %201 = load i32, i32* @EPROTO, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %3, align 4
  br label %281

203:                                              ; preds = %84
  %204 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %205 = call i32 @CSB_ERR_ADDR(%struct.coprocessor_status_block* %204, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0))
  %206 = load i32, i32* @EPROTO, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %3, align 4
  br label %281

208:                                              ; preds = %84
  %209 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %210 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %209, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0))
  %211 = load i32, i32* @EPROTO, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %3, align 4
  br label %281

213:                                              ; preds = %84
  %214 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %215 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %214, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0))
  %216 = load i32, i32* @EPROTO, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %3, align 4
  br label %281

218:                                              ; preds = %84
  %219 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %220 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %219, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0))
  %221 = load i32, i32* @EPROTO, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %3, align 4
  br label %281

223:                                              ; preds = %84
  %224 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %225 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %224, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0))
  %226 = load i32, i32* @EPROTO, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %3, align 4
  br label %281

228:                                              ; preds = %84
  %229 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %230 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %231 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %229, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* @EPROTO, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %3, align 4
  br label %281

236:                                              ; preds = %89, %88
  %237 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %238 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @CSB_CE_TERMINATION, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %236
  %244 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %245 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %244, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0))
  %246 = load i32, i32* @EPROTO, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %3, align 4
  br label %281

248:                                              ; preds = %236
  %249 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %250 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @CSB_CE_INCOMPLETE, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %248
  %256 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %257 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0))
  %258 = load i32, i32* @EPROTO, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %3, align 4
  br label %281

260:                                              ; preds = %248
  %261 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %262 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @CSB_CE_TPBC, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %260
  %268 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %269 = call i32 (%struct.coprocessor_status_block*, i8*, ...) @CSB_ERR(%struct.coprocessor_status_block* %268, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0))
  %270 = load i32, i32* @EPROTO, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %3, align 4
  br label %281

272:                                              ; preds = %260
  %273 = load %struct.coprocessor_status_block*, %struct.coprocessor_status_block** %5, align 8
  %274 = getelementptr inbounds %struct.coprocessor_status_block, %struct.coprocessor_status_block* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @be32_to_cpu(i32 %275)
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %6, align 4
  %279 = call i64 @ktime_us_delta(i32 %277, i32 %278)
  %280 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0), i32 %276, i64 %279)
  store i32 0, i32* %3, align 4
  br label %281

281:                                              ; preds = %272, %267, %255, %243, %228, %223, %218, %213, %208, %203, %198, %193, %188, %183, %178, %173, %168, %163, %158, %153, %148, %143, %138, %133, %128, %123, %118, %113, %108, %103, %100, %95, %90, %79, %69, %57, %42
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @ktime_after(i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @CSB_ERR(%struct.coprocessor_status_block*, i8*, ...) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @CSB_ERR_ADDR(%struct.coprocessor_status_block*, i8*) #1

declare dso_local i32 @pr_debug_ratelimited(i8*, i32, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
