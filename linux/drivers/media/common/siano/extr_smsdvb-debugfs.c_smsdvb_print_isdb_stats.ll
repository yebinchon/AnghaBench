; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_print_isdb_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-debugfs.c_smsdvb_print_isdb_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_debugfs = type { i32, i8*, i32, i32 }
%struct.sms_isdbt_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
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
@.str.17 = private unnamed_addr constant [28 x i8] c"sms_to_host_tx_errors = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"\0ALayer %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"\09code_rate = %d\09\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"constellation = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"\09ber = %-5d\09\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"\09ber_error_count = %-5d\09\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"ber_bit_count = %-5d\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"\09pre_ber = %-5d\09\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"\09ts_per = %-5d\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"\09error_ts_packets = %-5d\09\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"total_ts_packets = %-5d\09\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"ti_ldepth_i = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"\09number_of_segments = %d\09\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"tmcc_errors = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsdvb_debugfs*, %struct.sms_isdbt_stats*)* @smsdvb_print_isdb_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsdvb_print_isdb_stats(%struct.smsdvb_debugfs* %0, %struct.sms_isdbt_stats* %1) #0 {
  %3 = alloca %struct.smsdvb_debugfs*, align 8
  %4 = alloca %struct.sms_isdbt_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.smsdvb_debugfs* %0, %struct.smsdvb_debugfs** %3, align 8
  store %struct.sms_isdbt_stats* %1, %struct.sms_isdbt_stats** %4, align 8
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
  br label %615

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
  %31 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %32 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %31, i32 0, i32 0
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
  %47 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %48 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %47, i32 0, i32 1
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
  %63 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %64 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %63, i32 0, i32 2
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
  %79 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %80 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %79, i32 0, i32 3
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
  %95 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %96 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %95, i32 0, i32 4
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
  %111 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %112 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %111, i32 0, i32 5
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
  %127 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %128 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %127, i32 0, i32 6
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
  %143 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %144 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %143, i32 0, i32 7
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
  %159 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %160 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %159, i32 0, i32 8
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
  %175 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %176 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %175, i32 0, i32 9
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
  %191 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %192 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %191, i32 0, i32 10
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
  %207 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %208 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %207, i32 0, i32 11
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
  %223 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %224 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %223, i32 0, i32 12
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
  %239 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %240 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %239, i32 0, i32 13
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
  %255 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %256 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %255, i32 0, i32 14
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
  %271 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %272 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %271, i32 0, i32 15
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
  %287 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %288 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %287, i32 0, i32 16
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
  %303 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %304 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %303, i32 0, i32 17
  %305 = load i32, i32* %304, align 4
  %306 = call i64 @snprintf(i8* %298, i64 %302, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %308, %306
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %311

311:                                              ; preds = %602, %19
  %312 = load i32, i32* %5, align 4
  %313 = icmp slt i32 %312, 3
  br i1 %313, label %314, label %605

314:                                              ; preds = %311
  %315 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %316 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %315, i32 0, i32 18
  %317 = load %struct.TYPE_2__*, %struct.TYPE_2__** %316, align 8
  %318 = load i32, i32* %5, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = icmp slt i32 %322, 1
  br i1 %323, label %334, label %324

324:                                              ; preds = %314
  %325 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %326 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %325, i32 0, i32 18
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** %326, align 8
  %328 = load i32, i32* %5, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = icmp sgt i32 %332, 13
  br i1 %333, label %334, label %335

334:                                              ; preds = %324, %314
  br label %602

335:                                              ; preds = %324
  %336 = load i8*, i8** %7, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  %340 = load i64, i64* @PAGE_SIZE, align 8
  %341 = load i32, i32* %6, align 4
  %342 = sext i32 %341 to i64
  %343 = sub nsw i64 %340, %342
  %344 = load i32, i32* %5, align 4
  %345 = call i64 @snprintf(i8* %339, i64 %343, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %344)
  %346 = load i32, i32* %6, align 4
  %347 = sext i32 %346 to i64
  %348 = add nsw i64 %347, %345
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %6, align 4
  %350 = load i8*, i8** %7, align 8
  %351 = load i32, i32* %6, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %350, i64 %352
  %354 = load i64, i64* @PAGE_SIZE, align 8
  %355 = load i32, i32* %6, align 4
  %356 = sext i32 %355 to i64
  %357 = sub nsw i64 %354, %356
  %358 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %359 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %358, i32 0, i32 18
  %360 = load %struct.TYPE_2__*, %struct.TYPE_2__** %359, align 8
  %361 = load i32, i32* %5, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = call i64 @snprintf(i8* %353, i64 %357, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %365)
  %367 = load i32, i32* %6, align 4
  %368 = sext i32 %367 to i64
  %369 = add nsw i64 %368, %366
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %6, align 4
  %371 = load i8*, i8** %7, align 8
  %372 = load i32, i32* %6, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  %375 = load i64, i64* @PAGE_SIZE, align 8
  %376 = load i32, i32* %6, align 4
  %377 = sext i32 %376 to i64
  %378 = sub nsw i64 %375, %377
  %379 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %380 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %379, i32 0, i32 18
  %381 = load %struct.TYPE_2__*, %struct.TYPE_2__** %380, align 8
  %382 = load i32, i32* %5, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = call i64 @snprintf(i8* %374, i64 %378, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %386)
  %388 = load i32, i32* %6, align 4
  %389 = sext i32 %388 to i64
  %390 = add nsw i64 %389, %387
  %391 = trunc i64 %390 to i32
  store i32 %391, i32* %6, align 4
  %392 = load i8*, i8** %7, align 8
  %393 = load i32, i32* %6, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, i8* %392, i64 %394
  %396 = load i64, i64* @PAGE_SIZE, align 8
  %397 = load i32, i32* %6, align 4
  %398 = sext i32 %397 to i64
  %399 = sub nsw i64 %396, %398
  %400 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %401 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %400, i32 0, i32 18
  %402 = load %struct.TYPE_2__*, %struct.TYPE_2__** %401, align 8
  %403 = load i32, i32* %5, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = call i64 @snprintf(i8* %395, i64 %399, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 %407)
  %409 = load i32, i32* %6, align 4
  %410 = sext i32 %409 to i64
  %411 = add nsw i64 %410, %408
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %6, align 4
  %413 = load i8*, i8** %7, align 8
  %414 = load i32, i32* %6, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, i8* %413, i64 %415
  %417 = load i64, i64* @PAGE_SIZE, align 8
  %418 = load i32, i32* %6, align 4
  %419 = sext i32 %418 to i64
  %420 = sub nsw i64 %417, %419
  %421 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %422 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %421, i32 0, i32 18
  %423 = load %struct.TYPE_2__*, %struct.TYPE_2__** %422, align 8
  %424 = load i32, i32* %5, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i32 0, i32 4
  %428 = load i32, i32* %427, align 4
  %429 = call i64 @snprintf(i8* %416, i64 %420, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 %428)
  %430 = load i32, i32* %6, align 4
  %431 = sext i32 %430 to i64
  %432 = add nsw i64 %431, %429
  %433 = trunc i64 %432 to i32
  store i32 %433, i32* %6, align 4
  %434 = load i8*, i8** %7, align 8
  %435 = load i32, i32* %6, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i8, i8* %434, i64 %436
  %438 = load i64, i64* @PAGE_SIZE, align 8
  %439 = load i32, i32* %6, align 4
  %440 = sext i32 %439 to i64
  %441 = sub nsw i64 %438, %440
  %442 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %443 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %442, i32 0, i32 18
  %444 = load %struct.TYPE_2__*, %struct.TYPE_2__** %443, align 8
  %445 = load i32, i32* %5, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %444, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %447, i32 0, i32 5
  %449 = load i32, i32* %448, align 4
  %450 = call i64 @snprintf(i8* %437, i64 %441, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i32 %449)
  %451 = load i32, i32* %6, align 4
  %452 = sext i32 %451 to i64
  %453 = add nsw i64 %452, %450
  %454 = trunc i64 %453 to i32
  store i32 %454, i32* %6, align 4
  %455 = load i8*, i8** %7, align 8
  %456 = load i32, i32* %6, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i8, i8* %455, i64 %457
  %459 = load i64, i64* @PAGE_SIZE, align 8
  %460 = load i32, i32* %6, align 4
  %461 = sext i32 %460 to i64
  %462 = sub nsw i64 %459, %461
  %463 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %464 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %463, i32 0, i32 18
  %465 = load %struct.TYPE_2__*, %struct.TYPE_2__** %464, align 8
  %466 = load i32, i32* %5, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %468, i32 0, i32 6
  %470 = load i32, i32* %469, align 4
  %471 = call i64 @snprintf(i8* %458, i64 %462, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 %470)
  %472 = load i32, i32* %6, align 4
  %473 = sext i32 %472 to i64
  %474 = add nsw i64 %473, %471
  %475 = trunc i64 %474 to i32
  store i32 %475, i32* %6, align 4
  %476 = load i8*, i8** %7, align 8
  %477 = load i32, i32* %6, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, i8* %476, i64 %478
  %480 = load i64, i64* @PAGE_SIZE, align 8
  %481 = load i32, i32* %6, align 4
  %482 = sext i32 %481 to i64
  %483 = sub nsw i64 %480, %482
  %484 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %485 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %484, i32 0, i32 18
  %486 = load %struct.TYPE_2__*, %struct.TYPE_2__** %485, align 8
  %487 = load i32, i32* %5, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %489, i32 0, i32 7
  %491 = load i32, i32* %490, align 4
  %492 = call i64 @snprintf(i8* %479, i64 %483, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 %491)
  %493 = load i32, i32* %6, align 4
  %494 = sext i32 %493 to i64
  %495 = add nsw i64 %494, %492
  %496 = trunc i64 %495 to i32
  store i32 %496, i32* %6, align 4
  %497 = load i8*, i8** %7, align 8
  %498 = load i32, i32* %6, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i8, i8* %497, i64 %499
  %501 = load i64, i64* @PAGE_SIZE, align 8
  %502 = load i32, i32* %6, align 4
  %503 = sext i32 %502 to i64
  %504 = sub nsw i64 %501, %503
  %505 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %506 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %505, i32 0, i32 18
  %507 = load %struct.TYPE_2__*, %struct.TYPE_2__** %506, align 8
  %508 = load i32, i32* %5, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %507, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %510, i32 0, i32 8
  %512 = load i32, i32* %511, align 4
  %513 = call i64 @snprintf(i8* %500, i64 %504, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i32 %512)
  %514 = load i32, i32* %6, align 4
  %515 = sext i32 %514 to i64
  %516 = add nsw i64 %515, %513
  %517 = trunc i64 %516 to i32
  store i32 %517, i32* %6, align 4
  %518 = load i8*, i8** %7, align 8
  %519 = load i32, i32* %6, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i8, i8* %518, i64 %520
  %522 = load i64, i64* @PAGE_SIZE, align 8
  %523 = load i32, i32* %6, align 4
  %524 = sext i32 %523 to i64
  %525 = sub nsw i64 %522, %524
  %526 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %527 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %526, i32 0, i32 18
  %528 = load %struct.TYPE_2__*, %struct.TYPE_2__** %527, align 8
  %529 = load i32, i32* %5, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %528, i64 %530
  %532 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %531, i32 0, i32 9
  %533 = load i32, i32* %532, align 4
  %534 = call i64 @snprintf(i8* %521, i64 %525, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i32 %533)
  %535 = load i32, i32* %6, align 4
  %536 = sext i32 %535 to i64
  %537 = add nsw i64 %536, %534
  %538 = trunc i64 %537 to i32
  store i32 %538, i32* %6, align 4
  %539 = load i8*, i8** %7, align 8
  %540 = load i32, i32* %6, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8, i8* %539, i64 %541
  %543 = load i64, i64* @PAGE_SIZE, align 8
  %544 = load i32, i32* %6, align 4
  %545 = sext i32 %544 to i64
  %546 = sub nsw i64 %543, %545
  %547 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %548 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %547, i32 0, i32 18
  %549 = load %struct.TYPE_2__*, %struct.TYPE_2__** %548, align 8
  %550 = load i32, i32* %5, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %549, i64 %551
  %553 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %552, i32 0, i32 10
  %554 = load i32, i32* %553, align 4
  %555 = call i64 @snprintf(i8* %542, i64 %546, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 %554)
  %556 = load i32, i32* %6, align 4
  %557 = sext i32 %556 to i64
  %558 = add nsw i64 %557, %555
  %559 = trunc i64 %558 to i32
  store i32 %559, i32* %6, align 4
  %560 = load i8*, i8** %7, align 8
  %561 = load i32, i32* %6, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i8, i8* %560, i64 %562
  %564 = load i64, i64* @PAGE_SIZE, align 8
  %565 = load i32, i32* %6, align 4
  %566 = sext i32 %565 to i64
  %567 = sub nsw i64 %564, %566
  %568 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %569 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %568, i32 0, i32 18
  %570 = load %struct.TYPE_2__*, %struct.TYPE_2__** %569, align 8
  %571 = load i32, i32* %5, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %570, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 4
  %576 = call i64 @snprintf(i8* %563, i64 %567, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i32 %575)
  %577 = load i32, i32* %6, align 4
  %578 = sext i32 %577 to i64
  %579 = add nsw i64 %578, %576
  %580 = trunc i64 %579 to i32
  store i32 %580, i32* %6, align 4
  %581 = load i8*, i8** %7, align 8
  %582 = load i32, i32* %6, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i8, i8* %581, i64 %583
  %585 = load i64, i64* @PAGE_SIZE, align 8
  %586 = load i32, i32* %6, align 4
  %587 = sext i32 %586 to i64
  %588 = sub nsw i64 %585, %587
  %589 = load %struct.sms_isdbt_stats*, %struct.sms_isdbt_stats** %4, align 8
  %590 = getelementptr inbounds %struct.sms_isdbt_stats, %struct.sms_isdbt_stats* %589, i32 0, i32 18
  %591 = load %struct.TYPE_2__*, %struct.TYPE_2__** %590, align 8
  %592 = load i32, i32* %5, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %591, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %594, i32 0, i32 11
  %596 = load i32, i32* %595, align 4
  %597 = call i64 @snprintf(i8* %584, i64 %588, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 %596)
  %598 = load i32, i32* %6, align 4
  %599 = sext i32 %598 to i64
  %600 = add nsw i64 %599, %597
  %601 = trunc i64 %600 to i32
  store i32 %601, i32* %6, align 4
  br label %602

602:                                              ; preds = %335, %334
  %603 = load i32, i32* %5, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %5, align 4
  br label %311

605:                                              ; preds = %311
  %606 = load i32, i32* %6, align 4
  %607 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %608 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %607, i32 0, i32 0
  store i32 %606, i32* %608, align 8
  %609 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %610 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %609, i32 0, i32 3
  %611 = call i32 @spin_unlock(i32* %610)
  %612 = load %struct.smsdvb_debugfs*, %struct.smsdvb_debugfs** %3, align 8
  %613 = getelementptr inbounds %struct.smsdvb_debugfs, %struct.smsdvb_debugfs* %612, i32 0, i32 2
  %614 = call i32 @wake_up(i32* %613)
  br label %615

615:                                              ; preds = %605, %15
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
