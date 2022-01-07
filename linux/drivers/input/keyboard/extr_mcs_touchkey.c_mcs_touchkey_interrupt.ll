; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mcs_touchkey.c_mcs_touchkey_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mcs_touchkey.c_mcs_touchkey_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_touchkey_data = type { i32, i32, i32*, %struct.input_dev*, %struct.i2c_client*, %struct.mcs_touchkey_chip }
%struct.input_dev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mcs_touchkey_chip = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"i2c read error [%d]\0A\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"key %d %d %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcs_touchkey_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_touchkey_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mcs_touchkey_data*, align 8
  %6 = alloca %struct.mcs_touchkey_chip*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.mcs_touchkey_data*
  store %struct.mcs_touchkey_data* %13, %struct.mcs_touchkey_data** %5, align 8
  %14 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %5, align 8
  %15 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %14, i32 0, i32 5
  store %struct.mcs_touchkey_chip* %15, %struct.mcs_touchkey_chip** %6, align 8
  %16 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %5, align 8
  %17 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %16, i32 0, i32 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %7, align 8
  %19 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %5, align 8
  %20 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %19, i32 0, i32 3
  %21 = load %struct.input_dev*, %struct.input_dev** %20, align 8
  store %struct.input_dev* %21, %struct.input_dev** %8, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %23 = load %struct.mcs_touchkey_chip*, %struct.mcs_touchkey_chip** %6, align 8
  %24 = getelementptr inbounds %struct.mcs_touchkey_chip, %struct.mcs_touchkey_chip* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %22, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %118

34:                                               ; preds = %2
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.mcs_touchkey_chip*, %struct.mcs_touchkey_chip** %6, align 8
  %37 = getelementptr inbounds %struct.mcs_touchkey_chip, %struct.mcs_touchkey_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 1, %38
  %40 = and i32 %35, %39
  %41 = load %struct.mcs_touchkey_chip*, %struct.mcs_touchkey_chip** %6, align 8
  %42 = getelementptr inbounds %struct.mcs_touchkey_chip, %struct.mcs_touchkey_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %40, %43
  store i32 %44, i32* %10, align 4
  %45 = load %struct.mcs_touchkey_chip*, %struct.mcs_touchkey_chip** %6, align 8
  %46 = getelementptr inbounds %struct.mcs_touchkey_chip, %struct.mcs_touchkey_chip* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %34
  %50 = load %struct.mcs_touchkey_chip*, %struct.mcs_touchkey_chip** %6, align 8
  %51 = getelementptr inbounds %struct.mcs_touchkey_chip, %struct.mcs_touchkey_chip* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = xor i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %49, %34
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.mcs_touchkey_chip*, %struct.mcs_touchkey_chip** %6, align 8
  %61 = getelementptr inbounds %struct.mcs_touchkey_chip, %struct.mcs_touchkey_chip* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 8, %62
  %64 = ashr i32 255, %63
  %65 = and i32 %59, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %118

69:                                               ; preds = %58
  %70 = load %struct.mcs_touchkey_chip*, %struct.mcs_touchkey_chip** %6, align 8
  %71 = getelementptr inbounds %struct.mcs_touchkey_chip, %struct.mcs_touchkey_chip* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = sub nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %5, align 8
  %78 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %5, align 8
  %85 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %5, align 8
  %88 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %69, %55
  %90 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %91 = load i32, i32* @EV_MSC, align 4
  %92 = load i32, i32* @MSC_SCAN, align 4
  %93 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %5, align 8
  %94 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @input_event(%struct.input_dev* %90, i32 %91, i32 %92, i32 %95)
  %97 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %98 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %5, align 8
  %99 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @input_report_key(%struct.input_dev* %97, i32 %100, i32 %101)
  %103 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %104 = call i32 @input_sync(%struct.input_dev* %103)
  %105 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %5, align 8
  %108 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %5, align 8
  %111 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %117 = call i32 @dev_dbg(i32* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %112, i8* %116)
  br label %118

118:                                              ; preds = %89, %68, %29
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %119
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
