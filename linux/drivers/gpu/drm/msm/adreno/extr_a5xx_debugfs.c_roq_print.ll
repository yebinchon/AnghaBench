; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_debugfs.c_roq_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_debugfs.c_roq_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ROQ state:\0A\00", align 1
@REG_A5XX_CP_ROQ_DBG_ADDR = common dso_local global i32 0, align 4
@REG_A5XX_CP_ROQ_DBG_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"  %02x: %08x %08x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*, %struct.drm_printer*)* @roq_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roq_print(%struct.msm_gpu* %0, %struct.drm_printer* %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %4, align 8
  %8 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %9 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %11 = load i32, i32* @REG_A5XX_CP_ROQ_DBG_ADDR, align 4
  %12 = call i32 @gpu_write(%struct.msm_gpu* %10, i32 %11, i32 0)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %42, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %27, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %22 = load i32, i32* @REG_A5XX_CP_ROQ_DBG_DATA, align 4
  %23 = call i32 @gpu_read(%struct.msm_gpu* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %25
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %17

30:                                               ; preds = %17
  %31 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34, i32 %36, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %13

45:                                               ; preds = %13
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
