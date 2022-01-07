; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_terminate_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_terminate_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_i2c_dev = type { i64, %struct.st_i2c_client }
%struct.st_i2c_client = type { i64 }

@SSC_IEN = common dso_local global i64 0, align 8
@SSC_IEN_TEEN = common dso_local global i32 0, align 4
@SSC_I2C = common dso_local global i64 0, align 8
@SSC_I2C_STRTG = common dso_local global i32 0, align 4
@SSC_IEN_STOPEN = common dso_local global i32 0, align 4
@SSC_I2C_STOPG = common dso_local global i32 0, align 4
@SSC_IEN_REPSTRTEN = common dso_local global i32 0, align 4
@SSC_I2C_REPSTRTG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_i2c_dev*)* @st_i2c_terminate_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_i2c_terminate_xfer(%struct.st_i2c_dev* %0) #0 {
  %2 = alloca %struct.st_i2c_dev*, align 8
  %3 = alloca %struct.st_i2c_client*, align 8
  store %struct.st_i2c_dev* %0, %struct.st_i2c_dev** %2, align 8
  %4 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %4, i32 0, i32 1
  store %struct.st_i2c_client* %5, %struct.st_i2c_client** %3, align 8
  %6 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %7 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SSC_IEN, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* @SSC_IEN_TEEN, align 4
  %12 = call i32 @st_i2c_clr_bits(i64 %10, i32 %11)
  %13 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %14 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SSC_I2C, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @SSC_I2C_STRTG, align 4
  %19 = call i32 @st_i2c_clr_bits(i64 %17, i32 %18)
  %20 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %21 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %1
  %25 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %26 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SSC_IEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @SSC_IEN_STOPEN, align 4
  %31 = call i32 @st_i2c_set_bits(i64 %29, i32 %30)
  %32 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %33 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SSC_I2C, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @SSC_I2C_STOPG, align 4
  %38 = call i32 @st_i2c_set_bits(i64 %36, i32 %37)
  br label %54

39:                                               ; preds = %1
  %40 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %41 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SSC_IEN, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* @SSC_IEN_REPSTRTEN, align 4
  %46 = call i32 @st_i2c_set_bits(i64 %44, i32 %45)
  %47 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %48 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SSC_I2C, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* @SSC_I2C_REPSTRTG, align 4
  %53 = call i32 @st_i2c_set_bits(i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %39, %24
  ret void
}

declare dso_local i32 @st_i2c_clr_bits(i64, i32) #1

declare dso_local i32 @st_i2c_set_bits(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
