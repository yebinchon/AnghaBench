; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_do_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_do_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_i2c_dev = type { i32 }
%struct.i2c_msg = type { i32, i32 }

@I2C_M_TEN = common dso_local global i32 0, align 4
@chip_address = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@COND_RESTART = common dso_local global i32 0, align 4
@COND_NOSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmstb_i2c_dev*, %struct.i2c_msg*)* @brcmstb_i2c_do_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_i2c_do_addr(%struct.brcmstb_i2c_dev* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmstb_i2c_dev*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i8, align 1
  store %struct.brcmstb_i2c_dev* %0, %struct.brcmstb_i2c_dev** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @I2C_M_TEN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %2
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 768
  %18 = ashr i32 %17, 7
  %19 = or i32 240, %18
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %6, align 1
  %21 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %22 = load i8, i8* %6, align 1
  %23 = load i32, i32* @chip_address, align 4
  %24 = call i32 @bsc_writel(%struct.brcmstb_i2c_dev* %21, i8 zeroext %22, i32 %23)
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %6, align 1
  %30 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %31 = call i64 @brcmstb_i2c_write_data_byte(%struct.brcmstb_i2c_dev* %30, i8* %6, i32 0)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %13
  %34 = load i32, i32* @EREMOTEIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %73

36:                                               ; preds = %13
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I2C_M_RD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %36
  %44 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %45 = load i32, i32* @COND_RESTART, align 4
  %46 = load i32, i32* @COND_NOSTOP, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @brcmstb_set_i2c_start_stop(%struct.brcmstb_i2c_dev* %44, i32 %47)
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 768
  %53 = ashr i32 %52, 7
  %54 = or i32 240, %53
  %55 = or i32 %54, 1
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %6, align 1
  %57 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %58 = call i64 @brcmstb_i2c_write_data_byte(%struct.brcmstb_i2c_dev* %57, i8* %6, i32 0)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %43
  %61 = load i32, i32* @EREMOTEIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %73

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %36
  br label %72

65:                                               ; preds = %2
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %67 = call zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %66)
  store i8 %67, i8* %6, align 1
  %68 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %69 = load i8, i8* %6, align 1
  %70 = load i32, i32* @chip_address, align 4
  %71 = call i32 @bsc_writel(%struct.brcmstb_i2c_dev* %68, i8 zeroext %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %64
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %60, %33
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @bsc_writel(%struct.brcmstb_i2c_dev*, i8 zeroext, i32) #1

declare dso_local i64 @brcmstb_i2c_write_data_byte(%struct.brcmstb_i2c_dev*, i8*, i32) #1

declare dso_local i32 @brcmstb_set_i2c_start_stop(%struct.brcmstb_i2c_dev*, i32) #1

declare dso_local zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
