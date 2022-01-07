; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_master_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_master_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synquacer_i2c = type { i32, i64, i32 }
%struct.i2c_msg = type { i32 }

@SYNQUACER_I2C_REG_DAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"slave:0x%02x\0A\00", align 1
@SYNQUACER_I2C_REG_BSR = common dso_local global i64 0, align 8
@SYNQUACER_I2C_REG_BCR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"bsr:0x%02x, bcr:0x%02x\0A\00", align 1
@SYNQUACER_I2C_BSR_BB = common dso_local global i8 0, align 1
@SYNQUACER_I2C_BCR_MSS = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"bus is busy\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Continuous Start\00", align 1
@SYNQUACER_I2C_BCR_SCC = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"not in master mode\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Start Condition\00", align 1
@SYNQUACER_I2C_BCR_INTE = common dso_local global i8 0, align 1
@SYNQUACER_I2C_BCR_BEIE = common dso_local global i8 0, align 1
@SYNQUACER_I2C_BSR_AL = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"arbitration lost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synquacer_i2c*, %struct.i2c_msg*)* @synquacer_i2c_master_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synquacer_i2c_master_start(%struct.synquacer_i2c* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.synquacer_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.synquacer_i2c* %0, %struct.synquacer_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %9 = call zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %8)
  %10 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %11 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SYNQUACER_I2C_REG_DAR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writeb(i8 zeroext %9, i64 %14)
  %16 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %17 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %24 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SYNQUACER_I2C_REG_BSR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call zeroext i8 @readb(i64 %27)
  store i8 %28, i8* %6, align 1
  %29 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %30 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SYNQUACER_I2C_REG_BCR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call zeroext i8 @readb(i64 %33)
  store i8 %34, i8* %7, align 1
  %35 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %36 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = call i32 (i32, i8*, ...) @dev_dbg(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %41)
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @SYNQUACER_I2C_BSR_BB, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %2
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @SYNQUACER_I2C_BCR_MSS, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %58 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %170

63:                                               ; preds = %49, %2
  %64 = load i8, i8* %6, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @SYNQUACER_I2C_BSR_BB, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %72 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @dev_dbg(i32 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i8, i8* %7, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @SYNQUACER_I2C_BCR_SCC, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %76, %78
  %80 = trunc i32 %79 to i8
  %81 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %82 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SYNQUACER_I2C_REG_BCR, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writeb(i8 zeroext %80, i64 %85)
  br label %124

87:                                               ; preds = %63
  %88 = load i8, i8* %7, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @SYNQUACER_I2C_BCR_MSS, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %96 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %170

101:                                              ; preds = %87
  %102 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %103 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, ...) @dev_dbg(i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i8, i8* %7, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @SYNQUACER_I2C_BCR_MSS, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %107, %109
  %111 = load i8, i8* @SYNQUACER_I2C_BCR_INTE, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %110, %112
  %114 = load i8, i8* @SYNQUACER_I2C_BCR_BEIE, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %113, %115
  %117 = trunc i32 %116 to i8
  %118 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %119 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SYNQUACER_I2C_REG_BCR, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writeb(i8 zeroext %117, i64 %122)
  br label %124

124:                                              ; preds = %101, %70
  %125 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %126 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @WAIT_PCLK(i32 10, i32 %127)
  %129 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %130 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SYNQUACER_I2C_REG_BSR, align 8
  %133 = add nsw i64 %131, %132
  %134 = call zeroext i8 @readb(i64 %133)
  store i8 %134, i8* %6, align 1
  %135 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %136 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SYNQUACER_I2C_REG_BCR, align 8
  %139 = add nsw i64 %137, %138
  %140 = call zeroext i8 @readb(i64 %139)
  store i8 %140, i8* %7, align 1
  %141 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %142 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i8, i8* %6, align 1
  %145 = zext i8 %144 to i32
  %146 = load i8, i8* %7, align 1
  %147 = zext i8 %146 to i32
  %148 = call i32 (i32, i8*, ...) @dev_dbg(i32 %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %147)
  %149 = load i8, i8* %6, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* @SYNQUACER_I2C_BSR_AL, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %124
  %156 = load i8, i8* %7, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* @SYNQUACER_I2C_BCR_MSS, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %157, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %155, %124
  %163 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %4, align 8
  %164 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i32, i8*, ...) @dev_dbg(i32 %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %167 = load i32, i32* @EAGAIN, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %170

169:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %162, %94, %56
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @writeb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @WAIT_PCLK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
