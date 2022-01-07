; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_process_pending_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_process_pending_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.pending_qinfo = type { %struct.pending_queue* }
%struct.pending_queue = type { i64, i32, i32, %struct.pending_entry* }
%struct.pending_entry = type { i32, i32, i32 (i8, i32)*, i32*, i32* }
%struct.cpt_info_buffer = type { i8*, i64, i32, i64 }
%union.cpt_res_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }

@.str = private unnamed_addr constant [29 x i8] c"Pending Entry post arg NULL\0A\00", align 1
@CPT_COMP_E_FAULT = common dso_local global i8 0, align 1
@CPT_COMP_E_SWERR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Request failed with %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DMA Fault\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Software error\00", align 1
@COMPLETION_CODE_INIT = common dso_local global i8 0, align 1
@jiffies = common dso_local global i64 0, align 8
@CPT_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Request timed out\00", align 1
@TIME_IN_RESET_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_vf*, %struct.pending_qinfo*, i32)* @process_pending_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_pending_queue(%struct.cpt_vf* %0, %struct.pending_qinfo* %1, i32 %2) #0 {
  %4 = alloca %struct.cpt_vf*, align 8
  %5 = alloca %struct.pending_qinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.pending_queue*, align 8
  %9 = alloca %struct.pending_entry*, align 8
  %10 = alloca %struct.cpt_info_buffer*, align 8
  %11 = alloca %union.cpt_res_s*, align 8
  %12 = alloca i8, align 1
  store %struct.cpt_vf* %0, %struct.cpt_vf** %4, align 8
  store %struct.pending_qinfo* %1, %struct.pending_qinfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %14 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.pending_qinfo*, %struct.pending_qinfo** %5, align 8
  %17 = getelementptr inbounds %struct.pending_qinfo, %struct.pending_qinfo* %16, i32 0, i32 0
  %18 = load %struct.pending_queue*, %struct.pending_queue** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %18, i64 %20
  store %struct.pending_queue* %21, %struct.pending_queue** %8, align 8
  store %struct.pending_entry* null, %struct.pending_entry** %9, align 8
  store %struct.cpt_info_buffer* null, %struct.cpt_info_buffer** %10, align 8
  store %union.cpt_res_s* null, %union.cpt_res_s** %11, align 8
  br label %22

22:                                               ; preds = %3, %56, %197
  %23 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %24 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %27 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %26, i32 0, i32 3
  %28 = load %struct.pending_entry*, %struct.pending_entry** %27, align 8
  %29 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %30 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %28, i64 %31
  store %struct.pending_entry* %32, %struct.pending_entry** %9, align 8
  %33 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %34 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %22
  %42 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %43 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock_bh(i32* %43)
  br label %226

45:                                               ; preds = %22
  %46 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %47 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to %struct.cpt_info_buffer*
  store %struct.cpt_info_buffer* %49, %struct.cpt_info_buffer** %10, align 8
  %50 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %10, align 8
  %51 = icmp ne %struct.cpt_info_buffer* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %45
  %57 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.pending_qinfo*, %struct.pending_qinfo** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @pending_queue_inc_front(%struct.pending_qinfo* %60, i32 %61)
  %63 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %64 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock_bh(i32* %64)
  br label %22

66:                                               ; preds = %45
  %67 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %68 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = bitcast i32* %69 to %union.cpt_res_s*
  store %union.cpt_res_s* %70, %union.cpt_res_s** %11, align 8
  %71 = load %union.cpt_res_s*, %union.cpt_res_s** %11, align 8
  %72 = bitcast %union.cpt_res_s* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %12, align 1
  %75 = load %union.cpt_res_s*, %union.cpt_res_s** %11, align 8
  %76 = bitcast %union.cpt_res_s* %75 to %struct.TYPE_2__*
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @CPT_COMP_E_FAULT, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %92, label %83

83:                                               ; preds = %66
  %84 = load %union.cpt_res_s*, %union.cpt_res_s** %11, align 8
  %85 = bitcast %union.cpt_res_s* %84 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @CPT_COMP_E_SWERR, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %83, %66
  %93 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load %union.cpt_res_s*, %union.cpt_res_s** %11, align 8
  %96 = bitcast %union.cpt_res_s* %95 to %struct.TYPE_2__*
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* @CPT_COMP_E_FAULT, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %99, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)
  %105 = call i32 (i32*, i8*, ...) @dev_err(i32* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %104)
  %106 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %107 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %106, i32 0, i32 4
  store i32* null, i32** %107, align 8
  %108 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %109 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %111 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %110, i32 0, i32 2
  %112 = call i32 @atomic64_dec(i32* %111)
  %113 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %114 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %113, i32 0, i32 3
  store i32* null, i32** %114, align 8
  %115 = load %struct.pending_qinfo*, %struct.pending_qinfo** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @pending_queue_inc_front(%struct.pending_qinfo* %115, i32 %116)
  %118 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %119 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %10, align 8
  %120 = call i32 @do_request_cleanup(%struct.cpt_vf* %118, %struct.cpt_info_buffer* %119)
  %121 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %122 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %121, i32 0, i32 1
  %123 = call i32 @spin_unlock_bh(i32* %122)
  br label %226

