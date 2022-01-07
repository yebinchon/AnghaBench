; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_get_api_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_get_api_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, %struct.sev_user_data_status }
%struct.sev_user_data_status = type { i32, i32, i32, i32 }

@psp_master = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"SEV: failed to get status. Error: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sev_get_api_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sev_get_api_version() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sev_user_data_status*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  store %struct.sev_user_data_status* %6, %struct.sev_user_data_status** %2, align 8
  %7 = load %struct.sev_user_data_status*, %struct.sev_user_data_status** %2, align 8
  %8 = call i32 @sev_platform_status(%struct.sev_user_data_status* %7, i32* %3)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 1, i32* %1, align 4
  br label %38

17:                                               ; preds = %0
  %18 = load %struct.sev_user_data_status*, %struct.sev_user_data_status** %2, align 8
  %19 = getelementptr inbounds %struct.sev_user_data_status, %struct.sev_user_data_status* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sev_user_data_status*, %struct.sev_user_data_status** %2, align 8
  %24 = getelementptr inbounds %struct.sev_user_data_status, %struct.sev_user_data_status* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sev_user_data_status*, %struct.sev_user_data_status** %2, align 8
  %29 = getelementptr inbounds %struct.sev_user_data_status, %struct.sev_user_data_status* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sev_user_data_status*, %struct.sev_user_data_status** %2, align 8
  %34 = getelementptr inbounds %struct.sev_user_data_status, %struct.sev_user_data_status* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psp_master, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %17, %11
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @sev_platform_status(%struct.sev_user_data_status*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
