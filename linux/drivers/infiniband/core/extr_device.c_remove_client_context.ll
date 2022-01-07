; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_remove_client_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_remove_client_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32 }
%struct.ib_client = type { i32 (%struct.ib_device*, i8*)* }

@CLIENT_DATA_REGISTERED = common dso_local global i32 0, align 4
@clients = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i32)* @remove_client_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_client_context(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_client*, align 8
  %6 = alloca i8*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %8 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %7, i32 0, i32 1
  %9 = call i32 @down_write(i32* %8)
  %10 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %11 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %10, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CLIENT_DATA_REGISTERED, align 4
  %14 = call i32 @xa_get_mark(i32* %11, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %18 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %17, i32 0, i32 1
  %19 = call i32 @up_write(i32* %18)
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %22 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = call i8* @xa_load(i32* %22, i32 %23)
  store i8* %24, i8** %6, align 8
  %25 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 0
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CLIENT_DATA_REGISTERED, align 4
  %29 = call i32 @xa_clear_mark(i32* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i8* @xa_load(i32* @clients, i32 %30)
  %32 = bitcast i8* %31 to %struct.ib_client*
  store %struct.ib_client* %32, %struct.ib_client** %5, align 8
  %33 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %34 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %33, i32 0, i32 1
  %35 = call i32 @up_write(i32* %34)
  %36 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %37 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %36, i32 0, i32 0
  %38 = load i32 (%struct.ib_device*, i8*)*, i32 (%struct.ib_device*, i8*)** %37, align 8
  %39 = icmp ne i32 (%struct.ib_device*, i8*)* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %20
  %41 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %42 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %41, i32 0, i32 0
  %43 = load i32 (%struct.ib_device*, i8*)*, i32 (%struct.ib_device*, i8*)** %42, align 8
  %44 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 %43(%struct.ib_device* %44, i8* %45)
  br label %47

47:                                               ; preds = %40, %20
  %48 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %49 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %48, i32 0, i32 0
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @xa_erase(i32* %49, i32 %50)
  %52 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %53 = call i32 @ib_device_put(%struct.ib_device* %52)
  %54 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %55 = call i32 @ib_client_put(%struct.ib_client* %54)
  br label %56

56:                                               ; preds = %47, %16
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @xa_get_mark(i32*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i8* @xa_load(i32*, i32) #1

declare dso_local i32 @xa_clear_mark(i32*, i32, i32) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i32 @ib_device_put(%struct.ib_device*) #1

declare dso_local i32 @ib_client_put(%struct.ib_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
