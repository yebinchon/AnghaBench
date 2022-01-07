; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp10_set_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp10_set_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }
%struct.hidpp_report = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REPORT_ID_HIDPP_SHORT = common dso_local global i32 0, align 4
@HIDPP_GET_REGISTER = common dso_local global i32 0, align 4
@HIDPP_SET_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*, i64, i64, i64, i64)* @hidpp10_set_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp10_set_register(%struct.hidpp_device* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hidpp_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hidpp_report, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i64], align 16
  store %struct.hidpp_device* %0, %struct.hidpp_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = bitcast [3 x i64]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.hidpp_device*, %struct.hidpp_device** %7, align 8
  %17 = load i32, i32* @REPORT_ID_HIDPP_SHORT, align 4
  %18 = load i32, i32* @HIDPP_GET_REGISTER, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @hidpp_send_rap_command_sync(%struct.hidpp_device* %16, i32 %17, i32 %18, i64 %19, i64* null, i32 0, %struct.hidpp_report* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %6, align 4
  br label %50

25:                                               ; preds = %5
  %26 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %27 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %12, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i64* %26, i32 %29, i32 3)
  %31 = load i64, i64* %10, align 8
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = or i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load %struct.hidpp_device*, %struct.hidpp_device** %7, align 8
  %45 = load i32, i32* @REPORT_ID_HIDPP_SHORT, align 4
  %46 = load i32, i32* @HIDPP_SET_REGISTER, align 4
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %49 = call i32 @hidpp_send_rap_command_sync(%struct.hidpp_device* %44, i32 %45, i32 %46, i64 %47, i64* %48, i32 3, %struct.hidpp_report* %12)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %25, %23
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hidpp_send_rap_command_sync(%struct.hidpp_device*, i32, i32, i64, i64*, i32, %struct.hidpp_report*) #2

declare dso_local i32 @memcpy(i64*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
