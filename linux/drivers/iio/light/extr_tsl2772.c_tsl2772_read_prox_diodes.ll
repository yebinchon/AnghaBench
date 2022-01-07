; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_read_prox_diodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_read_prox_diodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsl2772_chip = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@TSL2772_MAX_PROX_LEDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"amstaos,proximity-diodes\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Invalid value for amstaos,proximity-diodes: %d.\0A\00", align 1
@TSL2772_DIODE0 = common dso_local global i32 0, align 4
@TSL2772_DIODE1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Invalid value %d in amstaos,proximity-diodes.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsl2772_chip*)* @tsl2772_read_prox_diodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2772_read_prox_diodes(%struct.tsl2772_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsl2772_chip*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.tsl2772_chip* %0, %struct.tsl2772_chip** %3, align 8
  %12 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %13 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %4, align 8
  %18 = load i32, i32* @TSL2772_MAX_PROX_LEDS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32 @of_property_count_u32_elems(%struct.device_node* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %92

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TSL2772_MAX_PROX_LEDS, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @TSL2772_MAX_PROX_LEDS, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load %struct.device_node*, %struct.device_node** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @of_property_read_u32_array(%struct.device_node* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %21, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %43 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_err(%struct.TYPE_4__* %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %92

49:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %88, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %21, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @TSL2772_DIODE0, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %87

64:                                               ; preds = %54
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %21, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @TSL2772_DIODE1, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %86

74:                                               ; preds = %64
  %75 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %3, align 8
  %76 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %21, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(%struct.TYPE_4__* %78, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %92

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %60
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %50

91:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %92

92:                                               ; preds = %91, %74, %41, %26
  %93 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #2

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
