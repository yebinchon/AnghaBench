; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_x75create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_x75create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_req = type { i64, i32* }
%struct.layer2 = type { i32 }

@ISDN_P_B_X75SLP = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ISDN_P_B_HDLC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_req*)* @x75create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x75create(%struct.channel_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.channel_req*, align 8
  %4 = alloca %struct.layer2*, align 8
  store %struct.channel_req* %0, %struct.channel_req** %3, align 8
  %5 = load %struct.channel_req*, %struct.channel_req** %3, align 8
  %6 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ISDN_P_B_X75SLP, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EPROTONOSUPPORT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.channel_req*, %struct.channel_req** %3, align 8
  %15 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.channel_req*, %struct.channel_req** %3, align 8
  %18 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.layer2* @create_l2(i32* %16, i64 %19, i32 0, i32 0, i32 0)
  store %struct.layer2* %20, %struct.layer2** %4, align 8
  %21 = load %struct.layer2*, %struct.layer2** %4, align 8
  %22 = icmp ne %struct.layer2* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %13
  %27 = load %struct.layer2*, %struct.layer2** %4, align 8
  %28 = getelementptr inbounds %struct.layer2, %struct.layer2* %27, i32 0, i32 0
  %29 = load %struct.channel_req*, %struct.channel_req** %3, align 8
  %30 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load i64, i64* @ISDN_P_B_HDLC, align 8
  %32 = load %struct.channel_req*, %struct.channel_req** %3, align 8
  %33 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %23, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.layer2* @create_l2(i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
