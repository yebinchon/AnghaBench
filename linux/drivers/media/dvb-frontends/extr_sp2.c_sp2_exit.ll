; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.sp2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @sp2_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp2_exit(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.sp2*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 0
  %7 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = icmp ne %struct.i2c_client* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = call %struct.sp2* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.sp2* %13, %struct.sp2** %4, align 8
  %14 = load %struct.sp2*, %struct.sp2** %4, align 8
  %15 = icmp ne %struct.sp2* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %28

17:                                               ; preds = %11
  %18 = load %struct.sp2*, %struct.sp2** %4, align 8
  %19 = getelementptr inbounds %struct.sp2, %struct.sp2* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %28

24:                                               ; preds = %17
  %25 = load %struct.sp2*, %struct.sp2** %4, align 8
  %26 = getelementptr inbounds %struct.sp2, %struct.sp2* %25, i32 0, i32 0
  %27 = call i32 @dvb_ca_en50221_release(%struct.TYPE_2__* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %23, %16, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.sp2* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dvb_ca_en50221_release(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
