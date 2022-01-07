; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-appleir.c_appleir_input_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-appleir.c_appleir_input_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.input_dev* }
%struct.input_dev = type { i32, i32, i32*, i32, i32* }
%struct.appleir = type { i32*, %struct.input_dev* }

@EV_KEY = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@appleir_key_table = common dso_local global i32* null, align 8
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*)* @appleir_input_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @appleir_input_configured(%struct.hid_device* %0, %struct.hid_input* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_input*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.appleir*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_input* %1, %struct.hid_input** %4, align 8
  %8 = load %struct.hid_input*, %struct.hid_input** %4, align 8
  %9 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %8, i32 0, i32 0
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %5, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %12 = call %struct.appleir* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.appleir* %12, %struct.appleir** %6, align 8
  %13 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %14 = load %struct.appleir*, %struct.appleir** %6, align 8
  %15 = getelementptr inbounds %struct.appleir, %struct.appleir* %14, i32 0, i32 1
  store %struct.input_dev* %13, %struct.input_dev** %15, align 8
  %16 = load %struct.appleir*, %struct.appleir** %6, align 8
  %17 = getelementptr inbounds %struct.appleir, %struct.appleir* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  store i32 2, i32* %22, align 8
  %23 = load %struct.appleir*, %struct.appleir** %6, align 8
  %24 = getelementptr inbounds %struct.appleir, %struct.appleir* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @EV_KEY, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @EV_REP, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = or i32 %30, %32
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.appleir*, %struct.appleir** %6, align 8
  %39 = getelementptr inbounds %struct.appleir, %struct.appleir* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** @appleir_key_table, align 8
  %42 = call i32 @memcpy(i32* %40, i32* %41, i32 8)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %60, %2
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** @appleir_key_table, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.appleir*, %struct.appleir** %6, align 8
  %50 = getelementptr inbounds %struct.appleir, %struct.appleir* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @set_bit(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load i32, i32* @KEY_RESERVED, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @clear_bit(i32 %64, i32 %67)
  ret i32 0
}

declare dso_local %struct.appleir* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
