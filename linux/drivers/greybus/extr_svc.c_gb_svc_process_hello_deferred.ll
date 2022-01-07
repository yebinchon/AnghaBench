; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_process_hello_deferred.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_process_hello_deferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.gb_connection* }
%struct.gb_connection = type { i32 }
%struct.gb_svc = type { i32, i32 }

@GB_SVC_UNIPRO_HS_SERIES_A = common dso_local global i32 0, align 4
@GB_SVC_UNIPRO_SLOW_AUTO_MODE = common dso_local global i32 0, align 4
@GB_SVC_SMALL_AMPLITUDE = common dso_local global i32 0, align 4
@GB_SVC_NO_DE_EMPHASIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"power mode change failed on AP to switch link: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_operation*)* @gb_svc_process_hello_deferred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_svc_process_hello_deferred(%struct.gb_operation* %0) #0 {
  %2 = alloca %struct.gb_operation*, align 8
  %3 = alloca %struct.gb_connection*, align 8
  %4 = alloca %struct.gb_svc*, align 8
  %5 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %2, align 8
  %6 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %7 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %6, i32 0, i32 0
  %8 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  store %struct.gb_connection* %8, %struct.gb_connection** %3, align 8
  %9 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %10 = call %struct.gb_svc* @gb_connection_get_data(%struct.gb_connection* %9)
  store %struct.gb_svc* %10, %struct.gb_svc** %4, align 8
  %11 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %12 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %13 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GB_SVC_UNIPRO_HS_SERIES_A, align 4
  %16 = load i32, i32* @GB_SVC_UNIPRO_SLOW_AUTO_MODE, align 4
  %17 = load i32, i32* @GB_SVC_SMALL_AMPLITUDE, align 4
  %18 = load i32, i32* @GB_SVC_NO_DE_EMPHASIS, align 4
  %19 = load i32, i32* @GB_SVC_UNIPRO_SLOW_AUTO_MODE, align 4
  %20 = call i32 @gb_svc_intf_set_power_mode(%struct.gb_svc* %11, i32 %14, i32 %15, i32 %16, i32 2, i32 1, i32 %17, i32 %18, i32 %19, i32 2, i32 1, i32 0, i32 0, i32* null, i32* null)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %25 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %24, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %1
  ret void
}

declare dso_local %struct.gb_svc* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @gb_svc_intf_set_power_mode(%struct.gb_svc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
