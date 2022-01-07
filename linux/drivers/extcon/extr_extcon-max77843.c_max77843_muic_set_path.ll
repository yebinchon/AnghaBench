; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_set_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77843_muic_info = type { i32, %struct.max77693_dev* }
%struct.max77693_dev = type { i32 }

@MAX77843_MUIC_CONTROL1_SW_OPEN = common dso_local global i32 0, align 4
@MAX77843_MUIC_CONTROL1_NOBCCOMP_MASK = common dso_local global i32 0, align 4
@MAX77843_MUIC_REG_CONTROL1 = common dso_local global i32 0, align 4
@MAX77843_MUIC_CONTROL1_COM_SW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot switch MUIC port\0A\00", align 1
@MAX77843_MUIC_CONTROL2_CPEN_MASK = common dso_local global i32 0, align 4
@MAX77843_MUIC_CONTROL2_LOWPWR_MASK = common dso_local global i32 0, align 4
@MAX77843_MUIC_REG_CONTROL2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot update lowpower mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77843_muic_info*, i32, i32, i32)* @max77843_muic_set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77843_muic_set_path(%struct.max77843_muic_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77843_muic_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.max77693_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.max77843_muic_info* %0, %struct.max77843_muic_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %6, align 8
  %15 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %14, i32 0, i32 1
  %16 = load %struct.max77693_dev*, %struct.max77693_dev** %15, align 8
  store %struct.max77693_dev* %16, %struct.max77693_dev** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %12, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @MAX77843_MUIC_CONTROL1_SW_OPEN, align 4
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @MAX77843_MUIC_CONTROL1_NOBCCOMP_MASK, align 4
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load %struct.max77693_dev*, %struct.max77693_dev** %10, align 8
  %32 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX77843_MUIC_REG_CONTROL1, align 4
  %35 = load i32, i32* @MAX77843_MUIC_CONTROL1_COM_SW, align 4
  %36 = load i32, i32* @MAX77843_MUIC_CONTROL1_NOBCCOMP_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %6, align 8
  %44 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %84

48:                                               ; preds = %30
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @MAX77843_MUIC_CONTROL2_CPEN_MASK, align 4
  store i32 %52, i32* %13, align 4
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @MAX77843_MUIC_CONTROL2_LOWPWR_MASK, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = load %struct.max77693_dev*, %struct.max77693_dev** %10, align 8
  %57 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MAX77843_MUIC_REG_CONTROL2, align 4
  %60 = load i32, i32* @MAX77843_MUIC_CONTROL2_LOWPWR_MASK, align 4
  %61 = load i32, i32* @MAX77843_MUIC_CONTROL2_CPEN_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %6, align 8
  %69 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %5, align 4
  br label %84

73:                                               ; preds = %55
  %74 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %6, align 8
  %75 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %83 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78, i8* %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %73, %67, %42
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
