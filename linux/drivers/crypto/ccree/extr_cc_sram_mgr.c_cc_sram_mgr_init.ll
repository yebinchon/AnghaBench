; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_sram_mgr.c_cc_sram_mgr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_sram_mgr.c_cc_sram_mgr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i64, %struct.cc_sram_ctx* }
%struct.cc_sram_ctx = type { i32 }
%struct.device = type { i32 }

@CC_HW_REV_712 = common dso_local global i64 0, align 8
@HOST_SEP_SRAM_THRESHOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid SRAM offset %pad\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_sram_mgr_init(%struct.cc_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca %struct.cc_sram_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %8 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %7)
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %10 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CC_HW_REV_712, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %16 = load i32, i32* @HOST_SEP_SRAM_THRESHOLD, align 4
  %17 = call i32 @CC_REG(i32 %16)
  %18 = call i64 @cc_ioread(%struct.cc_drvdata* %15, i32 %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %5)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %45

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.cc_sram_ctx* @devm_kzalloc(%struct.device* %30, i32 4, i32 %31)
  store %struct.cc_sram_ctx* %32, %struct.cc_sram_ctx** %4, align 8
  %33 = load %struct.cc_sram_ctx*, %struct.cc_sram_ctx** %4, align 8
  %34 = icmp ne %struct.cc_sram_ctx* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.cc_sram_ctx*, %struct.cc_sram_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.cc_sram_ctx, %struct.cc_sram_ctx* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.cc_sram_ctx*, %struct.cc_sram_ctx** %4, align 8
  %43 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %44 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %43, i32 0, i32 1
  store %struct.cc_sram_ctx* %42, %struct.cc_sram_ctx** %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %35, %23
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i64 @cc_ioread(%struct.cc_drvdata*, i32) #1

declare dso_local i32 @CC_REG(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32*) #1

declare dso_local %struct.cc_sram_ctx* @devm_kzalloc(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