124:                                              ; preds = %83
  %125 = load %union.cpt_res_s*, %union.cpt_res_s** %11, align 8
  %126 = bitcast %union.cpt_res_s* %125 to %struct.TYPE_2__*
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* @COMPLETION_CODE_INIT, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %196

133:                                              ; preds = %124
  %134 = load i64, i64* @jiffies, align 8
  %135 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %10, align 8
  %136 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* @CPT_COMMAND_TIMEOUT, align 4
  %139 = load i32, i32* @HZ, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %137, %141
  %143 = call i64 @time_after_eq(i64 %134, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %133
  %146 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %146, i32 0, i32 0
  %148 = call i32 (i32*, i8*, ...) @dev_err(i32* %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %149 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %150 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %149, i32 0, i32 4
  store i32* null, i32** %150, align 8
  %151 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %152 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  %153 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %154 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %153, i32 0, i32 2
  %155 = call i32 @atomic64_dec(i32* %154)
  %156 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %157 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %156, i32 0, i32 3
  store i32* null, i32** %157, align 8
  %158 = load %struct.pending_qinfo*, %struct.pending_qinfo** %5, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @pending_queue_inc_front(%struct.pending_qinfo* %158, i32 %159)
  %161 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %162 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %10, align 8
  %163 = call i32 @do_request_cleanup(%struct.cpt_vf* %161, %struct.cpt_info_buffer* %162)
  %164 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %165 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %164, i32 0, i32 1
  %166 = call i32 @spin_unlock_bh(i32* %165)
  br label %226

167:                                              ; preds = %133
  %168 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %10, align 8
  %169 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = load i8, i8* @COMPLETION_CODE_INIT, align 1
  %174 = zext i8 %173 to i32
  %175 = xor i32 %174, -1
  %176 = icmp eq i32 %172, %175
  br i1 %176, label %177, label %194

177:                                              ; preds = %167
  %178 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %10, align 8
  %179 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @TIME_IN_RESET_COUNT, align 8
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %177
  %184 = load i64, i64* @jiffies, align 8
  %185 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %10, align 8
  %186 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %185, i32 0, i32 3
  store i64 %184, i64* %186, align 8
  %187 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %10, align 8
  %188 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %188, align 8
  %191 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %192 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %191, i32 0, i32 1
  %193 = call i32 @spin_unlock_bh(i32* %192)
  br label %226

194:                                              ; preds = %177, %167
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195, %124
  br label %197

197:                                              ; preds = %196
  %198 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %199 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %198, i32 0, i32 4
  store i32* null, i32** %199, align 8
  %200 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %201 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  %202 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %203 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %202, i32 0, i32 3
  store i32* null, i32** %203, align 8
  %204 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %205 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %204, i32 0, i32 2
  %206 = call i32 @atomic64_dec(i32* %205)
  %207 = load %struct.pending_qinfo*, %struct.pending_qinfo** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @pending_queue_inc_front(%struct.pending_qinfo* %207, i32 %208)
  %210 = load %struct.pending_queue*, %struct.pending_queue** %8, align 8
  %211 = getelementptr inbounds %struct.pending_queue, %struct.pending_queue* %210, i32 0, i32 1
  %212 = call i32 @spin_unlock_bh(i32* %211)
  %213 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %10, align 8
  %214 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %10, align 8
  %217 = call i32 @do_post_process(i32 %215, %struct.cpt_info_buffer* %216)
  %218 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %219 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %218, i32 0, i32 2
  %220 = load i32 (i8, i32)*, i32 (i8, i32)** %219, align 8
  %221 = load i8, i8* %12, align 1
  %222 = load %struct.pending_entry*, %struct.pending_entry** %9, align 8
  %223 = getelementptr inbounds %struct.pending_entry, %struct.pending_entry* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 %220(i8 zeroext %221, i32 %224)
  br label %22

226:                                              ; preds = %183, %145, %92, %41
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pending_queue_inc_front(%struct.pending_qinfo*, i32) #1

declare dso_local i32 @atomic64_dec(i32*) #1

declare dso_local i32 @do_request_cleanup(%struct.cpt_vf*, %struct.cpt_info_buffer*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @do_post_process(i32, %struct.cpt_info_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
