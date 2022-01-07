; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_register_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_register_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_keyb = type { %struct.input_dev*, i32, i32, i32, i32, i8*, i8*, %struct.device*, %struct.cros_ec_device* }
%struct.input_dev = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.device = type { i32 }
%struct.cros_ec_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@CROS_EC_DEV_NAME = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@BUS_VIRTUAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"google,needs-ghost-filter\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot build key matrix\0A\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_keyb*)* @cros_ec_keyb_register_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_keyb_register_matrix(%struct.cros_ec_keyb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_keyb*, align 8
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.cros_ec_keyb* %0, %struct.cros_ec_keyb** %3, align 8
  %9 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %10 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %9, i32 0, i32 8
  %11 = load %struct.cros_ec_device*, %struct.cros_ec_device** %10, align 8
  store %struct.cros_ec_device* %11, %struct.cros_ec_device** %4, align 8
  %12 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %13 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %12, i32 0, i32 7
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %17 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %16, i32 0, i32 3
  %18 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %19 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %18, i32 0, i32 1
  %20 = call i32 @matrix_keypad_parse_properties(%struct.device* %15, i32* %17, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %153

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %28 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @devm_kzalloc(%struct.device* %26, i32 %29, i32 %30)
  %32 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %33 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %35 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %34, i32 0, i32 6
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %153

41:                                               ; preds = %25
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %44 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @devm_kzalloc(%struct.device* %42, i32 %45, i32 %46)
  %48 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %49 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %51 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %153

57:                                               ; preds = %41
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %61 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @devm_kasprintf(%struct.device* %58, i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %153

69:                                               ; preds = %57
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %70)
  store %struct.input_dev* %71, %struct.input_dev** %6, align 8
  %72 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %73 = icmp ne %struct.input_dev* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %153

77:                                               ; preds = %69
  %78 = load i32, i32* @CROS_EC_DEV_NAME, align 4
  %79 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %83 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @EV_REP, align 4
  %85 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @__set_bit(i32 %84, i32 %87)
  %89 = load i32, i32* @BUS_VIRTUAL, align 4
  %90 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %91 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %94 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %101 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store %struct.device* %99, %struct.device** %102, align 8
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = getelementptr inbounds %struct.device, %struct.device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @of_property_read_bool(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %108 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %110 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %113 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %116 = call i32 @matrix_keypad_build_keymap(i32* null, i32* null, i32 %111, i32 %114, i32* null, %struct.input_dev* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %77
  %120 = load %struct.device*, %struct.device** %5, align 8
  %121 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %153

123:                                              ; preds = %77
  %124 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %125 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @get_count_order(i32 %126)
  %128 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %129 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %131 = load i32, i32* @EV_MSC, align 4
  %132 = load i32, i32* @MSC_SCAN, align 4
  %133 = call i32 @input_set_capability(%struct.input_dev* %130, i32 %131, i32 %132)
  %134 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %135 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %136 = call i32 @input_set_drvdata(%struct.input_dev* %134, %struct.cros_ec_keyb* %135)
  %137 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %138 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %139 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %138, i32 0, i32 0
  store %struct.input_dev* %137, %struct.input_dev** %139, align 8
  %140 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %141 = call i32 @cros_ec_keyb_compute_valid_keys(%struct.cros_ec_keyb* %140)
  %142 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %3, align 8
  %143 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %142, i32 0, i32 0
  %144 = load %struct.input_dev*, %struct.input_dev** %143, align 8
  %145 = call i32 @input_register_device(%struct.input_dev* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %123
  %149 = load %struct.device*, %struct.device** %5, align 8
  %150 = call i32 @dev_err(%struct.device* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %2, align 4
  br label %153

152:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %148, %119, %74, %66, %54, %38, %23
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @matrix_keypad_parse_properties(%struct.device*, i32*, i32*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32*, i32*, i32, i32, i32*, %struct.input_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.cros_ec_keyb*) #1

declare dso_local i32 @cros_ec_keyb_compute_valid_keys(%struct.cros_ec_keyb*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
