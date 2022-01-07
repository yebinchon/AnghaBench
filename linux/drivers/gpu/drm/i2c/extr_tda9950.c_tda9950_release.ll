; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda9950_priv = type { %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }

@REG_CCR = common dso_local global i32 0, align 4
@REG_CSR = common dso_local global i32 0, align 4
@CSR_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"command processor failed to stop, irq%d may die (csr=0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda9950_priv*)* @tda9950_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda9950_release(%struct.tda9950_priv* %0) #0 {
  %2 = alloca %struct.tda9950_priv*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tda9950_priv* %0, %struct.tda9950_priv** %2, align 8
  %6 = load %struct.tda9950_priv*, %struct.tda9950_priv** %2, align 8
  %7 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %6, i32 0, i32 0
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  store i32 50, i32* %4, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = load i32, i32* @REG_CCR, align 4
  %11 = call i32 @tda9950_write(%struct.i2c_client* %9, i32 %10, i32 0)
  br label %12

12:                                               ; preds = %27, %1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = load i32, i32* @REG_CSR, align 4
  %15 = call i32 @tda9950_read(%struct.i2c_client* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CSR_BUSY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %12
  br label %28

25:                                               ; preds = %20
  %26 = call i32 @msleep(i32 10)
  br label %27

27:                                               ; preds = %25
  br i1 true, label %12, label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @CSR_BUSY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.tda9950_priv*, %struct.tda9950_priv** %2, align 8
  %43 = call i32 @tda9950_glue_release(%struct.tda9950_priv* %42)
  ret void
}

declare dso_local i32 @tda9950_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @tda9950_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @tda9950_glue_release(%struct.tda9950_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
