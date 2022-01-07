; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_query_switches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_query_switches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_keyb = type { %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32 }
%union.ec_response_get_next_data = type { i32 }

@EC_MKBP_INFO_CURRENT = common dso_local global i32 0, align 4
@EC_MKBP_EVENT_SWITCH = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_keyb*)* @cros_ec_keyb_query_switches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_keyb_query_switches(%struct.cros_ec_keyb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_keyb*, align 8
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %union.ec_response_get_next_data, align 4
  %6 = alloca i32, align 4
  store %struct.cros_ec_keyb* %0, %struct.cros_ec_keyb** %3, align 8
  %7 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %8 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %7, i32 0, i32 0
  %9 = load %struct.cros_ec_device*, %struct.cros_ec_device** %8, align 8
  store %struct.cros_ec_device* %9, %struct.cros_ec_device** %4, align 8
  %10 = bitcast %union.ec_response_get_next_data* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %12 = load i32, i32* @EC_MKBP_INFO_CURRENT, align 4
  %13 = load i32, i32* @EC_MKBP_EVENT_SWITCH, align 4
  %14 = call i32 @cros_ec_keyb_info(%struct.cros_ec_device* %11, i32 %12, i32 %13, %union.ec_response_get_next_data* %5, i32 4)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %21 = load i32, i32* @EV_SW, align 4
  %22 = bitcast %union.ec_response_get_next_data* %5 to i32*
  %23 = call i32 @get_unaligned_le32(i32* %22)
  %24 = call i32 @cros_ec_keyb_report_bs(%struct.cros_ec_keyb* %20, i32 %21, i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cros_ec_keyb_info(%struct.cros_ec_device*, i32, i32, %union.ec_response_get_next_data*, i32) #2

declare dso_local i32 @cros_ec_keyb_report_bs(%struct.cros_ec_keyb*, i32, i32) #2

declare dso_local i32 @get_unaligned_le32(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
