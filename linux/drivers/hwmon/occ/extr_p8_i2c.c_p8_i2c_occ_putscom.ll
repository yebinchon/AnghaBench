; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_p8_i2c.c_p8_i2c_occ_putscom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_p8_i2c.c_p8_i2c_occ_putscom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*)* @p8_i2c_occ_putscom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p8_i2c_occ_putscom(%struct.i2c_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = call i32 @memcpy(i32* %14, i32* %16, i32 4)
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @memcpy(i32* %18, i32* %19, i32 4)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %23 = bitcast i32* %22 to i8*
  %24 = call i32 @i2c_master_send(%struct.i2c_client* %21, i8* %23, i32 12)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 12
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %33, %27
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
