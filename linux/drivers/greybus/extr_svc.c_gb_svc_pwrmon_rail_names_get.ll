; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_pwrmon_rail_names_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_pwrmon_rail_names_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { i32, i32 }
%struct.gb_svc_pwrmon_rail_names_get_response = type { i32 }

@GB_SVC_TYPE_PWRMON_RAIL_NAMES_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to get rail names: %d\0A\00", align 1
@GB_SVC_OP_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"SVC error while getting rail names: %u\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_svc*, %struct.gb_svc_pwrmon_rail_names_get_response*, i64)* @gb_svc_pwrmon_rail_names_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_svc_pwrmon_rail_names_get(%struct.gb_svc* %0, %struct.gb_svc_pwrmon_rail_names_get_response* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_svc*, align 8
  %6 = alloca %struct.gb_svc_pwrmon_rail_names_get_response*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gb_svc* %0, %struct.gb_svc** %5, align 8
  store %struct.gb_svc_pwrmon_rail_names_get_response* %1, %struct.gb_svc_pwrmon_rail_names_get_response** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %10 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GB_SVC_TYPE_PWRMON_RAIL_NAMES_GET, align 4
  %13 = load %struct.gb_svc_pwrmon_rail_names_get_response*, %struct.gb_svc_pwrmon_rail_names_get_response** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @gb_operation_sync(i32 %11, i32 %12, i32* null, i32 0, %struct.gb_svc_pwrmon_rail_names_get_response* %13, i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %20 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %19, i32 0, i32 0
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %40

24:                                               ; preds = %3
  %25 = load %struct.gb_svc_pwrmon_rail_names_get_response*, %struct.gb_svc_pwrmon_rail_names_get_response** %6, align 8
  %26 = getelementptr inbounds %struct.gb_svc_pwrmon_rail_names_get_response, %struct.gb_svc_pwrmon_rail_names_get_response* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GB_SVC_OP_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.gb_svc*, %struct.gb_svc** %5, align 8
  %32 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %31, i32 0, i32 0
  %33 = load %struct.gb_svc_pwrmon_rail_names_get_response*, %struct.gb_svc_pwrmon_rail_names_get_response** %6, align 8
  %34 = getelementptr inbounds %struct.gb_svc_pwrmon_rail_names_get_response, %struct.gb_svc_pwrmon_rail_names_get_response* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EREMOTEIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %30, %18
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @gb_operation_sync(i32, i32, i32*, i32, %struct.gb_svc_pwrmon_rail_names_get_response*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
