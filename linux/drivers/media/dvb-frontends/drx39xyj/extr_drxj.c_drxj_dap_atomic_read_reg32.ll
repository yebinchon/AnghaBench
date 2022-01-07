; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_dap_atomic_read_reg32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_dap_atomic_read_reg32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_addr = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device_addr*, i32, i32*, i32)* @drxj_dap_atomic_read_reg32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxj_dap_atomic_read_reg32(%struct.i2c_device_addr* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_device_addr* %0, %struct.i2c_device_addr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = bitcast [4 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %57

21:                                               ; preds = %4
  %22 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %25 = call i32 @drxj_dap_atomic_read_write_block(%struct.i2c_device_addr* %22, i32 %23, i32 4, i64* %24, i32 1)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %57

29:                                               ; preds = %21
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = shl i32 %33, 8
  store i32 %34, i32* %12, align 4
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %36 = load i64, i64* %35, align 16
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = shl i32 %40, 8
  store i32 %41, i32* %12, align 4
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = shl i32 %47, 8
  store i32 %48, i32* %12, align 4
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %50 = load i64, i64* %49, align 16
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %29, %28, %18
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @drxj_dap_atomic_read_write_block(%struct.i2c_device_addr*, i32, i32, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
