; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_hqd_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v7.c_kgd_hqd_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i64 }

@EIO = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@DRAIN_PIPE = common dso_local global i32 0, align 4
@RESET_WAVES = common dso_local global i32 0, align 4
@mmCP_HQD_IQ_TIMER = common dso_local global i32 0, align 4
@CP_HQD_IQ_TIMER = common dso_local global i32 0, align 4
@PROCESSING_IQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"HW is processing IQ\0A\00", align 1
@ACTIVE = common dso_local global i32 0, align 4
@RETRY_TYPE = common dso_local global i32 0, align 4
@WAIT_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"IQ timer is active\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"CP HQD IQ timer status time out\0A\00", align 1
@mmCP_HQD_DEQUEUE_REQUEST = common dso_local global i32 0, align 4
@CP_HQD_DEQUEUE_REQUEST__IQ_REQ_PEND_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Dequeue request is pending\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"CP HQD dequeue request time out\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@mmCP_HQD_ACTIVE = common dso_local global i32 0, align 4
@CP_HQD_ACTIVE__ACTIVE_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"cp queue preemption time out\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_dev*, i8*, i32, i32, i32, i32)* @kgd_hqd_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgd_hqd_destroy(%struct.kgd_dev* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kgd_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %21 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %20)
  store %struct.amdgpu_device* %21, %struct.amdgpu_device** %14, align 8
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %147

29:                                               ; preds = %6
  %30 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @acquire_queue(%struct.kgd_dev* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @mmCP_HQD_PQ_DOORBELL_CONTROL, align 4
  %35 = call i32 @WREG32(i32 %34, i32 0)
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %41 [
    i32 129, label %37
    i32 128, label %39
  ]

37:                                               ; preds = %29
  %38 = load i32, i32* @DRAIN_PIPE, align 4
  store i32 %38, i32* %16, align 4
  br label %43

39:                                               ; preds = %29
  %40 = load i32, i32* @RESET_WAVES, align 4
  store i32 %40, i32* %16, align 4
  br label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @DRAIN_PIPE, align 4
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %41, %39, %37
  %44 = load i64, i64* %17, align 8
  %45 = call i32 @local_irq_save(i64 %44)
  %46 = call i32 (...) @preempt_disable()
  store i32 5000, i32* %19, align 4
  br label %47

47:                                               ; preds = %43, %86
  %48 = load i32, i32* @mmCP_HQD_IQ_TIMER, align 4
  %49 = call i32 @RREG32(i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @CP_HQD_IQ_TIMER, align 4
  %52 = load i32, i32* @PROCESSING_IQ, align 4
  %53 = call i32 @REG_GET_FIELD(i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %81

57:                                               ; preds = %47
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @CP_HQD_IQ_TIMER, align 4
  %60 = load i32, i32* @ACTIVE, align 4
  %61 = call i32 @REG_GET_FIELD(i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @CP_HQD_IQ_TIMER, align 4
  %66 = load i32, i32* @RETRY_TYPE, align 4
  %67 = call i32 @REG_GET_FIELD(i32 %64, i32 %65, i32 %66)
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %90

70:                                               ; preds = %63
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @CP_HQD_IQ_TIMER, align 4
  %73 = load i32, i32* @WAIT_TIME, align 4
  %74 = call i32 @REG_GET_FIELD(i32 %71, i32 %72, i32 %73)
  %75 = icmp sge i32 %74, 10
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %90

77:                                               ; preds = %70
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %80

79:                                               ; preds = %57
  br label %90

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80, %55
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %90

86:                                               ; preds = %81
  %87 = call i32 @ndelay(i32 100)
  %88 = load i32, i32* %19, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %19, align 4
  br label %47

90:                                               ; preds = %84, %79, %76, %69
  store i32 1000, i32* %19, align 4
  br label %91

91:                                               ; preds = %90, %105
  %92 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %93 = call i32 @RREG32(i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @CP_HQD_DEQUEUE_REQUEST__IQ_REQ_PEND_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  br label %109

99:                                               ; preds = %91
  %100 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %109

105:                                              ; preds = %99
  %106 = call i32 @ndelay(i32 100)
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %19, align 4
  br label %91

109:                                              ; preds = %103, %98
  %110 = load i64, i64* %17, align 8
  %111 = call i32 @local_irq_restore(i64 %110)
  %112 = call i32 (...) @preempt_enable()
  %113 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @WREG32(i32 %113, i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @HZ, align 4
  %118 = mul i32 %116, %117
  %119 = udiv i32 %118, 1000
  %120 = load i32, i32* @jiffies, align 4
  %121 = add i32 %119, %120
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %18, align 8
  br label %123

123:                                              ; preds = %109, %142
  %124 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %125 = call i32 @RREG32(i32 %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @CP_HQD_ACTIVE__ACTIVE_MASK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %123
  br label %144

131:                                              ; preds = %123
  %132 = load i32, i32* @jiffies, align 4
  %133 = load i64, i64* %18, align 8
  %134 = call i64 @time_after(i32 %132, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %138 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %139 = call i32 @release_queue(%struct.kgd_dev* %138)
  %140 = load i32, i32* @ETIME, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %7, align 4
  br label %147

142:                                              ; preds = %131
  %143 = call i32 @usleep_range(i32 500, i32 1000)
  br label %123

144:                                              ; preds = %130
  %145 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %146 = call i32 @release_queue(%struct.kgd_dev* %145)
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %144, %136, %26
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i32 @acquire_queue(%struct.kgd_dev*, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @release_queue(%struct.kgd_dev*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
