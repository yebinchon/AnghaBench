; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_open_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_open_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ipoib_init_qp returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ipoib_ib_post_receives returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ipoib_cm_dev_open returned %d\0A\00", align 1
@IPOIB_FLAG_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_ib_dev_open_default(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %6)
  store %struct.ipoib_dev_priv* %7, %struct.ipoib_dev_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @ipoib_init_qp(%struct.net_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 -1, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @ipoib_ib_post_receives(%struct.net_device* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %44

25:                                               ; preds = %16
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @ipoib_cm_dev_open(%struct.net_device* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %44

34:                                               ; preds = %25
  %35 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %37 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %36, i32 0, i32 0
  %38 = call i32 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @ipoib_napi_enable(%struct.net_device* %41)
  br label %43

43:                                               ; preds = %40, %34
  store i32 0, i32* %2, align 4
  br label %45

44:                                               ; preds = %30, %21
  store i32 -1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_init_qp(%struct.net_device*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @ipoib_ib_post_receives(%struct.net_device*) #1

declare dso_local i32 @ipoib_cm_dev_open(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ipoib_napi_enable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
