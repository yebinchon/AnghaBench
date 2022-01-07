; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_set_client_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_ib_set_client_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_client = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_set_client_data(%struct.ib_device* %0, %struct.ib_client* %1, i8* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_client* %1, %struct.ib_client** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @IS_ERR(i8* %8)
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8* null, i8** %6, align 8
  br label %13

13:                                               ; preds = %12, %3
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %14, i32 0, i32 0
  %16 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %17 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @xa_store(i32* %15, i32 %18, i8* %19, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @xa_is_err(i8* %22)
  %24 = call i32 @WARN_ON(i32 %23)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i8* @xa_store(i32*, i32, i8*, i32) #1

declare dso_local i32 @xa_is_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
