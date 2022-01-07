; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_write_fw_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_write_fw_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { i32 }

@MXL_HYDRA_OEM_MAX_BLOCK_WRITE_LENGTH = common dso_local global i32 0, align 4
@MXL_HYDRA_I2C_HDR_SIZE = common dso_local global i32 0, align 4
@MXL_HYDRA_REG_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*, i64, i64, i32*)* @write_fw_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fw_segment(%struct.mxl* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.mxl* %0, %struct.mxl** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %19 = load i32, i32* @MXL_HYDRA_OEM_MAX_BLOCK_WRITE_LENGTH, align 4
  %20 = load i32, i32* @MXL_HYDRA_I2C_HDR_SIZE, align 4
  %21 = load i32, i32* @MXL_HYDRA_REG_SIZE_IN_BYTES, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %19, %22
  %24 = sdiv i32 %23, 4
  %25 = mul nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %15, align 8
  %27 = load i32, i32* @MXL_HYDRA_OEM_MAX_BLOCK_WRITE_LENGTH, align 4
  %28 = load i32, i32* @MXL_HYDRA_I2C_HDR_SIZE, align 4
  %29 = load i32, i32* @MXL_HYDRA_REG_SIZE_IN_BYTES, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %27, %30
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %16, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %17, align 8
  br label %35

35:                                               ; preds = %90, %4
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %15, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %8, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %11, align 8
  %44 = sub nsw i64 %42, %43
  br label %47

45:                                               ; preds = %35
  %46 = load i64, i64* %15, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i64 [ %44, %41 ], [ %46, %45 ]
  store i64 %48, i64* %13, align 8
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = and i64 %49, 3
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* %13, align 8
  %54 = add nsw i64 %53, 4
  %55 = and i64 %54, -4
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = getelementptr inbounds i32, i32* %34, i64 0
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @memset(i8* %59, i32 0, i64 %60)
  %62 = load i32*, i32** %14, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = load i32*, i32** %9, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @memcpy(i8* %63, i8* %65, i64 %66)
  %68 = load i64, i64* %12, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @convert_endian(i32 1, i64 %68, i32* %69)
  %71 = load %struct.mxl*, %struct.mxl** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @write_firmware_block(%struct.mxl* %71, i64 %72, i64 %73, i32* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %56
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %96

80:                                               ; preds = %56
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %7, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 %87
  store i32* %89, i32** %9, align 8
  br label %90

90:                                               ; preds = %80
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %35, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %96

96:                                               ; preds = %94, %78
  %97 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @convert_endian(i32, i64, i32*) #2

declare dso_local i32 @write_firmware_block(%struct.mxl*, i64, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
