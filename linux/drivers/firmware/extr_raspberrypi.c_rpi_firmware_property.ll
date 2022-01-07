; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_raspberrypi.c_rpi_firmware_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_raspberrypi.c_rpi_firmware_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpi_firmware = type { i32 }
%struct.rpi_firmware_property_tag_header = type { i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpi_firmware_property(%struct.rpi_firmware* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpi_firmware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rpi_firmware_property_tag_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.rpi_firmware* %0, %struct.rpi_firmware** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = add i64 24, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmalloc(i32 %15, i32 %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %52

23:                                               ; preds = %4
  %24 = load i8*, i8** %12, align 8
  %25 = bitcast i8* %24 to %struct.rpi_firmware_property_tag_header*
  store %struct.rpi_firmware_property_tag_header* %25, %struct.rpi_firmware_property_tag_header** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.rpi_firmware_property_tag_header*, %struct.rpi_firmware_property_tag_header** %10, align 8
  %28 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, %struct.rpi_firmware_property_tag_header* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.rpi_firmware_property_tag_header*, %struct.rpi_firmware_property_tag_header** %10, align 8
  %31 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, %struct.rpi_firmware_property_tag_header* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.rpi_firmware_property_tag_header*, %struct.rpi_firmware_property_tag_header** %10, align 8
  %33 = getelementptr inbounds %struct.rpi_firmware_property_tag_header, %struct.rpi_firmware_property_tag_header* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr i8, i8* %34, i64 24
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @memcpy(i8* %35, i8* %36, i64 %37)
  %39 = load %struct.rpi_firmware*, %struct.rpi_firmware** %6, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 24
  %43 = call i32 @rpi_firmware_property_list(%struct.rpi_firmware* %39, i8* %40, i64 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr i8, i8* %45, i64 24
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @memcpy(i8* %44, i8* %46, i64 %47)
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @kfree(i8* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %23, %20
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @rpi_firmware_property_list(%struct.rpi_firmware*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
