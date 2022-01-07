; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_init_pp_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_init_pp_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_device = type { i64, %struct.lima_ip*, %struct.lima_sched_pipe* }
%struct.lima_ip = type { i64 }
%struct.lima_sched_pipe = type { %struct.lima_ip*, %struct.lima_ip*, i32, %struct.lima_ip**, i32, %struct.lima_ip**, i32, %struct.lima_ip** }

@lima_pipe_pp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@LIMA_SCHED_PIPE_MAX_PROCESSOR = common dso_local global i32 0, align 4
@lima_ip_pp0 = common dso_local global i32 0, align 4
@lima_ip_ppmmu0 = common dso_local global i32 0, align 4
@lima_gpu_mali400 = common dso_local global i64 0, align 8
@lima_ip_l2_cache0 = common dso_local global i32 0, align 4
@lima_ip_l2_cache1 = common dso_local global i32 0, align 4
@lima_ip_bcast = common dso_local global i64 0, align 8
@lima_ip_pp_bcast = common dso_local global i32 0, align 4
@lima_ip_ppmmu_bcast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_device*)* @lima_init_pp_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_init_pp_pipe(%struct.lima_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_device*, align 8
  %4 = alloca %struct.lima_sched_pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lima_ip*, align 8
  %8 = alloca %struct.lima_ip*, align 8
  %9 = alloca %struct.lima_ip*, align 8
  store %struct.lima_device* %0, %struct.lima_device** %3, align 8
  %10 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %11 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %10, i32 0, i32 2
  %12 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %11, align 8
  %13 = load i32, i32* @lima_pipe_pp, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %12, i64 %14
  store %struct.lima_sched_pipe* %15, %struct.lima_sched_pipe** %4, align 8
  %16 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %17 = call i32 @lima_sched_pipe_init(%struct.lima_sched_pipe* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %166

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %127, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @LIMA_SCHED_PIPE_MAX_PROCESSOR, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %130

27:                                               ; preds = %23
  %28 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %29 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %28, i32 0, i32 1
  %30 = load %struct.lima_ip*, %struct.lima_ip** %29, align 8
  %31 = load i32, i32* @lima_ip_pp0, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %30, i64 %32
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %33, i64 %35
  store %struct.lima_ip* %36, %struct.lima_ip** %7, align 8
  %37 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %38 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %37, i32 0, i32 1
  %39 = load %struct.lima_ip*, %struct.lima_ip** %38, align 8
  %40 = load i32, i32* @lima_ip_ppmmu0, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %39, i64 %41
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %42, i64 %44
  store %struct.lima_ip* %45, %struct.lima_ip** %8, align 8
  %46 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %47 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @lima_gpu_mali400, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %27
  %52 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %53 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %52, i32 0, i32 1
  %54 = load %struct.lima_ip*, %struct.lima_ip** %53, align 8
  %55 = load i32, i32* @lima_ip_l2_cache0, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %54, i64 %56
  store %struct.lima_ip* %57, %struct.lima_ip** %9, align 8
  br label %69

58:                                               ; preds = %27
  %59 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %60 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %59, i32 0, i32 1
  %61 = load %struct.lima_ip*, %struct.lima_ip** %60, align 8
  %62 = load i32, i32* @lima_ip_l2_cache1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %61, i64 %63
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %64, i64 %67
  store %struct.lima_ip* %68, %struct.lima_ip** %9, align 8
  br label %69

69:                                               ; preds = %58, %51
  %70 = load %struct.lima_ip*, %struct.lima_ip** %7, align 8
  %71 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %126

74:                                               ; preds = %69
  %75 = load %struct.lima_ip*, %struct.lima_ip** %8, align 8
  %76 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %74
  %80 = load %struct.lima_ip*, %struct.lima_ip** %9, align 8
  %81 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %126

84:                                               ; preds = %79
  %85 = load %struct.lima_ip*, %struct.lima_ip** %8, align 8
  %86 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %87 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %86, i32 0, i32 7
  %88 = load %struct.lima_ip**, %struct.lima_ip*** %87, align 8
  %89 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %90 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %88, i64 %93
  store %struct.lima_ip* %85, %struct.lima_ip** %94, align 8
  %95 = load %struct.lima_ip*, %struct.lima_ip** %7, align 8
  %96 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %97 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %96, i32 0, i32 5
  %98 = load %struct.lima_ip**, %struct.lima_ip*** %97, align 8
  %99 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %100 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %98, i64 %103
  store %struct.lima_ip* %95, %struct.lima_ip** %104, align 8
  %105 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %106 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %105, i32 0, i32 3
  %107 = load %struct.lima_ip**, %struct.lima_ip*** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = ashr i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %107, i64 %110
  %112 = load %struct.lima_ip*, %struct.lima_ip** %111, align 8
  %113 = icmp ne %struct.lima_ip* %112, null
  br i1 %113, label %125, label %114

114:                                              ; preds = %84
  %115 = load %struct.lima_ip*, %struct.lima_ip** %9, align 8
  %116 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %117 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %116, i32 0, i32 3
  %118 = load %struct.lima_ip**, %struct.lima_ip*** %117, align 8
  %119 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %120 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds %struct.lima_ip*, %struct.lima_ip** %118, i64 %123
  store %struct.lima_ip* %115, %struct.lima_ip** %124, align 8
  br label %125

125:                                              ; preds = %114, %84
  br label %126

126:                                              ; preds = %125, %79, %74, %69
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %23

130:                                              ; preds = %23
  %131 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %132 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %131, i32 0, i32 1
  %133 = load %struct.lima_ip*, %struct.lima_ip** %132, align 8
  %134 = load i64, i64* @lima_ip_bcast, align 8
  %135 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %133, i64 %134
  %136 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %130
  %140 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %141 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %140, i32 0, i32 1
  %142 = load %struct.lima_ip*, %struct.lima_ip** %141, align 8
  %143 = load i32, i32* @lima_ip_pp_bcast, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %142, i64 %144
  %146 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %147 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %146, i32 0, i32 1
  store %struct.lima_ip* %145, %struct.lima_ip** %147, align 8
  %148 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %149 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %148, i32 0, i32 1
  %150 = load %struct.lima_ip*, %struct.lima_ip** %149, align 8
  %151 = load i32, i32* @lima_ip_ppmmu_bcast, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %150, i64 %152
  %154 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %155 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %154, i32 0, i32 0
  store %struct.lima_ip* %153, %struct.lima_ip** %155, align 8
  br label %156

156:                                              ; preds = %139, %130
  %157 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %158 = call i32 @lima_pp_pipe_init(%struct.lima_device* %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %163 = call i32 @lima_sched_pipe_fini(%struct.lima_sched_pipe* %162)
  %164 = load i32, i32* %5, align 4
  store i32 %164, i32* %2, align 4
  br label %166

165:                                              ; preds = %156
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %161, %20
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @lima_sched_pipe_init(%struct.lima_sched_pipe*, i8*) #1

declare dso_local i32 @lima_pp_pipe_init(%struct.lima_device*) #1

declare dso_local i32 @lima_sched_pipe_fini(%struct.lima_sched_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
