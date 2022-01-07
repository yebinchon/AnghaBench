; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxdap_fasi_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxdap_fasi_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRXDAPFASI_LONG_ADDR_ALLOWED = common dso_local global i32 0, align 4
@DRXDAP_MAX_WCHUNKSIZE = common dso_local global i32 0, align 4
@DRXDAP_FASI_RMW = common dso_local global i32 0, align 4
@DRXDAP_FASI_MODEFLAGS = common dso_local global i32 0, align 4
@DRXDAP_MAX_RCHUNKSIZE = common dso_local global i32 0, align 4
@DRXDAP_FASI_FLAGS = common dso_local global i32 0, align 4
@DRXDAP_FASI_SINGLE_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device_addr*, i32, i32, i64*, i32)* @drxdap_fasi_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxdap_fasi_read_block(%struct.i2c_device_addr* %0, i32 %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_device_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_device_addr* %0, %struct.i2c_device_addr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %18 = icmp eq %struct.i2c_device_addr* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %116

22:                                               ; preds = %5
  %23 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %24 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_I2C_10BIT(i32 %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 2, i32 1
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @DRXDAP_FASI_LONG_FORMAT(i32 %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 4, i32 2
  %35 = add nsw i32 %29, %34
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @DRXDAP_FASI_OFFSET_TOO_LARGE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %22
  %40 = load i32, i32* @DRXDAPFASI_LONG_ADDR_ALLOWED, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @DRXDAP_FASI_LONG_FORMAT(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @DRXDAP_MAX_WCHUNKSIZE, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64*, i64** %10, align 8
  %55 = icmp eq i64* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %53, %46, %42, %22
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %116

63:                                               ; preds = %56
  %64 = load i32, i32* @DRXDAP_FASI_RMW, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* @DRXDAP_FASI_MODEFLAGS, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %112, %63
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @DRXDAP_MAX_RCHUNKSIZE, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  br label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @DRXDAP_MAX_RCHUNKSIZE, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %16, align 4
  store i32 0, i32* %13, align 4
  %81 = load i32, i32* @DRXDAP_FASI_FLAGS, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %89 = load i32, i32* %13, align 4
  %90 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %91 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %7, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load i64*, i64** %10, align 8
  %94 = call i32 @drxbsp_i2c_write_read(%struct.i2c_device_addr* %88, i32 %89, i64* %90, %struct.i2c_device_addr* %91, i32 %92, i64* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i64*, i64** %10, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64* %98, i64** %10, align 8
  %99 = load i32, i32* %16, align 4
  %100 = ashr i32 %99, 1
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %79
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %14, align 4
  %111 = icmp eq i32 %110, 0
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ false, %106 ], [ %111, %109 ]
  br i1 %113, label %71, label %114

114:                                              ; preds = %112
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %114, %60, %19
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i64 @IS_I2C_10BIT(i32) #1

declare dso_local i64 @DRXDAP_FASI_LONG_FORMAT(i32) #1

declare dso_local i64 @DRXDAP_FASI_OFFSET_TOO_LARGE(i32) #1

declare dso_local i32 @drxbsp_i2c_write_read(%struct.i2c_device_addr*, i32, i64*, %struct.i2c_device_addr*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
