; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt6000.c_nxt6000_readreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt6000.c_nxt6000_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxt6000_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"nxt6000: nxt6000_read error (reg: 0x%02X, ret: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxt6000_state*, i32)* @nxt6000_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt6000_readreg(%struct.nxt6000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.nxt6000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.nxt6000_state* %0, %struct.nxt6000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %9, align 4
  %11 = bitcast [1 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  store i32* %15, i32** %14, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  %18 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %19 = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %17, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i64 1
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 1
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32* %26, i32** %25, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 2
  %28 = load i32, i32* @I2C_M_RD, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 3
  %30 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %31 = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %29, align 4
  %35 = load %struct.nxt6000_state*, %struct.nxt6000_state** %3, align 8
  %36 = getelementptr inbounds %struct.nxt6000_state, %struct.nxt6000_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %39 = call i32 @i2c_transfer(i32 %37, %struct.i2c_msg* %38, i32 2)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %2
  %47 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @dprintk(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
