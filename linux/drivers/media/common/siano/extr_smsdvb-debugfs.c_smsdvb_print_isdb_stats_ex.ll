; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_print_isdb_stats_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_print_isdb_stats_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_debugfs = type { i32, i8*, i32, i32 }
%struct.sms_isdbt_stats_ex = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"statistics_type = %d\09\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"full_size = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"is_rf_locked = %d\09\09\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"is_demod_locked = %d\09\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"is_external_lna_on = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"SNR = %d dB\09\09\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"RSSI = %d dBm\09\09\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"in_band_pwr = %d dBm\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"carrier_offset = %d\09\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"bandwidth = %d\09\09\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"frequency = %d Hz\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"transmission_mode = %d\09\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"modem_state = %d\09\09\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"guard_interval = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"system_type = %d\09\09\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"partial_reception = %d\09\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"num_of_layers = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"segment_number = %d\09\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"tune_bw = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"\0ALayer %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"\09code_rate = %d\09\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"constellation = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"\09ber = %-5d\09\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"\09ber_error_count = %-5d\09\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"ber_bit_count = %-5d\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"\09pre_ber = %-5d\09\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"\09ts_per = %-5d\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"\09error_ts_packets = %-5d\09\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"total_ts_packets = %-5d\09\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"ti_ldepth_i = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"\09number_of_segments = %d\09\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"tmcc_errors = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsdvb_debugfs*, %struct.sms_isdbt_stats_ex*)* @smsdvb_print_isdb_stats_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsdvb_print_isdb_stats_ex(%struct.smsdvb_debugfs* %0, %struct.sms_isdbt_stats_ex* %1) #0 {
  %3 = alloca %struct.smsdvb_debugfs*, align 8
  %4 = alloca %struct.sms_isdbt_stats_ex*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.smsdvb_debugfs* %0, %struct.smsdvb_debugfs** %3, align 8
  store %struct.sms_isdbt_stats_ex* %1, %struct.sms_isdbt_stats_ex** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %9 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %8, i32 0, i32 3
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %12 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %17 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %16, i32 0, i32 3
  %18 = call i32 @spin_unlock(i32* %17)
  br label %631

