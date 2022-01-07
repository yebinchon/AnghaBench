; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_setup_buttons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_setup_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i32, %struct.TYPE_4__*, i32, %struct.ims_pcu_buttons }
%struct.TYPE_4__ = type { i32 }
%struct.ims_pcu_buttons = type { %struct.input_dev*, i32*, i32, i32 }
%struct.input_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [42 x i8] c"Not enough memory for input input device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"IMS PCU#%d Button Interface\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@IMS_PCU_KEYMAP_LEN = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to register buttons input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*, i16*, i64)* @ims_pcu_setup_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_setup_buttons(%struct.ims_pcu* %0, i16* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ims_pcu*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ims_pcu_buttons*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %5, align 8
  store i16* %1, i16** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %13 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %12, i32 0, i32 4
  store %struct.ims_pcu_buttons* %13, %struct.ims_pcu_buttons** %8, align 8
  %14 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %14, %struct.input_dev** %9, align 8
  %15 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %16 = icmp ne %struct.input_dev* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %19 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %134

24:                                               ; preds = %3
  %25 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %8, align 8
  %26 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %29 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snprintf(i32 %27, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %33 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %8, align 8
  %36 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usb_make_path(i32 %34, i32 %37, i32 4)
  %39 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %8, align 8
  %40 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strlcat(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %43 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %8, align 8
  %44 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i16*, i16** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = mul i64 2, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memcpy(i32* %45, i16* %46, i32 %49)
  %51 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %8, align 8
  %52 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %8, align 8
  %57 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %62 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 6
  %66 = call i32 @usb_to_input_id(i32 %63, i32* %65)
  %67 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %68 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %72 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32* %70, i32** %73, align 8
  %74 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %8, align 8
  %75 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 4
  store i32* %76, i32** %78, align 8
  %79 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %8, align 8
  %80 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @ARRAY_SIZE(i32* %81)
  %83 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 0
  store i32 4, i32* %86, align 8
  %87 = load i32, i32* @EV_KEY, align 4
  %88 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @__set_bit(i32 %87, i32 %90)
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %108, %24
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @IMS_PCU_KEYMAP_LEN, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %8, align 8
  %98 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @__set_bit(i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %92

111:                                              ; preds = %92
  %112 = load i32, i32* @KEY_RESERVED, align 4
  %113 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @__clear_bit(i32 %112, i32 %115)
  %117 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %118 = call i32 @input_register_device(%struct.input_dev* %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %111
  %122 = load %struct.ims_pcu*, %struct.ims_pcu** %5, align 8
  %123 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %128 = call i32 @input_free_device(%struct.input_dev* %127)
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %134

130:                                              ; preds = %111
  %131 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %132 = load %struct.ims_pcu_buttons*, %struct.ims_pcu_buttons** %8, align 8
  %133 = getelementptr inbounds %struct.ims_pcu_buttons, %struct.ims_pcu_buttons* %132, i32 0, i32 0
  store %struct.input_dev* %131, %struct.input_dev** %133, align 8
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %130, %121, %17
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i16*, i32) #1

declare dso_local i32 @usb_to_input_id(i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
