; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-puv3.c_puv3_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-puv3.c_puv3_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i8* }

@I2C_ENABLE_DISABLE = common dso_local global i32 0, align 4
@I2C_ENABLE = common dso_local global i32 0, align 4
@I2C_CON_MASTER = common dso_local global i32 0, align 4
@I2C_CON_SPEED_STD = common dso_local global i32 0, align 4
@I2C_CON_SLAVEDISABLE = common dso_local global i32 0, align 4
@I2C_CON = common dso_local global i32 0, align 4
@I2C_TAR = common dso_local global i32 0, align 4
@I2C_ENABLE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"puv3_i2c_xfer: processing %d messages:\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c" #%d: %sing %d byte%s %s 0x%02x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"writ\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"transfer complete\0A\00", align 1
@I2C_TAR_PWIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @puv3_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @I2C_ENABLE_DISABLE, align 4
  %12 = load i32, i32* @I2C_ENABLE, align 4
  %13 = call i32 @writel(i32 %11, i32 %12)
  %14 = load i32, i32* @I2C_CON_MASTER, align 4
  %15 = load i32, i32* @I2C_CON_SPEED_STD, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @I2C_CON_SLAVEDISABLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @I2C_CON, align 4
  %20 = call i32 @writel(i32 %18, i32 %19)
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I2C_TAR, align 4
  %25 = call i32 @writel(i32 %23, i32 %24)
  %26 = load i32, i32* @I2C_ENABLE_ENABLE, align 4
  %27 = load i32, i32* @I2C_ENABLE, align 4
  %28 = call i32 @writel(i32 %26, i32 %27)
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %116, %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %119

37:                                               ; preds = %33
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @I2C_M_RD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 1
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @I2C_M_RD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %40, i8* %48, i32 %51, i8* %57, i8* %65, i32 %68)
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %37
  %75 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %110

79:                                               ; preds = %74
  %80 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @I2C_M_RD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %88 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @xfer_read(%struct.i2c_adapter* %87, i8* %90, i32 %93)
  store i32 %94, i32* %9, align 4
  br label %104

95:                                               ; preds = %79
  %96 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %97 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @xfer_write(%struct.i2c_adapter* %96, i8* %99, i32 %102)
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %95, %86
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  br label %147

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %74, %37
  %111 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %112 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %111, i32 0, i32 0
  %113 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i32 1
  store %struct.i2c_msg* %115, %struct.i2c_msg** %6, align 8
  br label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %33

119:                                              ; preds = %33
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @I2C_TAR_PWIC, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %145

125:                                              ; preds = %119
  %126 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  store i8 %130, i8* %10, align 1
  %131 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  store i8 %135, i8* %139, align 1
  %140 = load i8, i8* %10, align 1
  %141 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8 %140, i8* %144, align 1
  br label %145

145:                                              ; preds = %125, %119
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %107
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @xfer_read(%struct.i2c_adapter*, i8*, i32) #1

declare dso_local i32 @xfer_write(%struct.i2c_adapter*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
