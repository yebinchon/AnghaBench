; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-i2c.c_atmel_i2c_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-i2c.c_atmel_i2c_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.atmel_i2c_client_priv = type { i32, i32 }

@STATUS_RSP_SIZE = common dso_local global i32 0, align 4
@TWHI_MIN = common dso_local global i32 0, align 4
@TWHI_MAX = common dso_local global i32 0, align 4
@STATUS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @atmel_i2c_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_i2c_wakeup(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.atmel_i2c_client_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.atmel_i2c_client_priv* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.atmel_i2c_client_priv* %10, %struct.atmel_i2c_client_priv** %4, align 8
  %11 = load i32, i32* @STATUS_RSP_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %4, align 8
  %17 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %4, align 8
  %20 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @i2c_master_send(%struct.i2c_client* %15, i32 %18, i32 %21)
  %23 = load i32, i32* @TWHI_MIN, align 4
  %24 = load i32, i32* @TWHI_MAX, align 4
  %25 = call i32 @usleep_range(i32 %23, i32 %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = load i32, i32* @STATUS_SIZE, align 4
  %28 = call i32 @i2c_master_recv(%struct.i2c_client* %26, i32* %14, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %37

33:                                               ; preds = %1
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 @atmel_i2c_status(i32* %35, i32* %14)
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %31
  %38 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.atmel_i2c_client_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @atmel_i2c_status(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
