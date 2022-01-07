; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_catalog.c_dpu_hw_catalog_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_catalog.c_dpu_hw_catalog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 (%struct.dpu_mdss_cfg*)* }
%struct.dpu_mdss_cfg = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cfg_handler = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"unsupported chipset id:%X\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpu_mdss_cfg* @dpu_hw_catalog_init(i64 %0) #0 {
  %2 = alloca %struct.dpu_mdss_cfg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_mdss_cfg*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.dpu_mdss_cfg* @kzalloc(i32 8, i32 %6)
  store %struct.dpu_mdss_cfg* %7, %struct.dpu_mdss_cfg** %5, align 8
  %8 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %5, align 8
  %9 = icmp ne %struct.dpu_mdss_cfg* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.dpu_mdss_cfg* @ERR_PTR(i32 %12)
  store %struct.dpu_mdss_cfg* %13, %struct.dpu_mdss_cfg** %2, align 8
  br label %54

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %43, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cfg_handler, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cfg_handler, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %20
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cfg_handler, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32 (%struct.dpu_mdss_cfg*)*, i32 (%struct.dpu_mdss_cfg*)** %34, align 8
  %36 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %5, align 8
  %37 = call i32 %35(%struct.dpu_mdss_cfg* %36)
  %38 = load i64, i64* %3, align 8
  %39 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %5, align 8
  %40 = getelementptr inbounds %struct.dpu_mdss_cfg, %struct.dpu_mdss_cfg* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %5, align 8
  store %struct.dpu_mdss_cfg* %41, %struct.dpu_mdss_cfg** %2, align 8
  br label %54

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %15

46:                                               ; preds = %15
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %5, align 8
  %50 = call i32 @dpu_hw_catalog_deinit(%struct.dpu_mdss_cfg* %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.dpu_mdss_cfg* @ERR_PTR(i32 %52)
  store %struct.dpu_mdss_cfg* %53, %struct.dpu_mdss_cfg** %2, align 8
  br label %54

54:                                               ; preds = %46, %29, %10
  %55 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %2, align 8
  ret %struct.dpu_mdss_cfg* %55
}

declare dso_local %struct.dpu_mdss_cfg* @kzalloc(i32, i32) #1

declare dso_local %struct.dpu_mdss_cfg* @ERR_PTR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @DPU_ERROR(i8*, i64) #1

declare dso_local i32 @dpu_hw_catalog_deinit(%struct.dpu_mdss_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
