; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_task_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_task_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_sched_pipe = type { %struct.lima_ip**, i32, i64, %struct.lima_ip* }
%struct.lima_ip = type { %struct.lima_device* }
%struct.lima_device = type { i64 }
%struct.lima_sched_task = type { %struct.drm_lima_m450_pp_frame* }
%struct.drm_lima_m450_pp_frame = type { i32, i32, i32*, i32*, i32*, i64, i32 }
%struct.drm_lima_m400_pp_frame = type { i32, i32, i32*, i32*, i32*, i64, i32 }

@LIMA_VA_RESERVE_DLBU = common dso_local global i32 0, align 4
@LIMA_PP_FRAME = common dso_local global i32 0, align 4
@lima_ip_dlbu = common dso_local global i64 0, align 8
@LIMA_PP_STACK = common dso_local global i32 0, align 4
@LIMA_PP_CTRL = common dso_local global i32 0, align 4
@LIMA_PP_CTRL_START_RENDERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lima_sched_pipe*, %struct.lima_sched_task*)* @lima_pp_task_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_pp_task_run(%struct.lima_sched_pipe* %0, %struct.lima_sched_task* %1) #0 {
  %3 = alloca %struct.lima_sched_pipe*, align 8
  %4 = alloca %struct.lima_sched_task*, align 8
  %5 = alloca %struct.drm_lima_m450_pp_frame*, align 8
  %6 = alloca %struct.lima_device*, align 8
  %7 = alloca %struct.lima_ip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lima_ip*, align 8
  %10 = alloca %struct.drm_lima_m400_pp_frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lima_ip*, align 8
  store %struct.lima_sched_pipe* %0, %struct.lima_sched_pipe** %3, align 8
  store %struct.lima_sched_task* %1, %struct.lima_sched_task** %4, align 8
  %13 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %14 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %13, i32 0, i32 3
  %15 = load %struct.lima_ip*, %struct.lima_ip** %14, align 8
  %16 = icmp ne %struct.lima_ip* %15, null
  br i1 %16, label %17, label %128

17:                                               ; preds = %2
  %18 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %19 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %18, i32 0, i32 0
  %20 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %19, align 8
  store %struct.drm_lima_m450_pp_frame* %20, %struct.drm_lima_m450_pp_frame** %5, align 8
  %21 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %22 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %21, i32 0, i32 3
  %23 = load %struct.lima_ip*, %struct.lima_ip** %22, align 8
  %24 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %23, i32 0, i32 0
  %25 = load %struct.lima_device*, %struct.lima_device** %24, align 8
  store %struct.lima_device* %25, %struct.lima_device** %6, align 8
  %26 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %27 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %26, i32 0, i32 3
  %28 = load %struct.lima_ip*, %struct.lima_ip** %27, align 8
  store %struct.lima_ip* %28, %struct.lima_ip** %7, align 8
  %29 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %30 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %32 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %31, i32 0, i32 1
  %33 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %34 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @atomic_set(i32* %32, i32 %35)
  %37 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %38 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %17
  %42 = load %struct.lima_device*, %struct.lima_device** %6, align 8
  %43 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %44 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @lima_dlbu_enable(%struct.lima_device* %42, i32 %45)
  %47 = load i32, i32* @LIMA_VA_RESERVE_DLBU, align 4
  %48 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %49 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @LIMA_PP_FRAME, align 4
  %52 = ashr i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %47, i32* %54, align 4
  %55 = load %struct.lima_device*, %struct.lima_device** %6, align 8
  %56 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @lima_ip_dlbu, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %61 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @lima_dlbu_set_reg(i64 %59, i32 %62)
  br label %67

64:                                               ; preds = %17
  %65 = load %struct.lima_device*, %struct.lima_device** %6, align 8
  %66 = call i32 @lima_dlbu_disable(%struct.lima_device* %65)
  br label %67

67:                                               ; preds = %64, %41
  %68 = load %struct.lima_device*, %struct.lima_device** %6, align 8
  %69 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %70 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @lima_bcast_enable(%struct.lima_device* %68, i32 %71)
  %73 = load %struct.lima_ip*, %struct.lima_ip** %7, align 8
  %74 = call i32 @lima_pp_soft_reset_async_wait(%struct.lima_ip* %73)
  %75 = load %struct.lima_ip*, %struct.lima_ip** %7, align 8
  %76 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %77 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %80 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @lima_pp_write_frame(%struct.lima_ip* %75, i32* %78, i32 %81)
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %121, %67
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %86 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %83
  %90 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %91 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %90, i32 0, i32 0
  %92 = load %struct.lima_ip**, %struct.lima_ip*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %92, i64 %94
  %96 = load %struct.lima_ip*, %struct.lima_ip** %95, align 8
  store %struct.lima_ip* %96, %struct.lima_ip** %9, align 8
  %97 = load i32, i32* @LIMA_PP_STACK, align 4
  %98 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %99 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @pp_write(i32 %97, i32 %104)
  %106 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %107 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %89
  %111 = load i32, i32* @LIMA_PP_FRAME, align 4
  %112 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %5, align 8
  %113 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, %struct.drm_lima_m450_pp_frame* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pp_write(i32 %111, i32 %118)
  br label %120

