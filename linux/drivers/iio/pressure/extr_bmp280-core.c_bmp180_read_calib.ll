; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp180_read_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp180_read_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i32 }
%struct.bmp180_calib = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@BMP180_REG_CALIB_COUNT = common dso_local global i32 0, align 4
@BMP180_REG_CALIB_START = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AC1 = common dso_local global i64 0, align 8
@AC2 = common dso_local global i64 0, align 8
@AC3 = common dso_local global i64 0, align 8
@AC4 = common dso_local global i64 0, align 8
@AC5 = common dso_local global i64 0, align 8
@AC6 = common dso_local global i64 0, align 8
@B1 = common dso_local global i64 0, align 8
@B2 = common dso_local global i64 0, align 8
@MB = common dso_local global i64 0, align 8
@MC = common dso_local global i64 0, align 8
@MD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*, %struct.bmp180_calib*)* @bmp180_read_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp180_read_calib(%struct.bmp280_data* %0, %struct.bmp180_calib* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmp280_data*, align 8
  %5 = alloca %struct.bmp180_calib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bmp280_data* %0, %struct.bmp280_data** %4, align 8
  store %struct.bmp180_calib* %1, %struct.bmp180_calib** %5, align 8
  %11 = load i32, i32* @BMP180_REG_CALIB_COUNT, align 4
  %12 = sdiv i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.bmp280_data*, %struct.bmp280_data** %4, align 8
  %17 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BMP180_REG_CALIB_START, align 4
  %20 = mul nuw i64 8, %13
  %21 = trunc i64 %20 to i32
  %22 = call i32 @regmap_bulk_read(i32 %18, i32 %19, i64* %15, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %123

27:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ARRAY_SIZE(i64* %15)
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %15, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @cpu_to_be16(i32 0)
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %15, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @cpu_to_be16(i32 65535)
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %32
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %123

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %28

53:                                               ; preds = %28
  %54 = mul nuw i64 8, %13
  %55 = trunc i64 %54 to i32
  %56 = call i32 @add_device_randomness(i64* %15, i32 %55)
  %57 = load i64, i64* @AC1, align 8
  %58 = getelementptr inbounds i64, i64* %15, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @be16_to_cpu(i64 %59)
  %61 = load %struct.bmp180_calib*, %struct.bmp180_calib** %5, align 8
  %62 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %61, i32 0, i32 10
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* @AC2, align 8
  %64 = getelementptr inbounds i64, i64* %15, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i8* @be16_to_cpu(i64 %65)
  %67 = load %struct.bmp180_calib*, %struct.bmp180_calib** %5, align 8
  %68 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %67, i32 0, i32 9
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* @AC3, align 8
  %70 = getelementptr inbounds i64, i64* %15, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @be16_to_cpu(i64 %71)
  %73 = load %struct.bmp180_calib*, %struct.bmp180_calib** %5, align 8
  %74 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* @AC4, align 8
  %76 = getelementptr inbounds i64, i64* %15, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @be16_to_cpu(i64 %77)
  %79 = load %struct.bmp180_calib*, %struct.bmp180_calib** %5, align 8
  %80 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* @AC5, align 8
  %82 = getelementptr inbounds i64, i64* %15, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @be16_to_cpu(i64 %83)
  %85 = load %struct.bmp180_calib*, %struct.bmp180_calib** %5, align 8
  %86 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* @AC6, align 8
  %88 = getelementptr inbounds i64, i64* %15, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @be16_to_cpu(i64 %89)
  %91 = load %struct.bmp180_calib*, %struct.bmp180_calib** %5, align 8
  %92 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load i64, i64* @B1, align 8
  %94 = getelementptr inbounds i64, i64* %15, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i8* @be16_to_cpu(i64 %95)
  %97 = load %struct.bmp180_calib*, %struct.bmp180_calib** %5, align 8
  %98 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  %99 = load i64, i64* @B2, align 8
  %100 = getelementptr inbounds i64, i64* %15, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @be16_to_cpu(i64 %101)
  %103 = load %struct.bmp180_calib*, %struct.bmp180_calib** %5, align 8
  %104 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* @MB, align 8
  %106 = getelementptr inbounds i64, i64* %15, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @be16_to_cpu(i64 %107)
  %109 = load %struct.bmp180_calib*, %struct.bmp180_calib** %5, align 8
  %110 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load i64, i64* @MC, align 8
  %112 = getelementptr inbounds i64, i64* %15, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @be16_to_cpu(i64 %113)
  %115 = load %struct.bmp180_calib*, %struct.bmp180_calib** %5, align 8
  %116 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i64, i64* @MD, align 8
  %118 = getelementptr inbounds i64, i64* %15, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @be16_to_cpu(i64 %119)
  %121 = load %struct.bmp180_calib*, %struct.bmp180_calib** %5, align 8
  %122 = getelementptr inbounds %struct.bmp180_calib, %struct.bmp180_calib* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %123

123:                                              ; preds = %53, %46, %25
  %124 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i64*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i64 @cpu_to_be16(i32) #2

declare dso_local i32 @add_device_randomness(i64*, i32) #2

declare dso_local i8* @be16_to_cpu(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
