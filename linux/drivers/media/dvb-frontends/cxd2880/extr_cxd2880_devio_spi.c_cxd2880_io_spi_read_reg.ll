; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_devio_spi.c_cxd2880_io_spi_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_devio_spi.c_cxd2880_io_spi_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_io = type { %struct.cxd2880_spi* }
%struct.cxd2880_spi = type { i32 (%struct.cxd2880_spi*, i32*, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_io*, i32, i32, i32*, i32)* @cxd2880_io_spi_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_io_spi_read_reg(%struct.cxd2880_io* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2880_io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cxd2880_spi*, align 8
  %14 = alloca [6 x i32], align 16
  %15 = alloca i32*, align 8
  store %struct.cxd2880_io* %0, %struct.cxd2880_io** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.cxd2880_spi* null, %struct.cxd2880_spi** %13, align 8
  %16 = load i32*, i32** %10, align 8
  store i32* %16, i32** %15, align 8
  %17 = load %struct.cxd2880_io*, %struct.cxd2880_io** %7, align 8
  %18 = icmp ne %struct.cxd2880_io* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load %struct.cxd2880_io*, %struct.cxd2880_io** %7, align 8
  %21 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %20, i32 0, i32 0
  %22 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %21, align 8
  %23 = icmp ne %struct.cxd2880_spi* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %19, %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %96

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp sgt i32 %33, 256
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %96

38:                                               ; preds = %30
  %39 = load %struct.cxd2880_io*, %struct.cxd2880_io** %7, align 8
  %40 = getelementptr inbounds %struct.cxd2880_io, %struct.cxd2880_io* %39, i32 0, i32 0
  %41 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %40, align 8
  store %struct.cxd2880_spi* %41, %struct.cxd2880_spi** %13, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  store i32 11, i32* %46, align 16
  br label %49

47:                                               ; preds = %38
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  store i32 10, i32* %48, align 16
  br label %49

49:                                               ; preds = %47, %45
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 3
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 4
  store i32 0, i32* %51, align 16
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 5
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %80, %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %94

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %59, 255
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 2
  store i32 255, i32* %62, align 8
  br label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 2
  store i32 %64, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %61
  %67 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %13, align 8
  %68 = getelementptr inbounds %struct.cxd2880_spi, %struct.cxd2880_spi* %67, i32 0, i32 0
  %69 = load i32 (%struct.cxd2880_spi*, i32*, i32, i32*, i32)*, i32 (%struct.cxd2880_spi*, i32*, i32, i32*, i32)** %68, align 8
  %70 = load %struct.cxd2880_spi*, %struct.cxd2880_spi** %13, align 8
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %72 = load i32*, i32** %15, align 8
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 %69(%struct.cxd2880_spi* %70, i32* %71, i32 24, i32* %72, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %96

80:                                               ; preds = %66
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %15, align 8
  %90 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %53

94:                                               ; preds = %53
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %78, %35, %27
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
