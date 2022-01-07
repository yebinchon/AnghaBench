; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_devio_spi.c_cxd2880_io_spi_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_devio_spi.c_cxd2880_io_spi_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_io = type { %struct.cxd2880_spi* }
%struct.cxd2880_spi = type { i32 (%struct.cxd2880_spi*, i32*, i32)* }

@BURST_WRITE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_io*, i32, i32, i32*, i32)* @cxd2880_io_spi_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_io_spi_write_reg(%struct.cxd2880_io* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2880_io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cxd2880_spi*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.cxd2880_io* %0, %struct.cxd2880_io** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.cxd2880_spi* null, %struct.cxd2880_spi** %13, align 8
  %18 = load i32, i32* @BURST_WRITE_MAX, align 4
  %19 = add nsw i32 %18, 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32*, i32** %10, align 8
  store i32* %23, i32** %16, align 8
  %24 = load %struct.cxd2880_io*, %struct.cxd2880_io** %7, align 8
  %25 = icmp ne %struct.cxd2880_io* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load %struct.cxd2880_io*, %struct.cxd2880_io** %7, align 8
  %28 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %27, i32 0, i32 0
  %29 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %28, align 8
  %30 = icmp ne %struct.cxd2880_spi* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %26, %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %130

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @BURST_WRITE_MAX, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %130

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp sgt i32 %47, 256
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %130

52:                                               ; preds = %44
  %53 = load %struct.cxd2880_io*, %struct.cxd2880_io** %7, align 8
  %54 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %53, i32 0, i32 0
  %55 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %54, align 8
  store %struct.cxd2880_spi* %55, %struct.cxd2880_spi** %13, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 15, i32* %60, align 16
  br label %63

61:                                               ; preds = %52
  %62 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 14, i32* %62, align 16
  br label %63

63:                                               ; preds = %61, %59
  br label %64

64:                                               ; preds = %114, %63
  %65 = load i32, i32* %11, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %128

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp sgt i32 %70, 255
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 255, i32* %73, align 8
  br label %77

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  %76 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %75, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %72
  %78 = getelementptr inbounds i32, i32* %22, i64 3
  %79 = load i32*, i32** %16, align 8
  %80 = getelementptr inbounds i32, i32* %22, i64 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @memcpy(i32* %78, i32* %79, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %77
  %87 = getelementptr inbounds i32, i32* %22, i64 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 3, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %22, i64 %90
  store i32 0, i32* %91, align 4
  %92 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %13, align 8
  %93 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %92, i32 0, i32 0
  %94 = load i32 (%struct.cxd2880_spi*, i32*, i32)*, i32 (%struct.cxd2880_spi*, i32*, i32)** %93, align 8
  %95 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %13, align 8
  %96 = getelementptr inbounds i32, i32* %22, i64 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 4
  %99 = call i32 %94(%struct.cxd2880_spi* %95, i32* %22, i32 %98)
  store i32 %99, i32* %12, align 4
  br label %109

100:                                              ; preds = %77
  %101 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %13, align 8
  %102 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %101, i32 0, i32 0
  %103 = load i32 (%struct.cxd2880_spi*, i32*, i32)*, i32 (%struct.cxd2880_spi*, i32*, i32)** %102, align 8
  %104 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %13, align 8
  %105 = getelementptr inbounds i32, i32* %22, i64 2
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 3
  %108 = call i32 %103(%struct.cxd2880_spi* %104, i32* %22, i32 %107)
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %100, %86
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %130

114:                                              ; preds = %109
  %115 = getelementptr inbounds i32, i32* %22, i64 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = getelementptr inbounds i32, i32* %22, i64 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %16, align 8
  %124 = getelementptr inbounds i32, i32* %22, i64 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %11, align 4
  br label %64

128:                                              ; preds = %64
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %130

130:                                              ; preds = %128, %112, %49, %41, %34
  %131 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
