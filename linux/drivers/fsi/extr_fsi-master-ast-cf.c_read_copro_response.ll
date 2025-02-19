; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_read_copro_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_read_copro_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i32, i64 }

@STAT_RTAG = common dso_local global i64 0, align 8
@STAT_RCRC = common dso_local global i64 0, align 8
@FSI_RESP_ACK = common dso_local global i32 0, align 4
@RSP_DATA = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Bad response CRC !\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*, i32, i64*, i32*)* @read_copro_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_copro_response(%struct.fsi_master_acf* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_master_acf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %16 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @STAT_RTAG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread8(i64 %19)
  %21 = and i32 %20, 15
  store i32 %21, i32* %10, align 4
  %22 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %23 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STAT_RCRC, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @ioread8(i64 %26)
  %28 = and i32 %27, 15
  store i32 %28, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 3
  store i32 %30, i32* %14, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = call i64 @crc4(i64 0, i32 1, i32 1)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @crc4(i64 %33, i32 %34, i32 4)
  store i64 %35, i64* %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @FSI_RESP_ACK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %44 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RSP_DATA, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i64 @ioread32be(i64 %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %12, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @crc4(i64 %49, i32 %51, i32 %52)
  store i64 %53, i64* %13, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i64, i64* %12, align 8
  %58 = load i64*, i64** %8, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %42
  br label %60

60:                                               ; preds = %59, %39, %4
  %61 = load i64, i64* %13, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @crc4(i64 %61, i32 %62, i32 4)
  store i64 %63, i64* %13, align 8
  %64 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @trace_fsi_master_acf_copro_response(%struct.fsi_master_acf* %64, i32 %65, i32 %66, i64 %67, i32 %70)
  %72 = load i64, i64* %13, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %60
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 15
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 15
  br i1 %79, label %86, label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83, %77
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %97

89:                                               ; preds = %83, %80
  %90 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %91 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_dbg(i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %97

96:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %89, %86
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @ioread8(i64) #1

declare dso_local i64 @crc4(i64, i32, i32) #1

declare dso_local i64 @ioread32be(i64) #1

declare dso_local i32 @trace_fsi_master_acf_copro_response(%struct.fsi_master_acf*, i32, i32, i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
