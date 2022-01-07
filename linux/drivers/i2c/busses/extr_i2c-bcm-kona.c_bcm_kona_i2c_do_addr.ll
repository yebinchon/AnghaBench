; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_do_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_do_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_i2c_dev = type { i32 }
%struct.i2c_msg = type { i32, i32 }

@I2C_M_TEN = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@BCM_CMD_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_kona_i2c_dev*, %struct.i2c_msg*)* @bcm_kona_i2c_do_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_i2c_do_addr(%struct.bcm_kona_i2c_dev* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_kona_i2c_dev*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i8, align 1
  store %struct.bcm_kona_i2c_dev* %0, %struct.bcm_kona_i2c_dev** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @I2C_M_TEN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %2
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 768
  %18 = ashr i32 %17, 7
  %19 = or i32 240, %18
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %6, align 1
  %21 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %22 = load i8, i8* %6, align 1
  %23 = call i64 @bcm_kona_i2c_write_byte(%struct.bcm_kona_i2c_dev* %21, i8 zeroext %22, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i32, i32* @EREMOTEIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %86

28:                                               ; preds = %13
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %6, align 1
  %34 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %35 = load i8, i8* %6, align 1
  %36 = call i64 @bcm_kona_i2c_write_byte(%struct.bcm_kona_i2c_dev* %34, i8 zeroext %35, i32 0)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EREMOTEIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %86

41:                                               ; preds = %28
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @I2C_M_RD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %50 = load i32, i32* @BCM_CMD_RESTART, align 4
  %51 = call i64 @bcm_kona_send_i2c_cmd(%struct.bcm_kona_i2c_dev* %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EREMOTEIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %86

56:                                               ; preds = %48
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 768
  %61 = ashr i32 %60, 7
  %62 = or i32 240, %61
  %63 = or i32 %62, 1
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %6, align 1
  %65 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %66 = load i8, i8* %6, align 1
  %67 = call i64 @bcm_kona_i2c_write_byte(%struct.bcm_kona_i2c_dev* %65, i8 zeroext %66, i32 0)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load i32, i32* @EREMOTEIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %86

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %41
  br label %85

74:                                               ; preds = %2
  %75 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %76 = call zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %75)
  store i8 %76, i8* %6, align 1
  %77 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %4, align 8
  %78 = load i8, i8* %6, align 1
  %79 = call i64 @bcm_kona_i2c_write_byte(%struct.bcm_kona_i2c_dev* %77, i8 zeroext %78, i32 0)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* @EREMOTEIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %86

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %73
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %81, %69, %53, %38, %25
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @bcm_kona_i2c_write_byte(%struct.bcm_kona_i2c_dev*, i8 zeroext, i32) #1

declare dso_local i64 @bcm_kona_send_i2c_cmd(%struct.bcm_kona_i2c_dev*, i32) #1

declare dso_local zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
