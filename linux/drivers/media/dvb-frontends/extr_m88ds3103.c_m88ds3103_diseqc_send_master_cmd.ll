; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_diseqc_send_master_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_diseqc_send_master_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88ds3103_dev* }
%struct.m88ds3103_dev = type { i32, %struct.TYPE_2__*, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.dvb_diseqc_master_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"msg=%*ph\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"diseqc tx took %u ms\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"diseqc tx timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@SEND_MASTER_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @m88ds3103_diseqc_send_master_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88ds3103_diseqc_send_master_cmd(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %6 = alloca %struct.m88ds3103_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %12, align 8
  store %struct.m88ds3103_dev* %13, %struct.m88ds3103_dev** %6, align 8
  %14 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %15 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %14, i32 0, i32 3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %7, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %27 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %157

33:                                               ; preds = %2
  %34 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 6
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %157

46:                                               ; preds = %38
  %47 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %48 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 5
  store i32 %52, i32* %9, align 4
  %53 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %53, i32 162, i32 224, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %157

59:                                               ; preds = %46
  %60 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %61 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @regmap_bulk_write(i32 %62, i32 163, i32 %65, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %157

73:                                               ; preds = %59
  %74 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %75 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = shl i32 %80, 3
  %82 = or i32 %81, 7
  %83 = call i32 @regmap_write(i32 %76, i32 161, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %157

87:                                               ; preds = %73
  %88 = load i64, i64* @jiffies, align 8
  %89 = call i64 @msecs_to_jiffies(i32 120)
  %90 = add i64 %88, %89
  store i64 %90, i64* %10, align 8
  %91 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %5, align 8
  %92 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 13500
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sub i32 %95, 4000
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @usleep_range(i32 %96, i32 %97)
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %117, %87
  %100 = load i64, i64* @jiffies, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @time_after(i64 %100, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br label %107

107:                                              ; preds = %104, %99
  %108 = phi i1 [ false, %99 ], [ %106, %104 ]
  br i1 %108, label %109, label %121

109:                                              ; preds = %107
  %110 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %111 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @regmap_read(i32 %112, i32 161, i32* %9)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %157

117:                                              ; preds = %109
  %118 = load i32, i32* %9, align 4
  %119 = lshr i32 %118, 6
  %120 = and i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %99

121:                                              ; preds = %107
  %122 = load i32, i32* %9, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load i64, i64* @jiffies, align 8
  %128 = call i32 @jiffies_to_msecs(i64 %127)
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @jiffies_to_msecs(i64 %129)
  %131 = sub nsw i32 %130, 120
  %132 = sub nsw i32 %128, %131
  %133 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  br label %144

134:                                              ; preds = %121
  %135 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 0
  %137 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %139 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %138, i32 161, i32 192, i32 64)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %157

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %124
  %145 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %146 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %145, i32 162, i32 192, i32 128)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %157

150:                                              ; preds = %144
  %151 = load i32, i32* %9, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* @ETIMEDOUT, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %8, align 4
  br label %157

156:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %163

157:                                              ; preds = %153, %149, %142, %116, %86, %72, %58, %43, %30
  %158 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 0
  %160 = load i32, i32* %8, align 4
  %161 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %157, %156
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @m88ds3103_update_bits(%struct.m88ds3103_dev*, i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
