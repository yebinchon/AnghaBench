; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_delcom_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_delcom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.hidled_device = type { i32 }
%union.delcom_packet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@__const.delcom_init.dp = private unnamed_addr constant { %struct.TYPE_3__ } { %struct.TYPE_3__ { i32 104 } }, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidled_device*)* @delcom_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delcom_init(%struct.hidled_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidled_device*, align 8
  %4 = alloca %union.delcom_packet, align 4
  %5 = alloca i32, align 4
  store %struct.hidled_device* %0, %struct.hidled_device** %3, align 8
  %6 = bitcast %union.delcom_packet* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ({ %struct.TYPE_3__ }* @__const.delcom_init.dp to i8*), i64 4, i1 false)
  %7 = load %struct.hidled_device*, %struct.hidled_device** %3, align 8
  %8 = bitcast %union.delcom_packet* %4 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hidled_recv(%struct.hidled_device* %7, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = bitcast %union.delcom_packet* %4 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi i32 [ 0, %21 ], [ %24, %22 ]
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hidled_recv(%struct.hidled_device*, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
