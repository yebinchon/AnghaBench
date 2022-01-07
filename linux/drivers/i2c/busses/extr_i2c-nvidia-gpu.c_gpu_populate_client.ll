; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_populate_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nvidia-gpu.c_gpu_populate_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_i2c_dev = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ccgx-ucsi\00", align 1
@ccgx_props = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpu_i2c_dev*, i32)* @gpu_populate_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpu_populate_client(%struct.gpu_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpu_i2c_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.gpu_i2c_dev* %0, %struct.gpu_i2c_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %4, align 8
  %7 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_3__* @devm_kzalloc(i32 %8, i32 16, i32 %9)
  %11 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %11, i32 0, i32 1
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %12, align 8
  %13 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %4, align 8
  %14 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %4, align 8
  %22 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strlcpy(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %27 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %4, align 8
  %28 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 8, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %4, align 8
  %33 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @ccgx_props, align 4
  %37 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %4, align 8
  %38 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32 %36, i32* %40, align 4
  %41 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %4, align 8
  %42 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %41, i32 0, i32 2
  %43 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %4, align 8
  %44 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i32 @i2c_new_device(i32* %42, %struct.TYPE_3__* %45)
  %47 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %4, align 8
  %48 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.gpu_i2c_dev*, %struct.gpu_i2c_dev** %4, align 8
  %50 = getelementptr inbounds %struct.gpu_i2c_dev, %struct.gpu_i2c_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %20
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_3__* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_new_device(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
