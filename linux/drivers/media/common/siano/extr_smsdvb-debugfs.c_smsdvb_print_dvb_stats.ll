; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_print_dvb_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_print_dvb_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_debugfs = type { i32, i8*, i32, i32 }
%struct.sms_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"is_rf_locked = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"is_demod_locked = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"is_external_lna_on = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"SNR = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ber = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"FIB_CRC = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"ts_per = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"MFER = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"RSSI = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"in_band_pwr = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"carrier_offset = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"modem_state = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"frequency = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"bandwidth = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"transmission_mode = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"guard_interval = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"code_rate = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"lp_code_rate = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"hierarchy = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"constellation = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"burst_size = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"burst_duration = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"burst_cycle_time = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"calc_burst_cycle_time = %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"num_of_rows = %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"num_of_padd_cols = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"num_of_punct_cols = %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"error_ts_packets = %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"total_ts_packets = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"num_of_valid_mpe_tlbs = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"num_of_invalid_mpe_tlbs = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"num_of_corrected_mpe_tlbs = %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"ber_error_count = %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"ber_bit_count = %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"sms_to_host_tx_errors = %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"pre_ber = %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"cell_id = %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"dvbh_srv_ind_hp = %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"dvbh_srv_ind_lp = %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"num_mpe_received = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsdvb_debugfs*, %struct.sms_stats*)* @smsdvb_print_dvb_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsdvb_print_dvb_stats(%struct.smsdvb_debugfs* %0, %struct.sms_stats* %1) #0 {
  %3 = alloca %struct.smsdvb_debugfs*, align 8
  %4 = alloca %struct.sms_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.smsdvb_debugfs* %0, %struct.smsdvb_debugfs** %3, align 8
  store %struct.sms_stats* %1, %struct.sms_stats** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %8 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %7, i32 0, i32 3
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %11 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %16 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %15, i32 0, i32 3
  %17 = call i32 @spin_unlock(i32* %16)
  br label %687