19:                                               ; preds = %2
  %20 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %21 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %27, %29
  %31 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %32 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @snprintf(i8* %26, i64 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %43, %45
  %47 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %48 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @snprintf(i8* %42, i64 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i64, i64* @PAGE_SIZE, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %59, %61
  %63 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %64 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @snprintf(i8* %58, i64 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i64, i64* @PAGE_SIZE, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %75, %77
  %79 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %80 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @snprintf(i8* %74, i64 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %6, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i64, i64* @PAGE_SIZE, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %91, %93
  %95 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %96 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @snprintf(i8* %90, i64 %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %6, align 4
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i64, i64* @PAGE_SIZE, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %107, %109
  %111 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %112 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @snprintf(i8* %106, i64 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %6, align 4
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i64, i64* @PAGE_SIZE, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = sub nsw i64 %123, %125
  %127 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %128 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @snprintf(i8* %122, i64 %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %6, align 4
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i64, i64* @PAGE_SIZE, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = sub nsw i64 %139, %141
  %143 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %144 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @snprintf(i8* %138, i64 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %6, align 4
  %151 = load i8*, i8** %7, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i64, i64* @PAGE_SIZE, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = sub nsw i64 %155, %157
  %159 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %160 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @snprintf(i8* %154, i64 %158, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %6, align 4
  %167 = load i8*, i8** %7, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i64, i64* @PAGE_SIZE, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = sub nsw i64 %171, %173
  %175 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %176 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @snprintf(i8* %170, i64 %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %6, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i64, i64* @PAGE_SIZE, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = sub nsw i64 %187, %189
  %191 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %192 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @snprintf(i8* %186, i64 %190, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %6, align 4
  %199 = load i8*, i8** %7, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i64, i64* @PAGE_SIZE, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = sub nsw i64 %203, %205
  %207 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %208 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %207, i32 0, i32 11
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @snprintf(i8* %202, i64 %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %6, align 4
  %215 = load i8*, i8** %7, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i64, i64* @PAGE_SIZE, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = sub nsw i64 %219, %221
  %223 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %224 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %223, i32 0, i32 12
  %225 = load i32, i32* %224, align 8
  %226 = call i64 @snprintf(i8* %218, i64 %222, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %6, align 4
  %231 = load i8*, i8** %7, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = load i64, i64* @PAGE_SIZE, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = sub nsw i64 %235, %237
  %239 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %240 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %239, i32 0, i32 13
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @snprintf(i8* %234, i64 %238, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %244, %242
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %6, align 4
  %247 = load i8*, i8** %7, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  %251 = load i64, i64* @PAGE_SIZE, align 8
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = sub nsw i64 %251, %253
  %255 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %256 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %255, i32 0, i32 14
  %257 = load i32, i32* %256, align 8
  %258 = call i64 @snprintf(i8* %250, i64 %254, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %260, %258
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %6, align 4
  %263 = load i8*, i8** %7, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  %267 = load i64, i64* @PAGE_SIZE, align 8
  %268 = load i32, i32* %6, align 4
  %269 = sext i32 %268 to i64
  %270 = sub nsw i64 %267, %269
  %271 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %272 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %271, i32 0, i32 15
  %273 = load i32, i32* %272, align 4
  %274 = call i64 @snprintf(i8* %266, i64 %270, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %273)
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %276, %274
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %6, align 4
  %279 = load i8*, i8** %7, align 8
  %280 = load i32, i32* %6, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  %283 = load i64, i64* @PAGE_SIZE, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = sub nsw i64 %283, %285
  %287 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %288 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %287, i32 0, i32 16
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @snprintf(i8* %282, i64 %286, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %289)
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %292, %290
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %6, align 4
  %295 = load i8*, i8** %7, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  %299 = load i64, i64* @PAGE_SIZE, align 8
  %300 = load i32, i32* %6, align 4
  %301 = sext i32 %300 to i64
  %302 = sub nsw i64 %299, %301
  %303 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %304 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %303, i32 0, i32 17
  %305 = load i32, i32* %304, align 4
  %306 = call i64 @snprintf(i8* %298, i64 %302, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %308, %306
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %6, align 4
  %311 = load i8*, i8** %7, align 8
  %312 = load i32, i32* %6, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %311, i64 %313
  %315 = load i64, i64* @PAGE_SIZE, align 8
  %316 = load i32, i32* %6, align 4
  %317 = sext i32 %316 to i64
  %318 = sub nsw i64 %315, %317
  %319 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %320 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %319, i32 0, i32 18
  %321 = load i32, i32* %320, align 8
  %322 = call i64 @snprintf(i8* %314, i64 %318, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %321)
  %323 = load i32, i32* %6, align 4
  %324 = sext i32 %323 to i64
  %325 = add nsw i64 %324, %322
  %326 = trunc i64 %325 to i32
  store i32 %326, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %327

327:                                              ; preds = %618, %19
  %328 = load i32, i32* %5, align 4
  %329 = icmp slt i32 %328, 3
  br i1 %329, label %330, label %621

330:                                              ; preds = %327
  %331 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %332 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %331, i32 0, i32 19
  %333 = load %struct.TYPE_2__*, %struct.TYPE_2__** %332, align 8
  %334 = load i32, i32* %5, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp slt i32 %338, 1
  br i1 %339, label %350, label %340

340:                                              ; preds = %330
  %341 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %342 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %341, i32 0, i32 19
  %343 = load %struct.TYPE_2__*, %struct.TYPE_2__** %342, align 8
  %344 = load i32, i32* %5, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = icmp sgt i32 %348, 13
  br i1 %349, label %350, label %351

350:                                              ; preds = %340, %330
  br label %618

351:                                              ; preds = %340
  %352 = load i8*, i8** %7, align 8
  %353 = load i32, i32* %6, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %352, i64 %354
  %356 = load i64, i64* @PAGE_SIZE, align 8
  %357 = load i32, i32* %6, align 4
  %358 = sext i32 %357 to i64
  %359 = sub nsw i64 %356, %358
  %360 = load i32, i32* %5, align 4
  %361 = call i64 @snprintf(i8* %355, i64 %359, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %360)
  %362 = load i32, i32* %6, align 4
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %363, %361
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %6, align 4
  %366 = load i8*, i8** %7, align 8
  %367 = load i32, i32* %6, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, i8* %366, i64 %368
  %370 = load i64, i64* @PAGE_SIZE, align 8
  %371 = load i32, i32* %6, align 4
  %372 = sext i32 %371 to i64
  %373 = sub nsw i64 %370, %372
  %374 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %375 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %374, i32 0, i32 19
  %376 = load %struct.TYPE_2__*, %struct.TYPE_2__** %375, align 8
  %377 = load i32, i32* %5, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = call i64 @snprintf(i8* %369, i64 %373, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 %381)
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %384, %382
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %6, align 4
  %387 = load i8*, i8** %7, align 8
  %388 = load i32, i32* %6, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %387, i64 %389
  %391 = load i64, i64* @PAGE_SIZE, align 8
  %392 = load i32, i32* %6, align 4
  %393 = sext i32 %392 to i64
  %394 = sub nsw i64 %391, %393
  %395 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %396 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %395, i32 0, i32 19
  %397 = load %struct.TYPE_2__*, %struct.TYPE_2__** %396, align 8
  %398 = load i32, i32* %5, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = call i64 @snprintf(i8* %390, i64 %394, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %402)
  %404 = load i32, i32* %6, align 4
  %405 = sext i32 %404 to i64
  %406 = add nsw i64 %405, %403
  %407 = trunc i64 %406 to i32
  store i32 %407, i32* %6, align 4
  %408 = load i8*, i8** %7, align 8
  %409 = load i32, i32* %6, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8, i8* %408, i64 %410
  %412 = load i64, i64* @PAGE_SIZE, align 8
  %413 = load i32, i32* %6, align 4
  %414 = sext i32 %413 to i64
  %415 = sub nsw i64 %412, %414
  %416 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %417 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %416, i32 0, i32 19
  %418 = load %struct.TYPE_2__*, %struct.TYPE_2__** %417, align 8
  %419 = load i32, i32* %5, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = call i64 @snprintf(i8* %411, i64 %415, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32 %423)
  %425 = load i32, i32* %6, align 4
  %426 = sext i32 %425 to i64
  %427 = add nsw i64 %426, %424
  %428 = trunc i64 %427 to i32
  store i32 %428, i32* %6, align 4
  %429 = load i8*, i8** %7, align 8
  %430 = load i32, i32* %6, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, i8* %429, i64 %431
  %433 = load i64, i64* @PAGE_SIZE, align 8
  %434 = load i32, i32* %6, align 4
  %435 = sext i32 %434 to i64
  %436 = sub nsw i64 %433, %435
  %437 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %438 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %437, i32 0, i32 19
  %439 = load %struct.TYPE_2__*, %struct.TYPE_2__** %438, align 8
  %440 = load i32, i32* %5, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 4
  %445 = call i64 @snprintf(i8* %432, i64 %436, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %444)
  %446 = load i32, i32* %6, align 4
  %447 = sext i32 %446 to i64
  %448 = add nsw i64 %447, %445
  %449 = trunc i64 %448 to i32
  store i32 %449, i32* %6, align 4
  %450 = load i8*, i8** %7, align 8
  %451 = load i32, i32* %6, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i8, i8* %450, i64 %452
  %454 = load i64, i64* @PAGE_SIZE, align 8
  %455 = load i32, i32* %6, align 4
  %456 = sext i32 %455 to i64
  %457 = sub nsw i64 %454, %456
  %458 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %459 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %458, i32 0, i32 19
  %460 = load %struct.TYPE_2__*, %struct.TYPE_2__** %459, align 8
  %461 = load i32, i32* %5, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %460, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %463, i32 0, i32 5
  %465 = load i32, i32* %464, align 4
  %466 = call i64 @snprintf(i8* %453, i64 %457, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i32 %465)
  %467 = load i32, i32* %6, align 4
  %468 = sext i32 %467 to i64
  %469 = add nsw i64 %468, %466
  %470 = trunc i64 %469 to i32
  store i32 %470, i32* %6, align 4
  %471 = load i8*, i8** %7, align 8
  %472 = load i32, i32* %6, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i8, i8* %471, i64 %473
  %475 = load i64, i64* @PAGE_SIZE, align 8
  %476 = load i32, i32* %6, align 4
  %477 = sext i32 %476 to i64
  %478 = sub nsw i64 %475, %477
  %479 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %480 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %479, i32 0, i32 19
  %481 = load %struct.TYPE_2__*, %struct.TYPE_2__** %480, align 8
  %482 = load i32, i32* %5, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %481, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %484, i32 0, i32 6
  %486 = load i32, i32* %485, align 4
  %487 = call i64 @snprintf(i8* %474, i64 %478, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 %486)
  %488 = load i32, i32* %6, align 4
  %489 = sext i32 %488 to i64
  %490 = add nsw i64 %489, %487
  %491 = trunc i64 %490 to i32
  store i32 %491, i32* %6, align 4
  %492 = load i8*, i8** %7, align 8
  %493 = load i32, i32* %6, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i8, i8* %492, i64 %494
  %496 = load i64, i64* @PAGE_SIZE, align 8
  %497 = load i32, i32* %6, align 4
  %498 = sext i32 %497 to i64
  %499 = sub nsw i64 %496, %498
  %500 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %501 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %500, i32 0, i32 19
  %502 = load %struct.TYPE_2__*, %struct.TYPE_2__** %501, align 8
  %503 = load i32, i32* %5, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %505, i32 0, i32 7
  %507 = load i32, i32* %506, align 4
  %508 = call i64 @snprintf(i8* %495, i64 %499, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 %507)
  %509 = load i32, i32* %6, align 4
  %510 = sext i32 %509 to i64
  %511 = add nsw i64 %510, %508
  %512 = trunc i64 %511 to i32
  store i32 %512, i32* %6, align 4
  %513 = load i8*, i8** %7, align 8
  %514 = load i32, i32* %6, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i8, i8* %513, i64 %515
  %517 = load i64, i64* @PAGE_SIZE, align 8
  %518 = load i32, i32* %6, align 4
  %519 = sext i32 %518 to i64
  %520 = sub nsw i64 %517, %519
  %521 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %522 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %521, i32 0, i32 19
  %523 = load %struct.TYPE_2__*, %struct.TYPE_2__** %522, align 8
  %524 = load i32, i32* %5, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %526, i32 0, i32 8
  %528 = load i32, i32* %527, align 4
  %529 = call i64 @snprintf(i8* %516, i64 %520, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i32 %528)
  %530 = load i32, i32* %6, align 4
  %531 = sext i32 %530 to i64
  %532 = add nsw i64 %531, %529
  %533 = trunc i64 %532 to i32
  store i32 %533, i32* %6, align 4
  %534 = load i8*, i8** %7, align 8
  %535 = load i32, i32* %6, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i8, i8* %534, i64 %536
  %538 = load i64, i64* @PAGE_SIZE, align 8
  %539 = load i32, i32* %6, align 4
  %540 = sext i32 %539 to i64
  %541 = sub nsw i64 %538, %540
  %542 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %543 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %542, i32 0, i32 19
  %544 = load %struct.TYPE_2__*, %struct.TYPE_2__** %543, align 8
  %545 = load i32, i32* %5, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %544, i64 %546
  %548 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %547, i32 0, i32 9
  %549 = load i32, i32* %548, align 4
  %550 = call i64 @snprintf(i8* %537, i64 %541, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 %549)
  %551 = load i32, i32* %6, align 4
  %552 = sext i32 %551 to i64
  %553 = add nsw i64 %552, %550
  %554 = trunc i64 %553 to i32
  store i32 %554, i32* %6, align 4
  %555 = load i8*, i8** %7, align 8
  %556 = load i32, i32* %6, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i8, i8* %555, i64 %557
  %559 = load i64, i64* @PAGE_SIZE, align 8
  %560 = load i32, i32* %6, align 4
  %561 = sext i32 %560 to i64
  %562 = sub nsw i64 %559, %561
  %563 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %564 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %563, i32 0, i32 19
  %565 = load %struct.TYPE_2__*, %struct.TYPE_2__** %564, align 8
  %566 = load i32, i32* %5, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %565, i64 %567
  %569 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %568, i32 0, i32 10
  %570 = load i32, i32* %569, align 4
  %571 = call i64 @snprintf(i8* %558, i64 %562, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %570)
  %572 = load i32, i32* %6, align 4
  %573 = sext i32 %572 to i64
  %574 = add nsw i64 %573, %571
  %575 = trunc i64 %574 to i32
  store i32 %575, i32* %6, align 4
  %576 = load i8*, i8** %7, align 8
  %577 = load i32, i32* %6, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i8, i8* %576, i64 %578
  %580 = load i64, i64* @PAGE_SIZE, align 8
  %581 = load i32, i32* %6, align 4
  %582 = sext i32 %581 to i64
  %583 = sub nsw i64 %580, %582
  %584 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %585 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %584, i32 0, i32 19
  %586 = load %struct.TYPE_2__*, %struct.TYPE_2__** %585, align 8
  %587 = load i32, i32* %5, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %586, i64 %588
  %590 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 4
  %592 = call i64 @snprintf(i8* %579, i64 %583, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i32 %591)
  %593 = load i32, i32* %6, align 4
  %594 = sext i32 %593 to i64
  %595 = add nsw i64 %594, %592
  %596 = trunc i64 %595 to i32
  store i32 %596, i32* %6, align 4
  %597 = load i8*, i8** %7, align 8
  %598 = load i32, i32* %6, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i8, i8* %597, i64 %599
  %601 = load i64, i64* @PAGE_SIZE, align 8
  %602 = load i32, i32* %6, align 4
  %603 = sext i32 %602 to i64
  %604 = sub nsw i64 %601, %603
  %605 = load %struct.sms_isdbt_stats_ex*, %struct.sms_isdbt_stats_ex** %4, align 8
  %606 = getelementptr inbounds %struct.sms_isdbt_stats_ex, %struct.sms_isdbt_stats_ex* %605, i32 0, i32 19
  %607 = load %struct.TYPE_2__*, %struct.TYPE_2__** %606, align 8
  %608 = load i32, i32* %5, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %607, i64 %609
  %611 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %610, i32 0, i32 11
  %612 = load i32, i32* %611, align 4
  %613 = call i64 @snprintf(i8* %600, i64 %604, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0), i32 %612)
  %614 = load i32, i32* %6, align 4
  %615 = sext i32 %614 to i64
  %616 = add nsw i64 %615, %613
  %617 = trunc i64 %616 to i32
  store i32 %617, i32* %6, align 4
  br label %618

618:                                              ; preds = %351, %350
  %619 = load i32, i32* %5, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %5, align 4
  br label %327

621:                                              ; preds = %327
  %622 = load i32, i32* %6, align 4
  %623 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %624 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %623, i32 0, i32 0
  store i32 %622, i32* %624, align 8
  %625 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %626 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %625, i32 0, i32 3
  %627 = call i32 @spin_unlock(i32* %626)
  %628 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %629 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %628, i32 0, i32 2
  %630 = call i32 @wake_up(i32* %629)
  br label %631

631:                                              ; preds = %621, %15
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
