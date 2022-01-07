; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_set_operation_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_set_operation_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.gp2ap020a00f_data = type { i32, i32 }

@GP2AP020A00F_OPMODE_SHUTDOWN = common dso_local global i32 0, align 4
@GP2AP020A00F_OP_REG = common dso_local global i32 0, align 4
@opmode_regs_settings = common dso_local global %struct.TYPE_2__* null, align 8
@GP2AP020A00F_OP_MASK = common dso_local global i32 0, align 4
@GP2AP020A00F_OP3_MASK = common dso_local global i32 0, align 4
@GP2AP020A00F_OP3_SHUTDOWN = common dso_local global i32 0, align 4
@GP2AP020A00F_ALS_REG = common dso_local global i32 0, align 4
@GP2AP020A00F_PRST_MASK = common dso_local global i32 0, align 4
@GP2AP020A00F_PS_REG = common dso_local global i32 0, align 4
@GP2AP020A00F_INTTYPE_MASK = common dso_local global i32 0, align 4
@GP2AP020A00F_LED_REG = common dso_local global i32 0, align 4
@GP2AP020A00F_PIN_MASK = common dso_local global i32 0, align 4
@GP2AP020A00F_OP2_MASK = common dso_local global i32 0, align 4
@GP2AP020A00F_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gp2ap020a00f_data*, i32)* @gp2ap020a00f_set_operation_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gp2ap020a00f_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gp2ap020a00f_data* %0, %struct.gp2ap020a00f_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GP2AP020A00F_OPMODE_SHUTDOWN, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %99

11:                                               ; preds = %2
  %12 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %13 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GP2AP020A00F_OP_REG, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %126

21:                                               ; preds = %11
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opmode_regs_settings, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GP2AP020A00F_OP_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @GP2AP020A00F_OP_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %21
  %35 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %36 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GP2AP020A00F_OP_REG, align 4
  %39 = load i32, i32* @GP2AP020A00F_OP3_MASK, align 4
  %40 = load i32, i32* @GP2AP020A00F_OP3_SHUTDOWN, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %126

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %49 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GP2AP020A00F_ALS_REG, align 4
  %52 = load i32, i32* @GP2AP020A00F_PRST_MASK, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opmode_regs_settings, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %126

64:                                               ; preds = %47
  %65 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %66 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GP2AP020A00F_PS_REG, align 4
  %69 = load i32, i32* @GP2AP020A00F_INTTYPE_MASK, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opmode_regs_settings, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %69, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %126

81:                                               ; preds = %64
  %82 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %83 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @GP2AP020A00F_LED_REG, align 4
  %86 = load i32, i32* @GP2AP020A00F_PIN_MASK, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opmode_regs_settings, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 %86, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %81
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %126

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98, %2
  %100 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %101 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @GP2AP020A00F_OP_REG, align 4
  %104 = load i32, i32* @GP2AP020A00F_OP_MASK, align 4
  %105 = load i32, i32* @GP2AP020A00F_OP2_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @GP2AP020A00F_OP3_MASK, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @GP2AP020A00F_TYPE_MASK, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opmode_regs_settings, align 8
  %112 = load i32, i32* %5, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @regmap_update_bits(i32 %102, i32 %103, i32 %110, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %99
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %126

122:                                              ; preds = %99
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %125 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %120, %96, %79, %62, %44, %19
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
