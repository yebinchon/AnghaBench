; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sun6i-p2wi.c_p2wi_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sun6i-p2wi.c_p2wi_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.p2wi = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"invalid P2WI address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@P2WI_DADDR0 = common dso_local global i64 0, align 8
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@P2WI_DLEN_READ = common dso_local global i64 0, align 8
@P2WI_DATA0 = common dso_local global i64 0, align 8
@P2WI_DLEN = common dso_local global i64 0, align 8
@P2WI_CTRL = common dso_local global i64 0, align 8
@P2WI_CTRL_START_TRANS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"P2WI bus busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@P2WI_INTS_LOAD_BSY = common dso_local global i32 0, align 4
@P2WI_INTS_TRANS_ERR = common dso_local global i32 0, align 4
@P2WI_INTS_TRANS_OVER = common dso_local global i32 0, align 4
@P2WI_INTE = common dso_local global i64 0, align 8
@P2WI_CTRL_GLOBAL_INT_ENB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"P2WI bus xfer error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i64, i16, i8, i32, i32, %union.i2c_smbus_data*)* @p2wi_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2wi_smbus_xfer(%struct.i2c_adapter* %0, i64 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.p2wi*, align 8
  %17 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i64 %1, i64* %10, align 8
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %19 = call %struct.p2wi* @i2c_get_adapdata(%struct.i2c_adapter* %18)
  store %struct.p2wi* %19, %struct.p2wi** %16, align 8
  %20 = call i64 @P2WI_DLEN_DATA_LENGTH(i32 1)
  store i64 %20, i64* %17, align 8
  %21 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %22 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %7
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %28 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %162

37:                                               ; preds = %25, %7
  %38 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %39 = icmp ne %union.i2c_smbus_data* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %162

43:                                               ; preds = %37
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %46 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @P2WI_DADDR0, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load i8, i8* %12, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* @I2C_SMBUS_READ, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load i64, i64* @P2WI_DLEN_READ, align 8
  %58 = load i64, i64* %17, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %17, align 8
  br label %70

60:                                               ; preds = %43
  %61 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %62 = bitcast %union.i2c_smbus_data* %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %65 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @P2WI_DATA0, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  br label %70

70:                                               ; preds = %60, %56
  %71 = load i64, i64* %17, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %74 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @P2WI_DLEN, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %80 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @P2WI_CTRL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readl(i64 %83)
  %85 = load i32, i32* @P2WI_CTRL_START_TRANS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %70
  %89 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %90 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %89, i32 0, i32 0
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %162

94:                                               ; preds = %70
  %95 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %96 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %95, i32 0, i32 3
  %97 = call i32 @reinit_completion(i32* %96)
  %98 = load i32, i32* @P2WI_INTS_LOAD_BSY, align 4
  %99 = load i32, i32* @P2WI_INTS_TRANS_ERR, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @P2WI_INTS_TRANS_OVER, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %104 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @P2WI_INTE, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  %109 = load i32, i32* @P2WI_CTRL_START_TRANS, align 4
  %110 = load i32, i32* @P2WI_CTRL_GLOBAL_INT_ENB, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %113 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @P2WI_CTRL, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  %118 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %119 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %118, i32 0, i32 3
  %120 = call i32 @wait_for_completion(i32* %119)
  %121 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %122 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @P2WI_INTS_LOAD_BSY, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %94
  %128 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %129 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %128, i32 0, i32 0
  %130 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* @EBUSY, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %8, align 4
  br label %162

133:                                              ; preds = %94
  %134 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %135 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @P2WI_INTS_TRANS_ERR, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %142 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %141, i32 0, i32 0
  %143 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i32, i32* @ENXIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %8, align 4
  br label %162

146:                                              ; preds = %133
  %147 = load i8, i8* %12, align 1
  %148 = sext i8 %147 to i32
  %149 = load i8, i8* @I2C_SMBUS_READ, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %146
  %153 = load %struct.p2wi*, %struct.p2wi** %16, align 8
  %154 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @P2WI_DATA0, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @readl(i64 %157)
  %159 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %160 = bitcast %union.i2c_smbus_data* %159 to i32*
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %152, %146
  store i32 0, i32* %8, align 4
  br label %162

162:                                              ; preds = %161, %140, %127, %88, %40, %31
  %163 = load i32, i32* %8, align 4
  ret i32 %163
}

declare dso_local %struct.p2wi* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @P2WI_DLEN_DATA_LENGTH(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
