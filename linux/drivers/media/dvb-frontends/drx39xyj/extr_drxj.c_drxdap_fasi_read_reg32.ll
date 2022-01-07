; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxdap_fasi_read_reg32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxdap_fasi_read_reg32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device_addr*, i32, i32*, i32)* @drxdap_fasi_read_reg32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxdap_fasi_read_reg32(%struct.i2c_device_addr* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i64], align 16
  %11 = alloca i32, align 4
  store %struct.i2c_device_addr* %0, %struct.i2c_device_addr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %44

17:                                               ; preds = %4
  %18 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @drxdap_fasi_read_block(%struct.i2c_device_addr* %18, i32 %19, i32 4, i64* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %24 = load i64, i64* %23, align 16
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 0
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 8
  %31 = add nsw i32 %26, %30
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %33 = load i64, i64* %32, align 16
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 16
  %36 = add nsw i32 %31, %35
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 24
  %41 = add nsw i32 %36, %40
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %17, %14
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @drxdap_fasi_read_block(%struct.i2c_device_addr*, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
