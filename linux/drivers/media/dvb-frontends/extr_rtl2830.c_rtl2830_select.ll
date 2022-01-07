; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.i2c_client = type { i32 }
%struct.rtl2830_dev = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*, i32)* @rtl2830_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2830_select(%struct.i2c_mux_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_mux_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rtl2830_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %10 = call %struct.i2c_client* @i2c_mux_priv(%struct.i2c_mux_core* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = call %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.rtl2830_dev* %12, %struct.rtl2830_dev** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %17 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_update_bits(i32 %18, i32 257, i32 8, i32 8)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

24:                                               ; preds = %22
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.i2c_client* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
