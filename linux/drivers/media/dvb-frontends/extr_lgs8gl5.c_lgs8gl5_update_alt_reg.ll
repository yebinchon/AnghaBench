; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gl5.c_lgs8gl5_update_alt_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gl5.c_lgs8gl5_update_alt_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gl5_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gl5_state*, i32, i32)* @lgs8gl5_update_alt_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gl5_update_alt_reg(%struct.lgs8gl5_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lgs8gl5_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [3 x %struct.i2c_msg], align 16
  store %struct.lgs8gl5_state* %0, %struct.lgs8gl5_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 4
  %14 = bitcast [1 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %11, i64 0, i64 0
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 3
  %25 = load %struct.lgs8gl5_state*, %struct.lgs8gl5_state** %4, align 8
  %26 = getelementptr inbounds %struct.lgs8gl5_state, %struct.lgs8gl5_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %24, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 1
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32* %34, i32** %33, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 2
  %36 = load i32, i32* @I2C_M_RD, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 3
  %38 = load %struct.lgs8gl5_state*, %struct.lgs8gl5_state** %4, align 8
  %39 = getelementptr inbounds %struct.lgs8gl5_state, %struct.lgs8gl5_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %37, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i64 1
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 0
  store i32 2, i32* %45, align 8
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 1
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32* %47, i32** %46, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 2
  store i32 0, i32* %48, align 8
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 3
  %50 = load %struct.lgs8gl5_state*, %struct.lgs8gl5_state** %4, align 8
  %51 = getelementptr inbounds %struct.lgs8gl5_state, %struct.lgs8gl5_state* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %49, align 4
  %56 = load %struct.lgs8gl5_state*, %struct.lgs8gl5_state** %4, align 8
  %57 = getelementptr inbounds %struct.lgs8gl5_state, %struct.lgs8gl5_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %11, i64 0, i64 0
  %60 = call i32 @i2c_transfer(i32 %58, %struct.i2c_msg* %59, i32 3)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 3
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 -1, i32 0
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
