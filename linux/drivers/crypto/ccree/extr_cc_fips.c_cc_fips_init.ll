; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_fips.c_cc_fips_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_fips.c_cc_fips_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i64, %struct.cc_fips_handle* }
%struct.cc_fips_handle = type { %struct.TYPE_2__, %struct.cc_drvdata*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@CC_HW_REV_712 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Initializing fips tasklet\0A\00", align 1
@fips_dsr = common dso_local global i32 0, align 4
@cc_ree_fips_failure = common dso_local global i32 0, align 4
@fips_fail_notif_chain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_fips_init(%struct.cc_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca %struct.cc_fips_handle*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  %6 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %7 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %6)
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %9 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CC_HW_REV_712, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.cc_fips_handle* @devm_kzalloc(%struct.device* %15, i32 24, i32 %16)
  store %struct.cc_fips_handle* %17, %struct.cc_fips_handle** %4, align 8
  %18 = load %struct.cc_fips_handle*, %struct.cc_fips_handle** %4, align 8
  %19 = icmp ne %struct.cc_fips_handle* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %14
  %24 = load %struct.cc_fips_handle*, %struct.cc_fips_handle** %4, align 8
  %25 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %26 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %25, i32 0, i32 1
  store %struct.cc_fips_handle* %24, %struct.cc_fips_handle** %26, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.cc_fips_handle*, %struct.cc_fips_handle** %4, align 8
  %30 = getelementptr inbounds %struct.cc_fips_handle, %struct.cc_fips_handle* %29, i32 0, i32 2
  %31 = load i32, i32* @fips_dsr, align 4
  %32 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %33 = ptrtoint %struct.cc_drvdata* %32 to i64
  %34 = call i32 @tasklet_init(i32* %30, i32 %31, i64 %33)
  %35 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %36 = load %struct.cc_fips_handle*, %struct.cc_fips_handle** %4, align 8
  %37 = getelementptr inbounds %struct.cc_fips_handle, %struct.cc_fips_handle* %36, i32 0, i32 1
  store %struct.cc_drvdata* %35, %struct.cc_drvdata** %37, align 8
  %38 = load i32, i32* @cc_ree_fips_failure, align 4
  %39 = load %struct.cc_fips_handle*, %struct.cc_fips_handle** %4, align 8
  %40 = getelementptr inbounds %struct.cc_fips_handle, %struct.cc_fips_handle* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.cc_fips_handle*, %struct.cc_fips_handle** %4, align 8
  %43 = getelementptr inbounds %struct.cc_fips_handle, %struct.cc_fips_handle* %42, i32 0, i32 0
  %44 = call i32 @atomic_notifier_chain_register(i32* @fips_fail_notif_chain, %struct.TYPE_2__* %43)
  %45 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %46 = call i32 @cc_tee_handle_fips_error(%struct.cc_drvdata* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %23, %20, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local %struct.cc_fips_handle* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @atomic_notifier_chain_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @cc_tee_handle_fips_error(%struct.cc_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
