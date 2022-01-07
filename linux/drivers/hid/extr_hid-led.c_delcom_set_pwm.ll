; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_delcom_set_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_delcom_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.delcom_packet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.hidled_led = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@__const.delcom_set_pwm.dp = private unnamed_addr constant %union.delcom_packet { %struct.TYPE_4__ { i32 101, i32 34, i32 0, i32 0 } }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidled_led*)* @delcom_set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delcom_set_pwm(%struct.hidled_led* %0) #0 {
  %2 = alloca %struct.hidled_led*, align 8
  %3 = alloca %union.delcom_packet, align 4
  store %struct.hidled_led* %0, %struct.hidled_led** %2, align 8
  %4 = bitcast %union.delcom_packet* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%union.delcom_packet* @__const.delcom_set_pwm.dp to i8*), i64 16, i1 false)
  %5 = load %struct.hidled_led*, %struct.hidled_led** %2, align 8
  %6 = call i32 @delcom_get_lednum(%struct.hidled_led* %5)
  %7 = bitcast %union.delcom_packet* %3 to %struct.TYPE_4__*
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.hidled_led*, %struct.hidled_led** %2, align 8
  %10 = getelementptr inbounds %struct.hidled_led, %struct.hidled_led* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = bitcast %union.delcom_packet* %3 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.hidled_led*, %struct.hidled_led** %2, align 8
  %16 = getelementptr inbounds %struct.hidled_led, %struct.hidled_led* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.delcom_packet* %3 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hidled_send(i32 %19, i32 %21)
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @delcom_get_lednum(%struct.hidled_led*) #2

declare dso_local i32 @hidled_send(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
