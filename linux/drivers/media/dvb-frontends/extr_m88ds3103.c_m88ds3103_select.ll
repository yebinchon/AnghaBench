; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.m88ds3103_dev = type { %struct.i2c_client* }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\03\11\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"i2c wr failed=%d\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*, i32)* @m88ds3103_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88ds3103_select(%struct.i2c_mux_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_mux_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m88ds3103_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %11 = call %struct.m88ds3103_dev* @i2c_mux_priv(%struct.i2c_mux_core* %10)
  store %struct.m88ds3103_dev* %11, %struct.m88ds3103_dev** %6, align 8
  %12 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %13 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %12, i32 0, i32 0
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 2, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__i2c_transfer(i32 %24, %struct.i2c_msg* %9, i32 1)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EREMOTEIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.m88ds3103_dev* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @__i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
