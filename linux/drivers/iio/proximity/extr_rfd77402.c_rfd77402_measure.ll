; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_rfd77402.c_rfd77402_measure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_rfd77402.c_rfd77402_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfd77402_data = type { i32 }

@RFD77402_CMD_MCPU_ON = common dso_local global i32 0, align 4
@RFD77402_STATUS_MCPU_ON = common dso_local global i32 0, align 4
@RFD77402_CMD_R = common dso_local global i32 0, align 4
@RFD77402_CMD_SINGLE = common dso_local global i32 0, align 4
@RFD77402_CMD_VALID = common dso_local global i32 0, align 4
@RFD77402_ICSR = common dso_local global i32 0, align 4
@RFD77402_ICSR_RESULT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@RFD77402_RESULT_R = common dso_local global i32 0, align 4
@RFD77402_RESULT_ERR_MASK = common dso_local global i32 0, align 4
@RFD77402_RESULT_VALID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RFD77402_RESULT_DIST_MASK = common dso_local global i32 0, align 4
@RFD77402_CMD_MCPU_OFF = common dso_local global i32 0, align 4
@RFD77402_STATUS_MCPU_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfd77402_data*)* @rfd77402_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfd77402_measure(%struct.rfd77402_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rfd77402_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rfd77402_data* %0, %struct.rfd77402_data** %3, align 8
  store i32 10, i32* %5, align 4
  %6 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %7 = load i32, i32* @RFD77402_CMD_MCPU_ON, align 4
  %8 = load i32, i32* @RFD77402_STATUS_MCPU_ON, align 4
  %9 = call i32 @rfd77402_set_state(%struct.rfd77402_data* %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %87

14:                                               ; preds = %1
  %15 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %16 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RFD77402_CMD_R, align 4
  %19 = load i32, i32* @RFD77402_CMD_SINGLE, align 4
  %20 = load i32, i32* @RFD77402_CMD_VALID, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @i2c_smbus_write_byte_data(i32 %17, i32 %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %81

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  %30 = icmp sgt i32 %28, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %33 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RFD77402_ICSR, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %81

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @RFD77402_ICSR_RESULT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %48

46:                                               ; preds = %40
  %47 = call i32 @msleep(i32 20)
  br label %27

48:                                               ; preds = %45, %27
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %81

54:                                               ; preds = %48
  %55 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %56 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RFD77402_RESULT_R, align 4
  %59 = call i32 @i2c_smbus_read_word_data(i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %81

63:                                               ; preds = %54
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @RFD77402_RESULT_ERR_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @RFD77402_RESULT_VALID, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %81

76:                                               ; preds = %68
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @RFD77402_RESULT_DIST_MASK, align 4
  %79 = and i32 %77, %78
  %80 = ashr i32 %79, 2
  store i32 %80, i32* %2, align 4
  br label %87

81:                                               ; preds = %73, %62, %51, %39, %25
  %82 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %83 = load i32, i32* @RFD77402_CMD_MCPU_OFF, align 4
  %84 = load i32, i32* @RFD77402_STATUS_MCPU_OFF, align 4
  %85 = call i32 @rfd77402_set_state(%struct.rfd77402_data* %82, i32 %83, i32 %84)
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %76, %12
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @rfd77402_set_state(%struct.rfd77402_data*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
