; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_check_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_check_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Transaction timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Terminating the current operation\0A\00", align 1
@SMBHSTCNT_KILL = common dso_local global i32 0, align 4
@SMBHSTSTS_HOST_BUSY = common dso_local global i32 0, align 4
@SMBHSTSTS_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed terminating the transaction\0A\00", align 1
@STATUS_FLAGS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Transaction failed\0A\00", align 1
@SMBHSTSTS_DEV_ERR = common dso_local global i32 0, align 4
@FEATURE_SMBUS_PEC = common dso_local global i32 0, align 4
@SMBAUXSTS_CRCE = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"PEC error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"No response\0A\00", align 1
@SMBHSTSTS_BUS_ERR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Lost arbitration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*, i32)* @i801_check_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_check_post(%struct.i801_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i801_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i801_priv* %0, %struct.i801_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %2
  %13 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %14 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %19 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %24 = call i32 @SMBHSTCNT(%struct.i801_priv* %23)
  %25 = call i32 @inb_p(i32 %24)
  %26 = load i32, i32* @SMBHSTCNT_KILL, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %29 = call i32 @SMBHSTCNT(%struct.i801_priv* %28)
  %30 = call i32 @outb_p(i32 %27, i32 %29)
  %31 = call i32 @usleep_range(i32 1000, i32 2000)
  %32 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %33 = call i32 @SMBHSTCNT(%struct.i801_priv* %32)
  %34 = call i32 @inb_p(i32 %33)
  %35 = load i32, i32* @SMBHSTCNT_KILL, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %39 = call i32 @SMBHSTCNT(%struct.i801_priv* %38)
  %40 = call i32 @outb_p(i32 %37, i32 %39)
  %41 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %42 = call i32 @SMBHSTSTS(%struct.i801_priv* %41)
  %43 = call i32 @inb_p(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SMBHSTSTS_HOST_BUSY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %12
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SMBHSTSTS_FAILED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48, %12
  %54 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %55 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* @STATUS_FLAGS, align 4
  %61 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %62 = call i32 @SMBHSTSTS(%struct.i801_priv* %61)
  %63 = call i32 @outb_p(i32 %60, i32 %62)
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %138

66:                                               ; preds = %2
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @SMBHSTSTS_FAILED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  %74 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %75 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %71, %66
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SMBHSTSTS_DEV_ERR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %79
  %85 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %86 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @FEATURE_SMBUS_PEC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %84
  %92 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %93 = call i32 @SMBAUXSTS(%struct.i801_priv* %92)
  %94 = call i32 @inb_p(i32 %93)
  %95 = load i32, i32* @SMBAUXSTS_CRCE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %91
  %99 = load i32, i32* @SMBAUXSTS_CRCE, align 4
  %100 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %101 = call i32 @SMBAUXSTS(%struct.i801_priv* %100)
  %102 = call i32 @outb_p(i32 %99, i32 %101)
  %103 = load i32, i32* @EBADMSG, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  %105 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %106 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = call i32 @dev_dbg(i32* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %118

110:                                              ; preds = %91, %84
  %111 = load i32, i32* @ENXIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  %113 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %114 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i32 @dev_dbg(i32* %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %118

118:                                              ; preds = %110, %98
  br label %119

119:                                              ; preds = %118, %79
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @SMBHSTSTS_BUS_ERR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load i32, i32* @EAGAIN, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  %127 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %128 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 @dev_dbg(i32* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %132

132:                                              ; preds = %124, %119
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.i801_priv*, %struct.i801_priv** %4, align 8
  %135 = call i32 @SMBHSTSTS(%struct.i801_priv* %134)
  %136 = call i32 @outb_p(i32 %133, i32 %135)
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %132, %59
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBHSTCNT(%struct.i801_priv*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @SMBHSTSTS(%struct.i801_priv*) #1

declare dso_local i32 @SMBAUXSTS(%struct.i801_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
