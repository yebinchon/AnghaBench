; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_spi_device.c_cxd2880_spi_device_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_spi_device.c_cxd2880_spi_device_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_spi = type { %struct.cxd2880_spi_device* }
%struct.cxd2880_spi_device = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_spi*, i32*, i64)* @cxd2880_spi_device_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_spi_device_write(%struct.cxd2880_spi* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_spi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cxd2880_spi_device*, align 8
  %9 = alloca %struct.spi_message, align 4
  %10 = alloca %struct.spi_transfer, align 8
  %11 = alloca i32, align 4
  store %struct.cxd2880_spi* %0, %struct.cxd2880_spi** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.cxd2880_spi_device* null, %struct.cxd2880_spi_device** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %5, align 8
  %13 = icmp ne %struct.cxd2880_spi* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %5, align 8
  %16 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %15, i32 0, i32 0
  %17 = load %struct.cxd2880_spi_device*, %struct.cxd2880_spi_device** %16, align 8
  %18 = icmp ne %struct.cxd2880_spi_device* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19, %14, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %49

28:                                               ; preds = %22
  %29 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %5, align 8
  %30 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %29, i32 0, i32 0
  %31 = load %struct.cxd2880_spi_device*, %struct.cxd2880_spi_device** %30, align 8
  store %struct.cxd2880_spi_device* %31, %struct.cxd2880_spi_device** %8, align 8
  %32 = call i32 @memset(%struct.spi_transfer* %10, i32 0, i32 16)
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  store i32* %33, i32** %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = call i32 @spi_message_init(%struct.spi_message* %9)
  %38 = call i32 @spi_message_add_tail(%struct.spi_transfer* %10, %struct.spi_message* %9)
  %39 = load %struct.cxd2880_spi_device*, %struct.cxd2880_spi_device** %8, align 8
  %40 = getelementptr inbounds %struct.cxd2880_spi_device, %struct.cxd2880_spi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @spi_sync(i32 %41, %struct.spi_message* %9)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %45, %25
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
