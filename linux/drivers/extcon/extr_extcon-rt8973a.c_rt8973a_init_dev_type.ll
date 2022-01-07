; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-rt8973a.c_rt8973a_init_dev_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-rt8973a.c_rt8973a_init_dev_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt8973a_muic_info = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@RT8973A_REG_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to read DEVICE_ID register: %d\0A\00", align 1
@RT8973A_REG_DEVICE_ID_VENDOR_MASK = common dso_local global i32 0, align 4
@RT8973A_REG_DEVICE_ID_VENDOR_SHIFT = common dso_local global i32 0, align 4
@RT8973A_REG_DEVICE_ID_VERSION_MASK = common dso_local global i32 0, align 4
@RT8973A_REG_DEVICE_ID_VERSION_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Device type: version: 0x%x, vendor: 0x%x\0A\00", align 1
@RT8973A_REG_CONTROL1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to read CONTROL1 register: %d\0A\00", align 1
@RT8973A_REG_CONTROL1_AUTO_CONFIG_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Enable Auto-configuration for internal path\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt8973a_muic_info*)* @rt8973a_init_dev_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt8973a_init_dev_type(%struct.rt8973a_muic_info* %0) #0 {
  %2 = alloca %struct.rt8973a_muic_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt8973a_muic_info* %0, %struct.rt8973a_muic_info** %2, align 8
  %11 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %12 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RT8973A_REG_DEVICE_ID, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %3)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %20 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %130

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @RT8973A_REG_DEVICE_ID_VENDOR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @RT8973A_REG_DEVICE_ID_VENDOR_SHIFT, align 4
  %29 = lshr i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @RT8973A_REG_DEVICE_ID_VERSION_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @RT8973A_REG_DEVICE_ID_VERSION_SHIFT, align 4
  %34 = lshr i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %36 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i32, i8*, ...) @dev_info(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %100, %24
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %44 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %103

47:                                               ; preds = %41
  %48 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %49 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %57 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %64 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %65 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %47
  %74 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %75 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = xor i32 %81, -1
  store i32 %82, i32* %10, align 4
  br label %92

83:                                               ; preds = %47
  %84 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %85 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %83, %73
  %93 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %94 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %41

103:                                              ; preds = %41
  %104 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %105 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RT8973A_REG_CONTROL1, align 4
  %108 = call i32 @regmap_read(i32 %106, i32 %107, i32* %3)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %113 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  br label %130

117:                                              ; preds = %103
  %118 = load i32, i32* @RT8973A_REG_CONTROL1_AUTO_CONFIG_MASK, align 4
  %119 = load i32, i32* %3, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* %3, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %125 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %2, align 8
  %127 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @dev_info(i32 %128, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %130

130:                                              ; preds = %18, %111, %123, %117
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