18:                                               ; preds = %2
  %19 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %20 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %26, %28
  %30 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %31 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @snprintf(i8* %25, i64 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %42, %44
  %46 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %47 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @snprintf(i8* %41, i64 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %58, %60
  %62 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %63 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @snprintf(i8* %57, i64 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i64, i64* @PAGE_SIZE, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %74, %76
  %78 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %79 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @snprintf(i8* %73, i64 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i64, i64* @PAGE_SIZE, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %90, %92
  %94 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %95 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @snprintf(i8* %89, i64 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %106, %108
  %110 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %111 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @snprintf(i8* %105, i64 %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %5, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i64, i64* @PAGE_SIZE, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %122, %124
  %126 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %127 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @snprintf(i8* %121, i64 %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %5, align 4
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i64, i64* @PAGE_SIZE, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = sub nsw i64 %138, %140
  %142 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %143 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @snprintf(i8* %137, i64 %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %5, align 4
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i64, i64* @PAGE_SIZE, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 %154, %156
  %158 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %159 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @snprintf(i8* %153, i64 %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %5, align 4
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i64, i64* @PAGE_SIZE, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = sub nsw i64 %170, %172
  %174 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %175 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @snprintf(i8* %169, i64 %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %5, align 4
  %182 = load i8*, i8** %6, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i64, i64* @PAGE_SIZE, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = sub nsw i64 %186, %188
  %190 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %191 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %190, i32 0, i32 10
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @snprintf(i8* %185, i64 %189, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %5, align 4
  %198 = load i8*, i8** %6, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i64, i64* @PAGE_SIZE, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = sub nsw i64 %202, %204
  %206 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %207 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %206, i32 0, i32 11
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @snprintf(i8* %201, i64 %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, %209
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %5, align 4
  %214 = load i8*, i8** %6, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i64, i64* @PAGE_SIZE, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = sub nsw i64 %218, %220
  %222 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %223 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %222, i32 0, i32 12
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @snprintf(i8* %217, i64 %221, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %225
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %5, align 4
  %230 = load i8*, i8** %6, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i64, i64* @PAGE_SIZE, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = sub nsw i64 %234, %236
  %238 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %239 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %238, i32 0, i32 13
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @snprintf(i8* %233, i64 %237, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %243, %241
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %5, align 4
  %246 = load i8*, i8** %6, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load i64, i64* @PAGE_SIZE, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = sub nsw i64 %250, %252
  %254 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %255 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %254, i32 0, i32 14
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @snprintf(i8* %249, i64 %253, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %5, align 4
  %262 = load i8*, i8** %6, align 8
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  %266 = load i64, i64* @PAGE_SIZE, align 8
  %267 = load i32, i32* %5, align 4
  %268 = sext i32 %267 to i64
  %269 = sub nsw i64 %266, %268
  %270 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %271 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %270, i32 0, i32 11
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @snprintf(i8* %265, i64 %269, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* %5, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %275, %273
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %5, align 4
  %278 = load i8*, i8** %6, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = load i64, i64* @PAGE_SIZE, align 8
  %283 = load i32, i32* %5, align 4
  %284 = sext i32 %283 to i64
  %285 = sub nsw i64 %282, %284
  %286 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %287 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %286, i32 0, i32 15
  %288 = load i32, i32* %287, align 4
  %289 = call i64 @snprintf(i8* %281, i64 %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %288)
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %291, %289
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %5, align 4
  %294 = load i8*, i8** %6, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  %298 = load i64, i64* @PAGE_SIZE, align 8
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = sub nsw i64 %298, %300
  %302 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %303 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %302, i32 0, i32 16
  %304 = load i32, i32* %303, align 4
  %305 = call i64 @snprintf(i8* %297, i64 %301, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %304)
  %306 = load i32, i32* %5, align 4
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %307, %305
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %5, align 4
  %310 = load i8*, i8** %6, align 8
  %311 = load i32, i32* %5, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  %314 = load i64, i64* @PAGE_SIZE, align 8
  %315 = load i32, i32* %5, align 4
  %316 = sext i32 %315 to i64
  %317 = sub nsw i64 %314, %316
  %318 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %319 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %318, i32 0, i32 17
  %320 = load i32, i32* %319, align 4
  %321 = call i64 @snprintf(i8* %313, i64 %317, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %320)
  %322 = load i32, i32* %5, align 4
  %323 = sext i32 %322 to i64
  %324 = add nsw i64 %323, %321
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %5, align 4
  %326 = load i8*, i8** %6, align 8
  %327 = load i32, i32* %5, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %326, i64 %328
  %330 = load i64, i64* @PAGE_SIZE, align 8
  %331 = load i32, i32* %5, align 4
  %332 = sext i32 %331 to i64
  %333 = sub nsw i64 %330, %332
  %334 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %335 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %334, i32 0, i32 18
  %336 = load i32, i32* %335, align 4
  %337 = call i64 @snprintf(i8* %329, i64 %333, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 %336)
  %338 = load i32, i32* %5, align 4
  %339 = sext i32 %338 to i64
  %340 = add nsw i64 %339, %337
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %5, align 4
  %342 = load i8*, i8** %6, align 8
  %343 = load i32, i32* %5, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = load i64, i64* @PAGE_SIZE, align 8
  %347 = load i32, i32* %5, align 4
  %348 = sext i32 %347 to i64
  %349 = sub nsw i64 %346, %348
  %350 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %351 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %350, i32 0, i32 19
  %352 = load i32, i32* %351, align 4
  %353 = call i64 @snprintf(i8* %345, i64 %349, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %352)
  %354 = load i32, i32* %5, align 4
  %355 = sext i32 %354 to i64
  %356 = add nsw i64 %355, %353
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %5, align 4
  %358 = load i8*, i8** %6, align 8
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, i8* %358, i64 %360
  %362 = load i64, i64* @PAGE_SIZE, align 8
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = sub nsw i64 %362, %364
  %366 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %367 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %366, i32 0, i32 20
  %368 = load i32, i32* %367, align 4
  %369 = call i64 @snprintf(i8* %361, i64 %365, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 %368)
  %370 = load i32, i32* %5, align 4
  %371 = sext i32 %370 to i64
  %372 = add nsw i64 %371, %369
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %5, align 4
  %374 = load i8*, i8** %6, align 8
  %375 = load i32, i32* %5, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %374, i64 %376
  %378 = load i64, i64* @PAGE_SIZE, align 8
  %379 = load i32, i32* %5, align 4
  %380 = sext i32 %379 to i64
  %381 = sub nsw i64 %378, %380
  %382 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %383 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %382, i32 0, i32 21
  %384 = load i32, i32* %383, align 4
  %385 = call i64 @snprintf(i8* %377, i64 %381, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %384)
  %386 = load i32, i32* %5, align 4
  %387 = sext i32 %386 to i64
  %388 = add nsw i64 %387, %385
  %389 = trunc i64 %388 to i32
  store i32 %389, i32* %5, align 4
  %390 = load i8*, i8** %6, align 8
  %391 = load i32, i32* %5, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %390, i64 %392
  %394 = load i64, i64* @PAGE_SIZE, align 8
  %395 = load i32, i32* %5, align 4
  %396 = sext i32 %395 to i64
  %397 = sub nsw i64 %394, %396
  %398 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %399 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %398, i32 0, i32 22
  %400 = load i32, i32* %399, align 4
  %401 = call i64 @snprintf(i8* %393, i64 %397, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %400)
  %402 = load i32, i32* %5, align 4
  %403 = sext i32 %402 to i64
  %404 = add nsw i64 %403, %401
  %405 = trunc i64 %404 to i32
  store i32 %405, i32* %5, align 4
  %406 = load i8*, i8** %6, align 8
  %407 = load i32, i32* %5, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %406, i64 %408
  %410 = load i64, i64* @PAGE_SIZE, align 8
  %411 = load i32, i32* %5, align 4
  %412 = sext i32 %411 to i64
  %413 = sub nsw i64 %410, %412
  %414 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %415 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %414, i32 0, i32 23
  %416 = load i32, i32* %415, align 4
  %417 = call i64 @snprintf(i8* %409, i64 %413, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i32 %416)
  %418 = load i32, i32* %5, align 4
  %419 = sext i32 %418 to i64
  %420 = add nsw i64 %419, %417
  %421 = trunc i64 %420 to i32
  store i32 %421, i32* %5, align 4
  %422 = load i8*, i8** %6, align 8
  %423 = load i32, i32* %5, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %422, i64 %424
  %426 = load i64, i64* @PAGE_SIZE, align 8
  %427 = load i32, i32* %5, align 4
  %428 = sext i32 %427 to i64
  %429 = sub nsw i64 %426, %428
  %430 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %431 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %430, i32 0, i32 24
  %432 = load i32, i32* %431, align 4
  %433 = call i64 @snprintf(i8* %425, i64 %429, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i32 %432)
  %434 = load i32, i32* %5, align 4
  %435 = sext i32 %434 to i64
  %436 = add nsw i64 %435, %433
  %437 = trunc i64 %436 to i32
  store i32 %437, i32* %5, align 4
  %438 = load i8*, i8** %6, align 8
  %439 = load i32, i32* %5, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* %438, i64 %440
  %442 = load i64, i64* @PAGE_SIZE, align 8
  %443 = load i32, i32* %5, align 4
  %444 = sext i32 %443 to i64
  %445 = sub nsw i64 %442, %444
  %446 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %447 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %446, i32 0, i32 25
  %448 = load i32, i32* %447, align 4
  %449 = call i64 @snprintf(i8* %441, i64 %445, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 %448)
  %450 = load i32, i32* %5, align 4
  %451 = sext i32 %450 to i64
  %452 = add nsw i64 %451, %449
  %453 = trunc i64 %452 to i32
  store i32 %453, i32* %5, align 4
  %454 = load i8*, i8** %6, align 8
  %455 = load i32, i32* %5, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, i8* %454, i64 %456
  %458 = load i64, i64* @PAGE_SIZE, align 8
  %459 = load i32, i32* %5, align 4
  %460 = sext i32 %459 to i64
  %461 = sub nsw i64 %458, %460
  %462 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %463 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %462, i32 0, i32 26
  %464 = load i32, i32* %463, align 4
  %465 = call i64 @snprintf(i8* %457, i64 %461, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 %464)
  %466 = load i32, i32* %5, align 4
  %467 = sext i32 %466 to i64
  %468 = add nsw i64 %467, %465
  %469 = trunc i64 %468 to i32
  store i32 %469, i32* %5, align 4
  %470 = load i8*, i8** %6, align 8
  %471 = load i32, i32* %5, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i8, i8* %470, i64 %472
  %474 = load i64, i64* @PAGE_SIZE, align 8
  %475 = load i32, i32* %5, align 4
  %476 = sext i32 %475 to i64
  %477 = sub nsw i64 %474, %476
  %478 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %479 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %478, i32 0, i32 27
  %480 = load i32, i32* %479, align 4
  %481 = call i64 @snprintf(i8* %473, i64 %477, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 %480)
  %482 = load i32, i32* %5, align 4
  %483 = sext i32 %482 to i64
  %484 = add nsw i64 %483, %481
  %485 = trunc i64 %484 to i32
  store i32 %485, i32* %5, align 4
  %486 = load i8*, i8** %6, align 8
  %487 = load i32, i32* %5, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8, i8* %486, i64 %488
  %490 = load i64, i64* @PAGE_SIZE, align 8
  %491 = load i32, i32* %5, align 4
  %492 = sext i32 %491 to i64
  %493 = sub nsw i64 %490, %492
  %494 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %495 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %494, i32 0, i32 28
  %496 = load i32, i32* %495, align 4
  %497 = call i64 @snprintf(i8* %489, i64 %493, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 %496)
  %498 = load i32, i32* %5, align 4
  %499 = sext i32 %498 to i64
  %500 = add nsw i64 %499, %497
  %501 = trunc i64 %500 to i32
  store i32 %501, i32* %5, align 4
  %502 = load i8*, i8** %6, align 8
  %503 = load i32, i32* %5, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i8, i8* %502, i64 %504
  %506 = load i64, i64* @PAGE_SIZE, align 8
  %507 = load i32, i32* %5, align 4
  %508 = sext i32 %507 to i64
  %509 = sub nsw i64 %506, %508
  %510 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %511 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %510, i32 0, i32 29
  %512 = load i32, i32* %511, align 4
  %513 = call i64 @snprintf(i8* %505, i64 %509, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 %512)
  %514 = load i32, i32* %5, align 4
  %515 = sext i32 %514 to i64
  %516 = add nsw i64 %515, %513
  %517 = trunc i64 %516 to i32
  store i32 %517, i32* %5, align 4
  %518 = load i8*, i8** %6, align 8
  %519 = load i32, i32* %5, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i8, i8* %518, i64 %520
  %522 = load i64, i64* @PAGE_SIZE, align 8
  %523 = load i32, i32* %5, align 4
  %524 = sext i32 %523 to i64
  %525 = sub nsw i64 %522, %524
  %526 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %527 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %526, i32 0, i32 30
  %528 = load i32, i32* %527, align 4
  %529 = call i64 @snprintf(i8* %521, i64 %525, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), i32 %528)
  %530 = load i32, i32* %5, align 4
  %531 = sext i32 %530 to i64
  %532 = add nsw i64 %531, %529
  %533 = trunc i64 %532 to i32
  store i32 %533, i32* %5, align 4
  %534 = load i8*, i8** %6, align 8
  %535 = load i32, i32* %5, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i8, i8* %534, i64 %536
  %538 = load i64, i64* @PAGE_SIZE, align 8
  %539 = load i32, i32* %5, align 4
  %540 = sext i32 %539 to i64
  %541 = sub nsw i64 %538, %540
  %542 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %543 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %542, i32 0, i32 31
  %544 = load i32, i32* %543, align 4
  %545 = call i64 @snprintf(i8* %537, i64 %541, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0), i32 %544)
  %546 = load i32, i32* %5, align 4
  %547 = sext i32 %546 to i64
  %548 = add nsw i64 %547, %545
  %549 = trunc i64 %548 to i32
  store i32 %549, i32* %5, align 4
  %550 = load i8*, i8** %6, align 8
  %551 = load i32, i32* %5, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8, i8* %550, i64 %552
  %554 = load i64, i64* @PAGE_SIZE, align 8
  %555 = load i32, i32* %5, align 4
  %556 = sext i32 %555 to i64
  %557 = sub nsw i64 %554, %556
  %558 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %559 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %558, i32 0, i32 32
  %560 = load i32, i32* %559, align 4
  %561 = call i64 @snprintf(i8* %553, i64 %557, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i32 %560)
  %562 = load i32, i32* %5, align 4
  %563 = sext i32 %562 to i64
  %564 = add nsw i64 %563, %561
  %565 = trunc i64 %564 to i32
  store i32 %565, i32* %5, align 4
  %566 = load i8*, i8** %6, align 8
  %567 = load i32, i32* %5, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i8, i8* %566, i64 %568
  %570 = load i64, i64* @PAGE_SIZE, align 8
  %571 = load i32, i32* %5, align 4
  %572 = sext i32 %571 to i64
  %573 = sub nsw i64 %570, %572
  %574 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %575 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %574, i32 0, i32 33
  %576 = load i32, i32* %575, align 4
  %577 = call i64 @snprintf(i8* %569, i64 %573, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i32 %576)
  %578 = load i32, i32* %5, align 4
  %579 = sext i32 %578 to i64
  %580 = add nsw i64 %579, %577
  %581 = trunc i64 %580 to i32
  store i32 %581, i32* %5, align 4
  %582 = load i8*, i8** %6, align 8
  %583 = load i32, i32* %5, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i8, i8* %582, i64 %584
  %586 = load i64, i64* @PAGE_SIZE, align 8
  %587 = load i32, i32* %5, align 4
  %588 = sext i32 %587 to i64
  %589 = sub nsw i64 %586, %588
  %590 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %591 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %590, i32 0, i32 34
  %592 = load i32, i32* %591, align 4
  %593 = call i64 @snprintf(i8* %585, i64 %589, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i64 0, i64 0), i32 %592)
  %594 = load i32, i32* %5, align 4
  %595 = sext i32 %594 to i64
  %596 = add nsw i64 %595, %593
  %597 = trunc i64 %596 to i32
  store i32 %597, i32* %5, align 4
  %598 = load i8*, i8** %6, align 8
  %599 = load i32, i32* %5, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i8, i8* %598, i64 %600
  %602 = load i64, i64* @PAGE_SIZE, align 8
  %603 = load i32, i32* %5, align 4
  %604 = sext i32 %603 to i64
  %605 = sub nsw i64 %602, %604
  %606 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %607 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %606, i32 0, i32 35
  %608 = load i32, i32* %607, align 4
  %609 = call i64 @snprintf(i8* %601, i64 %605, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i32 %608)
  %610 = load i32, i32* %5, align 4
  %611 = sext i32 %610 to i64
  %612 = add nsw i64 %611, %609
  %613 = trunc i64 %612 to i32
  store i32 %613, i32* %5, align 4
  %614 = load i8*, i8** %6, align 8
  %615 = load i32, i32* %5, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i8, i8* %614, i64 %616
  %618 = load i64, i64* @PAGE_SIZE, align 8
  %619 = load i32, i32* %5, align 4
  %620 = sext i32 %619 to i64
  %621 = sub nsw i64 %618, %620
  %622 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %623 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %622, i32 0, i32 36
  %624 = load i32, i32* %623, align 4
  %625 = call i64 @snprintf(i8* %617, i64 %621, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i32 %624)
  %626 = load i32, i32* %5, align 4
  %627 = sext i32 %626 to i64
  %628 = add nsw i64 %627, %625
  %629 = trunc i64 %628 to i32
  store i32 %629, i32* %5, align 4
  %630 = load i8*, i8** %6, align 8
  %631 = load i32, i32* %5, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i8, i8* %630, i64 %632
  %634 = load i64, i64* @PAGE_SIZE, align 8
  %635 = load i32, i32* %5, align 4
  %636 = sext i32 %635 to i64
  %637 = sub nsw i64 %634, %636
  %638 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %639 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %638, i32 0, i32 37
  %640 = load i32, i32* %639, align 4
  %641 = call i64 @snprintf(i8* %633, i64 %637, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i32 %640)
  %642 = load i32, i32* %5, align 4
  %643 = sext i32 %642 to i64
  %644 = add nsw i64 %643, %641
  %645 = trunc i64 %644 to i32
  store i32 %645, i32* %5, align 4
  %646 = load i8*, i8** %6, align 8
  %647 = load i32, i32* %5, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8, i8* %646, i64 %648
  %650 = load i64, i64* @PAGE_SIZE, align 8
  %651 = load i32, i32* %5, align 4
  %652 = sext i32 %651 to i64
  %653 = sub nsw i64 %650, %652
  %654 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %655 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %654, i32 0, i32 38
  %656 = load i32, i32* %655, align 4
  %657 = call i64 @snprintf(i8* %649, i64 %653, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 %656)
  %658 = load i32, i32* %5, align 4
  %659 = sext i32 %658 to i64
  %660 = add nsw i64 %659, %657
  %661 = trunc i64 %660 to i32
  store i32 %661, i32* %5, align 4
  %662 = load i8*, i8** %6, align 8
  %663 = load i32, i32* %5, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i8, i8* %662, i64 %664
  %666 = load i64, i64* @PAGE_SIZE, align 8
  %667 = load i32, i32* %5, align 4
  %668 = sext i32 %667 to i64
  %669 = sub nsw i64 %666, %668
  %670 = load %struct.sms_stats*, %struct.sms_stats** %4, align 8
  %671 = getelementptr inbounds %struct.sms_stats, %struct.sms_stats* %670, i32 0, i32 39
  %672 = load i32, i32* %671, align 4
  %673 = call i64 @snprintf(i8* %665, i64 %669, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 %672)
  %674 = load i32, i32* %5, align 4
  %675 = sext i32 %674 to i64
  %676 = add nsw i64 %675, %673
  %677 = trunc i64 %676 to i32
  store i32 %677, i32* %5, align 4
  %678 = load i32, i32* %5, align 4
  %679 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %680 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %679, i32 0, i32 0
  store i32 %678, i32* %680, align 8
  %681 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %682 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %681, i32 0, i32 3
  %683 = call i32 @spin_unlock(i32* %682)
  %684 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %685 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %684, i32 0, i32 2
  %686 = call i32 @wake_up(i32* %685)
  br label %687

687:                                              ; preds = %18, %14
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
