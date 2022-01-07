; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }
%struct.sp_device = type { i32, %struct.TYPE_2__* }

@psp_master = common dso_local global %struct.TYPE_2__* null, align 8
@psp_probe_timeout = common dso_local global i32 0, align 4
@psp_timeout = common dso_local global i32 0, align 4
@SEV_STATE_UNINIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"SEV: failed to INIT error %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"SEV API:%d.%d build:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psp_pci_init() #0 {
  %1 = alloca %struct.sp_device*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.sp_device* (...) @sp_get_psp_master_device()
  store %struct.sp_device* %4, %struct.sp_device** %1, align 8
  %5 = load %struct.sp_device*, %struct.sp_device** %1, align 8
  %6 = icmp ne %struct.sp_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %63

8:                                                ; preds = %0
  %9 = load %struct.sp_device*, %struct.sp_device** %1, align 8
  %10 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** @psp_master, align 8
  %12 = load i32, i32* @psp_probe_timeout, align 4
  store i32 %12, i32* @psp_timeout, align 4
  %13 = call i64 (...) @sev_get_api_version()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %62

16:                                               ; preds = %8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SEV_STATE_UNINIT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = call i32 @sev_platform_shutdown(i32* null)
  %24 = load i64, i64* @SEV_STATE_UNINIT, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = call i64 @sev_version_greater_or_equal(i32 0, i32 15)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @sev_update_firmware(i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i64 (...) @sev_get_api_version()
  br label %38

38:                                               ; preds = %36, %30, %27
  %39 = call i32 @sev_platform_init(i32* %2)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.sp_device*, %struct.sp_device** %1, align 8
  %44 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %63

48:                                               ; preds = %38
  %49 = load %struct.sp_device*, %struct.sp_device** %1, align 8
  %50 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_info(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57, i32 %60)
  br label %63

62:                                               ; preds = %15
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @psp_master, align 8
  br label %63

63:                                               ; preds = %62, %48, %42, %7
  ret void
}

declare dso_local %struct.sp_device* @sp_get_psp_master_device(...) #1

declare dso_local i64 @sev_get_api_version(...) #1

declare dso_local i32 @sev_platform_shutdown(i32*) #1

declare dso_local i64 @sev_version_greater_or_equal(i32, i32) #1

declare dso_local i64 @sev_update_firmware(i32) #1

declare dso_local i32 @sev_platform_init(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
