; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_ioctl_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_ioctl_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sev_issue_cmd = type { i32 }

@SEV_STATE_WORKING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SEV_STATE_INIT = common dso_local global i32 0, align 4
@SEV_CMD_FACTORY_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sev_issue_cmd*)* @sev_ioctl_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sev_ioctl_do_reset(%struct.sev_issue_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sev_issue_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sev_issue_cmd* %0, %struct.sev_issue_cmd** %3, align 8
  %6 = load %struct.sev_issue_cmd*, %struct.sev_issue_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.sev_issue_cmd, %struct.sev_issue_cmd* %6, i32 0, i32 0
  %8 = call i32 @sev_get_platform_state(i32* %4, i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SEV_STATE_WORKING, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SEV_STATE_INIT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load %struct.sev_issue_cmd*, %struct.sev_issue_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.sev_issue_cmd, %struct.sev_issue_cmd* %25, i32 0, i32 0
  %27 = call i32 @__sev_platform_shutdown_locked(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %38

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* @SEV_CMD_FACTORY_RESET, align 4
  %35 = load %struct.sev_issue_cmd*, %struct.sev_issue_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.sev_issue_cmd, %struct.sev_issue_cmd* %35, i32 0, i32 0
  %37 = call i32 @__sev_do_cmd_locked(i32 %34, i32* null, i32* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %30, %17, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @sev_get_platform_state(i32*, i32*) #1

declare dso_local i32 @__sev_platform_shutdown_locked(i32*) #1

declare dso_local i32 @__sev_do_cmd_locked(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
