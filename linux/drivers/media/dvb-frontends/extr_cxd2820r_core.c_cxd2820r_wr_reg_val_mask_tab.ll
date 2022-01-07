; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_wr_reg_val_mask_tab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_wr_reg_val_mask_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2820r_priv = type { %struct.regmap**, %struct.i2c_client** }
%struct.regmap = type { i32 }
%struct.i2c_client = type { i32 }
%struct.reg_val_mask = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"tab_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2820r_wr_reg_val_mask_tab(%struct.cxd2820r_priv* %0, %struct.reg_val_mask* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2820r_priv*, align 8
  %6 = alloca %struct.reg_val_mask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.regmap*, align 8
  store %struct.cxd2820r_priv* %0, %struct.cxd2820r_priv** %5, align 8
  store %struct.reg_val_mask* %1, %struct.reg_val_mask** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %5, align 8
  %16 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %15, i32 0, i32 1
  %17 = load %struct.i2c_client**, %struct.i2c_client*** %16, align 8
  %18 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %17, i64 0
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %8, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %89, %3
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %92

28:                                               ; preds = %24
  %29 = load %struct.reg_val_mask*, %struct.reg_val_mask** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %29, i64 %31
  %33 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %5, align 8
  %40 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %39, i32 0, i32 0
  %41 = load %struct.regmap**, %struct.regmap*** %40, align 8
  %42 = getelementptr inbounds %struct.regmap*, %struct.regmap** %41, i64 1
  %43 = load %struct.regmap*, %struct.regmap** %42, align 8
  store %struct.regmap* %43, %struct.regmap** %14, align 8
  br label %50

44:                                               ; preds = %28
  %45 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %5, align 8
  %46 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %45, i32 0, i32 0
  %47 = load %struct.regmap**, %struct.regmap*** %46, align 8
  %48 = getelementptr inbounds %struct.regmap*, %struct.regmap** %47, i64 0
  %49 = load %struct.regmap*, %struct.regmap** %48, align 8
  store %struct.regmap* %49, %struct.regmap** %14, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.reg_val_mask*, %struct.reg_val_mask** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %51, i64 %53
  %55 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 0
  %58 = and i32 %57, 65535
  store i32 %58, i32* %11, align 4
  %59 = load %struct.reg_val_mask*, %struct.reg_val_mask** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %59, i64 %61
  %63 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load %struct.reg_val_mask*, %struct.reg_val_mask** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i64 %67
  %69 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 255
  br i1 %72, label %73, label %78

73:                                               ; preds = %50
  %74 = load %struct.regmap*, %struct.regmap** %14, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @regmap_write(%struct.regmap* %74, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %84

78:                                               ; preds = %50
  %79 = load %struct.regmap*, %struct.regmap** %14, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @regmap_write_bits(%struct.regmap* %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %93

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %24

92:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %99

93:                                               ; preds = %87
  %94 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @dev_dbg(i32* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %93, %92
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_write_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
