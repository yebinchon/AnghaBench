; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@VIVS_HI_CLOCK_CONTROL_ISOLATE_GPU = common dso_local global i32 0, align 4
@VIVS_HI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@ETNA_SEC_KERNEL = common dso_local global i64 0, align 8
@VIVS_MMUv2_AHB_CONTROL = common dso_local global i32 0, align 4
@VIVS_MMUv2_AHB_CONTROL_RESET = common dso_local global i32 0, align 4
@VIVS_HI_CLOCK_CONTROL_SOFT_RESET = common dso_local global i32 0, align 4
@VIVS_HI_IDLE_STATE = common dso_local global i32 0, align 4
@VIVS_HI_IDLE_STATE_FE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"FE is not idle\0A\00", align 1
@VIVS_HI_CLOCK_CONTROL_IDLE_3D = common dso_local global i32 0, align 4
@VIVS_HI_CLOCK_CONTROL_IDLE_2D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"GPU is not idle\0A\00", align 1
@VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"GPU failed to reset: FE %sidle, 3D %sidle, 2D %sidle\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gpu*)* @etnaviv_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_hw_reset(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  store i32 1, i32* %7, align 4
  %9 = load i64, i64* @jiffies, align 8
  %10 = call i64 @msecs_to_jiffies(i32 1000)
  %11 = add i64 %9, %10
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %95, %77, %1
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @time_is_after_jiffies(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %108

16:                                               ; preds = %12
  %17 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %18 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 6, %19
  %21 = shl i32 1, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @VIVS_HI_CLOCK_CONTROL_FSCALE_VAL(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @etnaviv_gpu_load_clock(%struct.etnaviv_gpu* %24, i32 %25)
  %27 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_ISOLATE_GPU, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %31 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @gpu_write(%struct.etnaviv_gpu* %30, i32 %31, i32 %32)
  %34 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %35 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ETNA_SEC_KERNEL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %16
  %40 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %41 = load i32, i32* @VIVS_MMUv2_AHB_CONTROL, align 4
  %42 = load i32, i32* @VIVS_MMUv2_AHB_CONTROL_RESET, align 4
  %43 = call i32 @gpu_write(%struct.etnaviv_gpu* %40, i32 %41, i32 %42)
  br label %52

44:                                               ; preds = %16
  %45 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_SOFT_RESET, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %49 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @gpu_write(%struct.etnaviv_gpu* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %39
  %53 = call i32 @usleep_range(i32 10, i32 20)
  %54 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_SOFT_RESET, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %59 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @gpu_write(%struct.etnaviv_gpu* %58, i32 %59, i32 %60)
  %62 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_ISOLATE_GPU, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %67 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @gpu_write(%struct.etnaviv_gpu* %66, i32 %67, i32 %68)
  %70 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %71 = load i32, i32* @VIVS_HI_IDLE_STATE, align 4
  %72 = call i32 @gpu_read(%struct.etnaviv_gpu* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @VIVS_HI_IDLE_STATE_FE, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %52
  %78 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %79 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %12

82:                                               ; preds = %52
  %83 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %84 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %85 = call i32 @gpu_read(%struct.etnaviv_gpu* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_IDLE_3D, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_IDLE_2D, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90, %82
  %96 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %97 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_dbg(i32 %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %12

100:                                              ; preds = %90
  %101 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_DISABLE_DEBUG_REGISTERS, align 4
  %102 = load i32, i32* %4, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %4, align 4
  %104 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %105 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @gpu_write(%struct.etnaviv_gpu* %104, i32 %105, i32 %106)
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %100, %12
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %142

111:                                              ; preds = %108
  %112 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %113 = load i32, i32* @VIVS_HI_IDLE_STATE, align 4
  %114 = call i32 @gpu_read(%struct.etnaviv_gpu* %112, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %116 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %117 = call i32 @gpu_read(%struct.etnaviv_gpu* %115, i32 %116)
  store i32 %117, i32* %4, align 4
  %118 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %119 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @VIVS_HI_IDLE_STATE_FE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_IDLE_3D, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_IDLE_2D, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %139 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %126, i8* %132, i8* %138)
  %140 = load i32, i32* @EBUSY, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %145

142:                                              ; preds = %108
  %143 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %144 = call i32 @etnaviv_gpu_update_clock(%struct.etnaviv_gpu* %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %142, %111
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @VIVS_HI_CLOCK_CONTROL_FSCALE_VAL(i32) #1

declare dso_local i32 @etnaviv_gpu_load_clock(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @gpu_write(%struct.etnaviv_gpu*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @etnaviv_gpu_update_clock(%struct.etnaviv_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
