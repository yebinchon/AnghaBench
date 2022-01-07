; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis5595.c_sis5595_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis5595.c_sis5595_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@SMB_STS_LO = common dso_local global i32 0, align 4
@SMB_STS_HI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SMBus busy (%04x). Resetting...\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Failed! (%02x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Successful!\0A\00", align 1
@SMB_CTL_LO = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"SMBus Timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Error: Failed bus transaction\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"Bus collision! SMBus may be locked until next hard reset (or not...)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Failed reset at end of transaction (%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @sis5595_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis5595_transaction(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @SMB_STS_LO, align 4
  %8 = call i32 @sis5595_read(i32 %7)
  %9 = load i32, i32* @SMB_STS_HI, align 4
  %10 = call i32 @sis5595_read(i32 %9)
  %11 = shl i32 %10, 8
  %12 = add nsw i32 %8, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @SMB_STS_LO, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 255
  %23 = call i32 @sis5595_write(i32 %20, i32 %22)
  %24 = load i32, i32* @SMB_STS_HI, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 8
  %27 = call i32 @sis5595_write(i32 %24, i32 %26)
  %28 = load i32, i32* @SMB_STS_LO, align 4
  %29 = call i32 @sis5595_read(i32 %28)
  %30 = load i32, i32* @SMB_STS_HI, align 4
  %31 = call i32 @sis5595_read(i32 %30)
  %32 = shl i32 %31, 8
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %15
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %132

42:                                               ; preds = %15
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %1
  %48 = load i32, i32* @SMB_CTL_LO, align 4
  %49 = load i32, i32* @SMB_CTL_LO, align 4
  %50 = call i32 @sis5595_read(i32 %49)
  %51 = or i32 %50, 16
  %52 = call i32 @sis5595_write(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %66, %47
  %54 = call i32 @msleep(i32 1)
  %55 = load i32, i32* @SMB_STS_LO, align 4
  %56 = call i32 @sis5595_read(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 64
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @MAX_TIMEOUT, align 4
  %65 = icmp slt i32 %62, %64
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i1 [ false, %57 ], [ %65, %61 ]
  br i1 %67, label %53, label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @MAX_TIMEOUT, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %73, i32 0, i32 0
  %75 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @ETIMEDOUT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %72, %68
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, 16
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %83, i32 0, i32 0
  %85 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* @ENXIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %78
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, 32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %92, %88
  %99 = load i32, i32* @SMB_STS_LO, align 4
  %100 = call i32 @sis5595_read(i32 %99)
  %101 = load i32, i32* @SMB_STS_HI, align 4
  %102 = call i32 @sis5595_read(i32 %101)
  %103 = shl i32 %102, 8
  %104 = add nsw i32 %100, %103
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %98
  %108 = load i32, i32* @SMB_STS_LO, align 4
  %109 = load i32, i32* %4, align 4
  %110 = and i32 %109, 255
  %111 = call i32 @sis5595_write(i32 %108, i32 %110)
  %112 = load i32, i32* @SMB_STS_HI, align 4
  %113 = load i32, i32* %4, align 4
  %114 = ashr i32 %113, 8
  %115 = call i32 @sis5595_write(i32 %112, i32 %114)
  br label %116

116:                                              ; preds = %107, %98
  %117 = load i32, i32* @SMB_STS_LO, align 4
  %118 = call i32 @sis5595_read(i32 %117)
  %119 = load i32, i32* @SMB_STS_HI, align 4
  %120 = call i32 @sis5595_read(i32 %119)
  %121 = shl i32 %120, 8
  %122 = add nsw i32 %118, %121
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %116
  %126 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %126, i32 0, i32 0
  %128 = load i32, i32* %4, align 4
  %129 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %127, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %125, %116
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %35
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @sis5595_read(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @sis5595_write(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