120:                                              ; preds = %110, %89
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %83

124:                                              ; preds = %83
  %125 = load i32, i32* @LIMA_PP_CTRL, align 4
  %126 = load i32, i32* @LIMA_PP_CTRL_START_RENDERING, align 4
  %127 = call i32 @pp_write(i32 %125, i32 %126)
  br label %198

128:                                              ; preds = %2
  %129 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %130 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %129, i32 0, i32 0
  %131 = load %struct.drm_lima_m450_pp_frame*, %struct.drm_lima_m450_pp_frame** %130, align 8
  %132 = bitcast %struct.drm_lima_m450_pp_frame* %131 to %struct.drm_lima_m400_pp_frame*
  store %struct.drm_lima_m400_pp_frame* %132, %struct.drm_lima_m400_pp_frame** %10, align 8
  %133 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %134 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %133, i32 0, i32 1
  %135 = load %struct.drm_lima_m400_pp_frame*, %struct.drm_lima_m400_pp_frame** %10, align 8
  %136 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, %struct.drm_lima_m400_pp_frame* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @atomic_set(i32* %134, i32 %137)
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %194, %128
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.drm_lima_m400_pp_frame*, %struct.drm_lima_m400_pp_frame** %10, align 8
  %142 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, %struct.drm_lima_m400_pp_frame* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %197

145:                                              ; preds = %139
  %146 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %3, align 8
  %147 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %146, i32 0, i32 0
  %148 = load %struct.lima_ip**, %struct.lima_ip*** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %148, i64 %150
  %152 = load %struct.lima_ip*, %struct.lima_ip** %151, align 8
  store %struct.lima_ip* %152, %struct.lima_ip** %12, align 8
  %153 = load %struct.drm_lima_m400_pp_frame*, %struct.drm_lima_m400_pp_frame** %10, align 8
  %154 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, %struct.drm_lima_m400_pp_frame* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.drm_lima_m400_pp_frame*, %struct.drm_lima_m400_pp_frame** %10, align 8
  %161 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, %struct.drm_lima_m400_pp_frame* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* @LIMA_PP_FRAME, align 4
  %164 = ashr i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 %159, i32* %166, align 4
  %167 = load %struct.drm_lima_m400_pp_frame*, %struct.drm_lima_m400_pp_frame** %10, align 8
  %168 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, %struct.drm_lima_m400_pp_frame* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.drm_lima_m400_pp_frame*, %struct.drm_lima_m400_pp_frame** %10, align 8
  %175 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, %struct.drm_lima_m400_pp_frame* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* @LIMA_PP_STACK, align 4
  %178 = ashr i32 %177, 2
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %173, i32* %180, align 4
  %181 = load %struct.lima_ip*, %struct.lima_ip** %12, align 8
  %182 = call i32 @lima_pp_soft_reset_async_wait(%struct.lima_ip* %181)
  %183 = load %struct.lima_ip*, %struct.lima_ip** %12, align 8
  %184 = load %struct.drm_lima_m400_pp_frame*, %struct.drm_lima_m400_pp_frame** %10, align 8
  %185 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, %struct.drm_lima_m400_pp_frame* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.drm_lima_m400_pp_frame*, %struct.drm_lima_m400_pp_frame** %10, align 8
  %188 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, %struct.drm_lima_m400_pp_frame* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @lima_pp_write_frame(%struct.lima_ip* %183, i32* %186, i32 %189)
  %191 = load i32, i32* @LIMA_PP_CTRL, align 4
  %192 = load i32, i32* @LIMA_PP_CTRL_START_RENDERING, align 4
  %193 = call i32 @pp_write(i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %145
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %11, align 4
  br label %139

197:                                              ; preds = %139
  br label %198

198:                                              ; preds = %197, %124
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @lima_dlbu_enable(%struct.lima_device*, i32) #1

declare dso_local i32 @lima_dlbu_set_reg(i64, i32) #1

declare dso_local i32 @lima_dlbu_disable(%struct.lima_device*) #1

declare dso_local i32 @lima_bcast_enable(%struct.lima_device*, i32) #1

declare dso_local i32 @lima_pp_soft_reset_async_wait(%struct.lima_ip*) #1

declare dso_local i32 @lima_pp_write_frame(%struct.lima_ip*, i32*, i32) #1

declare dso_local i32 @pp_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
