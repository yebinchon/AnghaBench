; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_get_i2c_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_get_i2c_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_client = type { i32 }
%struct.rtl2832_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_adapter** }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_adapter* (%struct.i2c_client*)* @rtl2832_get_i2c_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_adapter* @rtl2832_get_i2c_adapter(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.rtl2832_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.rtl2832_dev* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.rtl2832_dev* %5, %struct.rtl2832_dev** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %12, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter*, %struct.i2c_adapter** %13, i64 0
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  ret %struct.i2c_adapter* %15
}

declare dso_local %struct.rtl2832_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
