; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_debugfs.c_meq_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_debugfs.c_meq_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"MEQ state:\0A\00", align 1
@REG_A5XX_CP_MEQ_DBG_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"  %02x: %08x\0A\00", align 1
@REG_A5XX_CP_MEQ_DBG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*, %struct.drm_printer*)* @meq_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meq_print(%struct.msm_gpu* %0, %struct.drm_printer* %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %4, align 8
  %6 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %7 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %9 = load i32, i32* @REG_A5XX_CP_MEQ_DBG_ADDR, align 4
  %10 = call i32 @gpu_write(%struct.msm_gpu* %8, i32 %9, i32 0)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %21, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 64
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %18 = load i32, i32* @REG_A5XX_CP_MEQ_DBG_DATA, align 4
  %19 = call i32 @gpu_read(%struct.msm_gpu* %17, i32 %18)
  %20 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %11

24:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, ...) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
