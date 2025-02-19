; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha204a.c_atmel_sha204a_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha204a.c_atmel_sha204a_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.atmel_i2c_client_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"Device is busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @atmel_sha204a_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha204a_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.atmel_i2c_client_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = call %struct.atmel_i2c_client_priv* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.atmel_i2c_client_priv* %6, %struct.atmel_i2c_client_priv** %4, align 8
  %7 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %4, align 8
  %8 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %7, i32 0, i32 1
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %4, align 8
  %19 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %4, align 8
  %25 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @kfree(i8* %28)
  br label %30

30:                                               ; preds = %23, %17
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.atmel_i2c_client_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
