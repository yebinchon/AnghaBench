; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop.c_flexcop_device_kmalloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop.c_flexcop_device_kmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"no memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.flexcop_device* @flexcop_device_kmalloc(i64 %0) #0 {
  %2 = alloca %struct.flexcop_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.flexcop_device*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kzalloc(i64 8, i32 %6)
  %8 = bitcast i8* %7 to %struct.flexcop_device*
  store %struct.flexcop_device* %8, %struct.flexcop_device** %5, align 8
  %9 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %10 = icmp ne %struct.flexcop_device* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.flexcop_device* null, %struct.flexcop_device** %2, align 8
  br label %28

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i64 %14, i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = call i32 @err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %22 = call i32 @kfree(%struct.flexcop_device* %21)
  store %struct.flexcop_device* null, %struct.flexcop_device** %2, align 8
  br label %28

23:                                               ; preds = %13
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %26 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  store %struct.flexcop_device* %27, %struct.flexcop_device** %2, align 8
  br label %28

28:                                               ; preds = %23, %19, %11
  %29 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  ret %struct.flexcop_device* %29
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @kfree(%struct.flexcop_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
