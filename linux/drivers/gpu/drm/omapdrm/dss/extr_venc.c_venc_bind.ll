; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dss_device = type { i32 }
%struct.venc_device = type { i32, %struct.dss_device* }

@VENC_REV_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"OMAP VENC rev %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"venc\00", align 1
@venc_dump_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @venc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dss_device*, align 8
  %9 = alloca %struct.venc_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.dss_device* @dss_get_device(%struct.device* %12)
  store %struct.dss_device* %13, %struct.dss_device** %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.venc_device* @dev_get_drvdata(%struct.device* %14)
  store %struct.venc_device* %15, %struct.venc_device** %9, align 8
  %16 = load %struct.dss_device*, %struct.dss_device** %8, align 8
  %17 = load %struct.venc_device*, %struct.venc_device** %9, align 8
  %18 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %17, i32 0, i32 1
  store %struct.dss_device* %16, %struct.dss_device** %18, align 8
  %19 = load %struct.venc_device*, %struct.venc_device** %9, align 8
  %20 = call i32 @venc_runtime_get(%struct.venc_device* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %3
  %26 = load %struct.venc_device*, %struct.venc_device** %9, align 8
  %27 = load i32, i32* @VENC_REV_ID, align 4
  %28 = call i32 @venc_read_reg(%struct.venc_device* %26, i32 %27)
  %29 = and i32 %28, 255
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %10, align 8
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load %struct.venc_device*, %struct.venc_device** %9, align 8
  %35 = call i32 @venc_runtime_put(%struct.venc_device* %34)
  %36 = load %struct.dss_device*, %struct.dss_device** %8, align 8
  %37 = load i32, i32* @venc_dump_regs, align 4
  %38 = load %struct.venc_device*, %struct.venc_device** %9, align 8
  %39 = call i32 @dss_debugfs_create_file(%struct.dss_device* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %37, %struct.venc_device* %38)
  %40 = load %struct.venc_device*, %struct.venc_device** %9, align 8
  %41 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %25, %23
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.dss_device* @dss_get_device(%struct.device*) #1

declare dso_local %struct.venc_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @venc_runtime_get(%struct.venc_device*) #1

declare dso_local i32 @venc_read_reg(%struct.venc_device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @venc_runtime_put(%struct.venc_device*) #1

declare dso_local i32 @dss_debugfs_create_file(%struct.dss_device*, i8*, i32, %struct.venc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
