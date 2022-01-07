; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_compensate_gas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_compensate_gas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { %struct.bme680_calib }
%struct.bme680_calib = type { i64 }

@__const.bme680_compensate_gas.lookupTable = private unnamed_addr constant [16 x i32] [i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2126008810, i32 2147483647, i32 2130303777, i32 2147483647, i32 2147483647, i32 2143188679, i32 2136746228, i32 2147483647, i32 2126008810, i32 2147483647, i32 2147483647], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*, i32, i64)* @bme680_compensate_gas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_compensate_gas(%struct.bme680_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.bme680_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.bme680_calib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  store %struct.bme680_data* %0, %struct.bme680_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %14 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %13, i32 0, i32 0
  store %struct.bme680_calib* %14, %struct.bme680_calib** %7, align 8
  %15 = bitcast [16 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([16 x i32]* @__const.bme680_compensate_gas.lookupTable to i8*), i64 64, i1 false)
  %16 = load %struct.bme680_calib*, %struct.bme680_calib** %7, align 8
  %17 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = mul nsw i32 5, %19
  %21 = add nsw i32 1340, %20
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 15
  %29 = sub nsw i32 %28, 16777216
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 15, %32
  %34 = trunc i64 %33 to i32
  %35 = shl i32 125000, %34
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %35, %36
  %38 = ashr i32 %37, 9
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = ashr i32 %39, 1
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @div64_s64(i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @div64_s64(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
