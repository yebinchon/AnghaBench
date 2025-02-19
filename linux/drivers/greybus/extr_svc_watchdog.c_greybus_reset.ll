; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc_watchdog.c_greybus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc_watchdog.c_greybus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@greybus_reset.start_path = internal constant [18 x i8] c"/system/bin/start\00", align 16
@greybus_reset.envp = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin\00", align 1
@greybus_reset.argv = internal global [3 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @greybus_reset.start_path, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"unipro_reset\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"svc_watchdog: calling \22%s %s\22 to reset greybus network!\0A\00", align 1
@UMH_WAIT_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @greybus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @greybus_reset(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %3 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @greybus_reset.argv, i64 0, i64 0), align 16
  %4 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @greybus_reset.argv, i64 0, i64 1), align 8
  %5 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %3, i8* %4)
  %6 = load i32, i32* @UMH_WAIT_EXEC, align 4
  %7 = call i32 @call_usermodehelper(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @greybus_reset.start_path, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @greybus_reset.argv, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @greybus_reset.envp, i64 0, i64 0), i32 %6)
  ret void
}

declare dso_local i32 @pr_err(i8*, i8*, i8*) #1

declare dso_local i32 @call_usermodehelper(i8*, i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
