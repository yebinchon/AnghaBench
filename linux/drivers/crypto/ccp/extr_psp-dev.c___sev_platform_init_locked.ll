; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c___sev_platform_init_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c___sev_platform_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_device = type { i64, i32, i32 }

@psp_master = common dso_local global %struct.psp_device* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@SEV_STATE_INIT = common dso_local global i64 0, align 8
@SEV_CMD_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SEV firmware initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @__sev_platform_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sev_platform_init_locked(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.psp_device*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load %struct.psp_device*, %struct.psp_device** @psp_master, align 8
  store %struct.psp_device* %6, %struct.psp_device** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.psp_device*, %struct.psp_device** %4, align 8
  %8 = icmp ne %struct.psp_device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.psp_device*, %struct.psp_device** %4, align 8
  %14 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SEV_STATE_INIT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %38

19:                                               ; preds = %12
  %20 = load i32, i32* @SEV_CMD_INIT, align 4
  %21 = load %struct.psp_device*, %struct.psp_device** %4, align 8
  %22 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %21, i32 0, i32 2
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @__sev_do_cmd_locked(i32 %20, i32* %22, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %38

29:                                               ; preds = %19
  %30 = load i64, i64* @SEV_STATE_INIT, align 8
  %31 = load %struct.psp_device*, %struct.psp_device** %4, align 8
  %32 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.psp_device*, %struct.psp_device** %4, align 8
  %34 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %29, %27, %18, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @__sev_do_cmd_locked(i32, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
