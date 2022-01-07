; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/meson/extr_meson_sm.c_serial_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/meson/extr_meson_sm.c_serial_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@SM_CHIP_ID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SM_GET_CHIP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@SM_CHIP_ID_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @serial_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @SM_CHIP_ID_LENGTH, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kmalloc(i32 %10, i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %107

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @SM_CHIP_ID_LENGTH, align 4
  %21 = load i32, i32* @SM_GET_CHIP_ID, align 4
  %22 = call i32 @meson_sm_call_read(i32* %19, i32 %20, i32 %21, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %107

29:                                               ; preds = %18
  %30 = load i8*, i8** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %33 = add nsw i32 %32, 0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %51 = add nsw i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %57 = add nsw i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %63 = add nsw i32 %62, 5
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %69 = add nsw i32 %68, 6
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %75 = add nsw i32 %74, 7
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %81 = add nsw i32 %80, 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %87 = add nsw i32 %86, 9
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %93 = add nsw i32 %92, 10
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* @SM_CHIP_ID_OFFSET, align 4
  %99 = add nsw i32 %98, 11
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %42, i32 %48, i32 %54, i32 %60, i32 %66, i32 %72, i32 %78, i32 %84, i32 %90, i32 %96, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @kfree(i32* %104)
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %29, %25, %15
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @meson_sm_call_read(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
