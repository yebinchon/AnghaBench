; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5502_init_dev_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5502_init_dev_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm5502_muic_info = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SM5502_REG_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to read DEVICE_ID register: %d\0A\00", align 1
@SM5502_REG_DEVICE_ID_VENDOR_MASK = common dso_local global i32 0, align 4
@SM5502_REG_DEVICE_ID_VENDOR_SHIFT = common dso_local global i32 0, align 4
@SM5502_REG_DEVICE_ID_VERSION_MASK = common dso_local global i32 0, align 4
@SM5502_REG_DEVICE_ID_VERSION_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Device type: version: 0x%x, vendor: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sm5502_muic_info*)* @sm5502_init_dev_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm5502_init_dev_type(%struct.sm5502_muic_info* %0) #0 {
  %2 = alloca %struct.sm5502_muic_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sm5502_muic_info* %0, %struct.sm5502_muic_info** %2, align 8
  %9 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %2, align 8
  %10 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SM5502_REG_DEVICE_ID, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %3)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %2, align 8
  %18 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %93

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SM5502_REG_DEVICE_ID_VENDOR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @SM5502_REG_DEVICE_ID_VENDOR_SHIFT, align 4
  %27 = lshr i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SM5502_REG_DEVICE_ID_VERSION_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @SM5502_REG_DEVICE_ID_VERSION_SHIFT, align 4
  %32 = lshr i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %2, align 8
  %34 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dev_info(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %90, %22
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %2, align 8
  %42 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %93

45:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  %46 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %2, align 8
  %47 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %45
  %56 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %2, align 8
  %57 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %76

67:                                               ; preds = %45
  %68 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %2, align 8
  %69 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %67, %55
  %77 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %2, align 8
  %78 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %2, align 8
  %81 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @regmap_write(i32 %79, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %76
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %39

93:                                               ; preds = %16, %39
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
