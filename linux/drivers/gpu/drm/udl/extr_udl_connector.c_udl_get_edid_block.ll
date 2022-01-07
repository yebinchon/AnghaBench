; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_connector.c_udl_get_edid_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_connector.c_udl_get_edid_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Read EDID byte %d failed err %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i64)* @udl_get_edid_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_get_edid_block(i8* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.udl_device*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.udl_device*
  store %struct.udl_device* %16, %struct.udl_device** %13, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kmalloc(i32 2, i32 %17)
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %68

22:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %62, %22
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @EDID_LENGTH, align 4
  %32 = mul i32 %30, %31
  %33 = add i32 %29, %32
  %34 = shl i32 %33, 8
  store i32 %34, i32* %14, align 4
  %35 = load %struct.udl_device*, %struct.udl_device** %13, align 8
  %36 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.udl_device*, %struct.udl_device** %13, align 8
  %39 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_rcvctrlpipe(i32 %40, i32 0)
  %42 = load i32, i32* %14, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* @HZ, align 4
  %45 = call i32 @usb_control_msg(i32 %37, i32 %41, i32 2, i32 192, i32 %42, i32 161, i32* %43, i32 2, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %28
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @kfree(i32* %52)
  store i32 -1, i32* %5, align 4
  br label %68

54:                                               ; preds = %28
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %23

65:                                               ; preds = %23
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @kfree(i32* %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %48, %21
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
