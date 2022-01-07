; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_add_client_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_add_client_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32, i32, i32 }
%struct.ib_client = type { i32, i32 (%struct.ib_device*)*, i32, i32 }

@CLIENT_DATA_REGISTERED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_client*)* @add_client_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_client_context(%struct.ib_device* %0, %struct.ib_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_client*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_client* %1, %struct.ib_client** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %8 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %13 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %86

17:                                               ; preds = %11, %2
  %18 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %19 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %18, i32 0, i32 0
  %20 = call i32 @down_write(i32* %19)
  %21 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %22 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %21, i32 0, i32 2
  %23 = call i32 @refcount_inc_not_zero(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %81

26:                                               ; preds = %17
  %27 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %28 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %27, i32 0, i32 2
  %29 = call i32 @refcount_inc(i32* %28)
  %30 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 1
  %32 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %33 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CLIENT_DATA_REGISTERED, align 4
  %36 = call i64 @xa_get_mark(i32* %31, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %76

39:                                               ; preds = %26
  %40 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %41 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %40, i32 0, i32 1
  %42 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %43 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @xa_store(i32* %41, i32 %44, i32* null, i32 %45)
  %47 = call i32 @xa_err(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %76

51:                                               ; preds = %39
  %52 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %53 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %52, i32 0, i32 0
  %54 = call i32 @downgrade_write(i32* %53)
  %55 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %56 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %55, i32 0, i32 1
  %57 = load i32 (%struct.ib_device*)*, i32 (%struct.ib_device*)** %56, align 8
  %58 = icmp ne i32 (%struct.ib_device*)* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %61 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %60, i32 0, i32 1
  %62 = load i32 (%struct.ib_device*)*, i32 (%struct.ib_device*)** %61, align 8
  %63 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %64 = call i32 %62(%struct.ib_device* %63)
  br label %65

65:                                               ; preds = %59, %51
  %66 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %67 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %66, i32 0, i32 1
  %68 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %69 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CLIENT_DATA_REGISTERED, align 4
  %72 = call i32 @xa_set_mark(i32* %67, i32 %70, i32 %71)
  %73 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %74 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %73, i32 0, i32 0
  %75 = call i32 @up_read(i32* %74)
  store i32 0, i32* %3, align 4
  br label %86

76:                                               ; preds = %50, %38
  %77 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %78 = call i32 @ib_device_put(%struct.ib_device* %77)
  %79 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %80 = call i32 @ib_client_put(%struct.ib_client* %79)
  br label %81

81:                                               ; preds = %76, %25
  %82 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %83 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %82, i32 0, i32 0
  %84 = call i32 @up_write(i32* %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %65, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i64 @xa_get_mark(i32*, i32, i32) #1

declare dso_local i32 @xa_err(i32) #1

declare dso_local i32 @xa_store(i32*, i32, i32*, i32) #1

declare dso_local i32 @downgrade_write(i32*) #1

declare dso_local i32 @xa_set_mark(i32*, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ib_device_put(%struct.ib_device*) #1

declare dso_local i32 @ib_client_put(%struct.ib_client*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
