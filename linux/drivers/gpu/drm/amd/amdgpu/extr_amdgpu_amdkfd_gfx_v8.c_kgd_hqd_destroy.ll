; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v8.c_kgd_hqd_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v8.c_kgd_hqd_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i64 }
%struct.vi_mqd = type { i64 }

@EIO = common dso_local global i32 0, align 4
@RLC_CP_SCHEDULERS = common dso_local global i32 0, align 4
@scheduler1 = common dso_local global i32 0, align 4
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
@.str.5 = private unnamed_addr constant [31 x i8] c"cp queue preemption time out.\0A\00", align 1
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
  %20 = alloca %struct.vi_mqd*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %22 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %21)
  store %struct.amdgpu_device* %22, %struct.amdgpu_device** %14, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call %struct.vi_mqd* @get_mqd(i8* %23)
  store %struct.vi_mqd* %24, %struct.vi_mqd** %20, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %157

32:                                               ; preds = %6
  %33 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @acquire_queue(%struct.kgd_dev* %33, i32 %34, i32 %35)
  %37 = load %struct.vi_mqd*, %struct.vi_mqd** %20, align 8
  %38 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @RLC_CP_SCHEDULERS, align 4
  %43 = load i32, i32* @scheduler1, align 4
  %44 = call i32 @WREG32_FIELD(i32 %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %10, align 4
  switch i32 %46, label %51 [
    i32 129, label %47
    i32 128, label %49
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @DRAIN_PIPE, align 4
  store i32 %48, i32* %16, align 4
  br label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @RESET_WAVES, align 4
  store i32 %50, i32* %16, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @DRAIN_PIPE, align 4
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %51, %49, %47
  %54 = load i64, i64* %17, align 8
  %55 = call i32 @local_irq_save(i64 %54)
  %56 = call i32 (...) @preempt_disable()
  store i32 5000, i32* %19, align 4
  br label %57

57:                                               ; preds = %53, %96
  %58 = load i32, i32* @mmCP_HQD_IQ_TIMER, align 4
  %59 = call i32 @RREG32(i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @CP_HQD_IQ_TIMER, align 4
  %62 = load i32, i32* @PROCESSING_IQ, align 4
  %63 = call i32 @REG_GET_FIELD(i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %91

67:                                               ; preds = %57
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @CP_HQD_IQ_TIMER, align 4
  %70 = load i32, i32* @ACTIVE, align 4
  %71 = call i32 @REG_GET_FIELD(i32 %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @CP_HQD_IQ_TIMER, align 4
  %76 = load i32, i32* @RETRY_TYPE, align 4
  %77 = call i32 @REG_GET_FIELD(i32 %74, i32 %75, i32 %76)
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %100

80:                                               ; preds = %73
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @CP_HQD_IQ_TIMER, align 4
  %83 = load i32, i32* @WAIT_TIME, align 4
  %84 = call i32 @REG_GET_FIELD(i32 %81, i32 %82, i32 %83)
  %85 = icmp sge i32 %84, 10
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %100

87:                                               ; preds = %80
  %88 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %90

89:                                               ; preds = %67
  br label %100

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90, %65
  %92 = load i32, i32* %19, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %100

96:                                               ; preds = %91
  %97 = call i32 @ndelay(i32 100)
  %98 = load i32, i32* %19, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %19, align 4
  br label %57

100:                                              ; preds = %94, %89, %86, %79
  store i32 1000, i32* %19, align 4
  br label %101

101:                                              ; preds = %100, %115
  %102 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %103 = call i32 @RREG32(i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @CP_HQD_DEQUEUE_REQUEST__IQ_REQ_PEND_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  br label %119

109:                                              ; preds = %101
  %110 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %119

115:                                              ; preds = %109
  %116 = call i32 @ndelay(i32 100)
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %19, align 4
  br label %101

119:                                              ; preds = %113, %108
  %120 = load i64, i64* %17, align 8
  %121 = call i32 @local_irq_restore(i64 %120)
  %122 = call i32 (...) @preempt_enable()
  %123 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @WREG32(i32 %123, i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @HZ, align 4
  %128 = mul i32 %126, %127
  %129 = udiv i32 %128, 1000
  %130 = load i32, i32* @jiffies, align 4
  %131 = add i32 %129, %130
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %18, align 8
  br label %133

133:                                              ; preds = %119, %152
  %134 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %135 = call i32 @RREG32(i32 %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* @CP_HQD_ACTIVE__ACTIVE_MASK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %133
  br label %154

141:                                              ; preds = %133
  %142 = load i32, i32* @jiffies, align 4
  %143 = load i64, i64* %18, align 8
  %144 = call i64 @time_after(i32 %142, i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %148 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %149 = call i32 @release_queue(%struct.kgd_dev* %148)
  %150 = load i32, i32* @ETIME, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %7, align 4
  br label %157

152:                                              ; preds = %141
  %153 = call i32 @usleep_range(i32 500, i32 1000)
  br label %133

154:                                              ; preds = %140
  %155 = load %struct.kgd_dev*, %struct.kgd_dev** %8, align 8
  %156 = call i32 @release_queue(%struct.kgd_dev* %155)
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %154, %146, %29
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local %struct.vi_mqd* @get_mqd(i8*) #1

declare dso_local i32 @acquire_queue(%struct.kgd_dev*, i32, i32) #1

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @release_queue(%struct.kgd_dev*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
